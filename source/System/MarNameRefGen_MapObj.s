
.globl getNameRef_MapObj__14TMarNameRefGenCFPCc
getNameRef_MapObj__14TMarNameRefGenCFPCc: # 0x802accd0
    mflr    r0
    lis     r3, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r3, 0x5de8
    stw     r30, 0x48(sp)
    addi    r30, r4, 0x0
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802acd28
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802acd20
    addi    r3, r30, 0x0
    addi    r4, r31, 0x104
    bl      __ct__11TMapObjBaseFPCc
branch_0x802acd20:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802acd28:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x118
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802acd60
    li      r3, 0x148
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802acd58
    addi    r3, r30, 0x0
    addi    r4, r31, 0x128
    bl      __ct__14TMapObjGeneralFPCc
branch_0x802acd58:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802acd60:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x220
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802acd98
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802acd90
    addi    r3, r30, 0x0
    addi    r4, r31, 0x13c
    bl      __ct__5TItemFPCc
branch_0x802acd90:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802acd98:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x218
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802acdd0
    li      r3, 0x1a8
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802acdc8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x148
    bl      __ct__11TResetFruitFPCc
branch_0x802acdc8:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802acdd0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x158
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ace08
    li      r3, 0x1a8
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ace00
    addi    r3, r30, 0x0
    addi    r4, r31, 0x148
    bl      __ct__11TResetFruitFPCc
branch_0x802ace00:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ace08:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x164
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ace40
    li      r3, 0x1c8
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ace38
    addi    r3, r30, 0x0
    addi    r4, r31, 0x170
    bl      __ct__12TRandomFruitFPCc
branch_0x802ace38:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ace40:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x184
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ace8c
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ace84
    addi    r3, r30, 0x0
    addi    r4, r31, 0x190
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x2850
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802ace84:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ace8c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1a0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802acec4
    li      r3, 0x80
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802acebc
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1b0
    bl      __ct__13TMapStaticObjFPCc
branch_0x802acebc:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802acec4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1c4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802acefc
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802acef4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1d8
    bl      __ct__17TMapObjSoundGroupFPCc
branch_0x802acef4:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802acefc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1e8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802acf34
    li      r3, 0xdc
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802acf2c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1f8
    bl      __ct__14TMapObjManagerFPCc
branch_0x802acf2c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802acf34:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x20c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802acf6c
    li      r3, 0x40
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802acf64
    addi    r3, r30, 0x0
    addi    r4, r31, 0x220
    bl      __ct__18TMapObjBaseManagerFPCc
branch_0x802acf64:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802acf6c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x238
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802acfa4
    li      r3, 0x7c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802acf9c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x244
    bl      __ct__12TItemManagerFPCc
branch_0x802acf9c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802acfa4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x25c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802acfdc
    li      r3, 0x40
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802acfd4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x268
    bl      __ct__12TPoolManagerFPCc
branch_0x802acfd4:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802acfdc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x27c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad014
    li      r3, 0x2c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad00c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x28c
    bl      __ct__15TMapWireManagerFPCc
branch_0x802ad00c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad014:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x29c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad04c
    li      r3, 0x538
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad044
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x210
    bl      __ct__18TMapObjFlagManagerFPCc
branch_0x802ad044:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad04c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2b0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad084
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad07c
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x210
    bl      __ct__18TMapObjPoleManagerFPCc
branch_0x802ad07c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad084:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2c4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad0bc
    li      r3, 0x9c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad0b4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2d0
    bl      __ct__11TMapObjWaveFPCc
branch_0x802ad0b4:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad0bc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2dc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad0f4
    li      r3, 0xc0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad0ec
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x208
    bl      __ct__11TMapObjFlagFPCc
branch_0x802ad0ec:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad0f4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2e8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad140
    li      r3, 0x120
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad138
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x204
    bl      __ct__12TMapObjPlaneFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x22bc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802ad138:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad140:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2f4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad18c
    li      r3, 0x120
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad184
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x1fc
    bl      __ct__12TMapObjPlaneFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x21c0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802ad184:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad18c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x300
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad1c4
    li      r3, 0x28
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad1bc
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x1f4
    bl      __ct__19TMapObjGrassManagerFPCc
branch_0x802ad1bc:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad1c4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x314
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad1f8
    li      r3, 0x7c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad1f0
    mr      r3, r30
    bl      __ct__17TMapObjGrassGroupFv
branch_0x802ad1f0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad1f8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x328
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad230
    li      r3, 0xdc
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad228
    addi    r3, r30, 0x0
    addi    r4, r31, 0x33c
    bl      __ct__23TMammaMirrorMapOperatorFPCc
branch_0x802ad228:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad230:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x34c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad284
    li      r3, 0x13c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad27c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x360
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x50f8
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    sth     r0, 0x138(r30)
branch_0x802ad27c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad284:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x374
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad2ec
    li      r3, 0x13c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad2e4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x390
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x50f8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r30)
    li      r0, 0x0
    subi    r3, r3, 0x525c
    sth     r0, 0x138(r30)
    addi    r0, r3, 0x24
    stw     r3, 0x0(r30)
    stw     r0, 0x20(r30)
branch_0x802ad2e4:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad2ec:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3b4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad340
    li      r3, 0x13c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad338
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3c4
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x53c0
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stw     r0, 0x138(r30)
branch_0x802ad338:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad340:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3d8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad38c
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad384
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3e4
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x5464
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802ad384:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad38c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3f8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad3d8
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad3d0
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x1ec
    bl      __ct__12THideObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x35e4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802ad3d0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad3d8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x404
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad410
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad408
    addi    r3, r30, 0x0
    addi    r4, r31, 0x418
    bl      __ct__17TMapObjWaterSprayFPCc
branch_0x802ad408:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad410:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x428
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad478
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad470
    addi    r3, r30, 0x0
    addi    r4, r31, 0x434
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x480c
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stw     r0, 0x14c(r30)
    lfs     f1, -0x1e4(rtoc)
    stfs    f1, 0x140(r30)
    fmr     f0, f1
    stfs    f1, 0x144(r30)
    stfs    f0, 0x148(r30)
branch_0x802ad470:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad478:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x448
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad4cc
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad4c4
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x1e0
    bl      __ct__12THideObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x4f94
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stw     r0, 0x150(r30)
branch_0x802ad4c4:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad4cc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x454
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad504
    li      r3, 0x1b0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad4fc
    addi    r3, r30, 0x0
    addi    r4, r31, 0x468
    bl      __ct__17TMapObjFloatOnSeaFPCc
branch_0x802ad4fc:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad504:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x47c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad53c
    li      r3, 0x14c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad534
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x1d8
    bl      __ct__11TWoodBarrelFPCc
branch_0x802ad534:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad53c:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x1d0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad574
    li      r3, 0x13c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad56c
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x1c8
    bl      __ct__5TDoorFPCc
branch_0x802ad56c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad574:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x1c0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad5c8
    li      r3, 0x13c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad5c0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x488
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x482c
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stb     r0, 0x138(r30)
branch_0x802ad5c0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad5c8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x494
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad634
    li      r3, 0x140
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad62c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4a4
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x482c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r30)
    li      r4, 0x0
    addi    r3, r3, 0x46c8
    stb     r4, 0x138(r30)
    addi    r0, r3, 0x24
    stw     r3, 0x0(r30)
    stw     r0, 0x20(r30)
    stw     r4, 0x13c(r30)
branch_0x802ad62c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad634:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4b4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad6ac
    li      r3, 0x144
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad6a4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4c0
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x482c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r30)
    li      r0, 0x0
    addi    r4, r3, 0x4564
    stb     r0, 0x138(r30)
    addi    r3, r4, 0x24
    li      r0, 0x1
    stw     r4, 0x0(r30)
    stw     r3, 0x20(r30)
    lfs     f0, -0x1b8(rtoc)
    stfs    f0, 0x13c(r30)
    stb     r0, 0x140(r30)
branch_0x802ad6a4:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad6ac:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4d0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad720
    li      r3, 0x148
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad718
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4dc
    bl      __ct__6TFenceFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x43f8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r30)
    addi    r3, r3, 0x428c
    li      r4, 0x0
    lfs     f0, -0x1b8(rtoc)
    addi    r0, r3, 0x24
    stfs    f0, 0x13c(r30)
    stfs    f0, 0x140(r30)
    stw     r4, 0x144(r30)
    stw     r3, 0x0(r30)
    stw     r0, 0x20(r30)
branch_0x802ad718:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad720:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4f4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad798
    li      r3, 0x148
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad790
    addi    r3, r30, 0x0
    addi    r4, r31, 0x500
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x482c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r30)
    li      r4, 0x0
    addi    r3, r3, 0x43f8
    stb     r4, 0x138(r30)
    addi    r0, r3, 0x24
    stw     r3, 0x0(r30)
    stw     r0, 0x20(r30)
    lfs     f0, -0x1b8(rtoc)
    stfs    f0, 0x13c(r30)
    stfs    f0, 0x140(r30)
    stw     r4, 0x144(r30)
branch_0x802ad790:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad798:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x518
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad7d0
    li      r3, 0x144
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad7c8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x524
    bl      __ct__10TRailFenceFPCc
branch_0x802ad7c8:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad7d0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x534
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad808
    li      r3, 0x198
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad800
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x1b4
    bl      __ct__11TMapObjBallFPCc
branch_0x802ad800:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad808:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x1ac
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad840
    li      r3, 0x15c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad838
    addi    r3, r30, 0x0
    addi    r4, r31, 0x540
    bl      __ct__8TManholeFPCc
branch_0x802ad838:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad840:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x1a4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad878
    li      r3, 0x14c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad870
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x19c
    bl      __ct__5TPoolFPCc
branch_0x802ad870:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad878:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x54c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad8b0
    li      r3, 0x174
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad8a8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x564
    bl      __ct__23TWaterHitPictureHideObjFPCc
branch_0x802ad8a8:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad8b0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x578
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad8e8
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad8e0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x588
    bl      __ct__13TMapObjSwitchFPCc
branch_0x802ad8e0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad8e8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x59c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad920
    li      r3, 0x144
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad918
    addi    r3, r30, 0x0
    addi    r4, r31, 0x5ac
    bl      __ct__14TRedCoinSwitchFPCc
branch_0x802ad918:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad920:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x5c0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad958
    li      r3, 0x50
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad950
    addi    r3, r30, 0x0
    addi    r4, r31, 0x5cc
    bl      __ct__12THideObjInfoFPCc
branch_0x802ad950:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad958:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x5e0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ad9c0
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ad9b8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x5ec
    bl      __ct__12THideObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x7918
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r30)
    addi    r4, r3, 0x77a0
    addi    r3, r4, 0x24
    stw     r4, 0x0(r30)
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stw     r0, 0x150(r30)
branch_0x802ad9b8:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ad9c0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x5f8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ada0c
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ada04
    addi    r3, r30, 0x0
    addi    r4, r31, 0x608
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x5a98
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802ada04:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ada0c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x61c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ada44
    li      r3, 0x168
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ada3c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x630
    bl      __ct__17TFruitBasketEventFPCc
branch_0x802ada3c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ada44:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x64c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ada7c
    li      r3, 0x140
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ada74
    addi    r3, r30, 0x0
    addi    r4, r31, 0x658
    bl      __ct__9TJumpBaseFPCc
branch_0x802ada74:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ada7c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x668
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802adab4
    li      r3, 0x144
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802adaac
    addi    r3, r30, 0x0
    addi    r4, r31, 0x678
    bl      __ct__13TLampTrapIronFPCc
branch_0x802adaac:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802adab4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x684
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802adaec
    li      r3, 0x144
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802adae4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x694
    bl      __ct__14TLampTrapSpikeFPCc
branch_0x802adae4:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802adaec:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802adb24
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802adb1c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x104
    bl      __ct__11TMapObjBaseFPCc
branch_0x802adb1c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802adb24:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x6a0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802adb70
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802adb68
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x194
    bl      __ct__12THideObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x6060
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802adb68:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802adb70:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x6ac
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802adba8
    li      r3, 0x170
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802adba0
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x18c
    bl      __ct__11TMapObjTreeFPCc
branch_0x802adba0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802adba8:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x188
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802adbe0
    li      r3, 0x170
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802adbd8
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x18c
    bl      __ct__11TMapObjTreeFPCc
branch_0x802adbd8:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802adbe0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x6b8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802adc18
    li      r3, 0x170
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802adc10
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x18c
    bl      __ct__11TMapObjTreeFPCc
branch_0x802adc10:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802adc18:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x6c4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802adc50
    li      r3, 0x170
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802adc48
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x18c
    bl      __ct__11TMapObjTreeFPCc
branch_0x802adc48:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802adc50:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x6d0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802adc88
    li      r3, 0x170
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802adc80
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x18c
    bl      __ct__11TMapObjTreeFPCc
branch_0x802adc80:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802adc88:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x6dc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802adcc0
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802adcb8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x104
    bl      __ct__11TMapObjBaseFPCc
branch_0x802adcb8:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802adcc0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x6e8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802adcf8
    li      r3, 0x2e4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802adcf0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x6f8
    bl      __ct__16TMapObjTreeScaleFPCc
branch_0x802adcf0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802adcf8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x708
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802add30
    li      r3, 0x180
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802add28
    addi    r3, r30, 0x0
    addi    r4, r31, 0x714
    bl      __ct__10TRideCloudFPCc
branch_0x802add28:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802add30:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x720
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802add68
    li      r3, 0x14c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802add60
    addi    r3, r30, 0x0
    addi    r4, r31, 0x730
    bl      __ct__14TAirportSwitchFPCc
branch_0x802add60:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802add68:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x740
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802adda0
    li      r3, 0x14c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802add98
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x19c
    bl      __ct__5TPoolFPCc
branch_0x802add98:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802adda0:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x180
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802addd8
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802addd0
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x178
    bl      __ct__8TWoodBoxFPCc
branch_0x802addd0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802addd8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x74c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ade10
    li      r3, 0x70
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ade08
    addi    r3, r30, 0x0
    addi    r4, r31, 0x730
    bl      __ct__17TAirportEventSinkFPCc
branch_0x802ade08:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ade10:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x760
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ade7c
    li      r3, 0x118
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ade74
    addi    r3, r30, 0x0
    addi    r4, r31, 0x76c
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803b
    subi    r3, r3, 0x48e4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r30)
    li      r4, 0x0
    addi    r3, r3, 0x3f9c
    stw     r4, 0x68(r30)
    addi    r0, r3, 0x24
    stw     r4, 0x6c(r30)
    stw     r3, 0x0(r30)
    stw     r0, 0x20(r30)
branch_0x802ade74:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ade7c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x77c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802adee0
    li      r3, 0x10
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aded8
    stw     r30, 0x14(sp)
    addi    r4, r31, 0x788
    lwz     r3, 0x14(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x14(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, 0x803d
    addi    r0, r3, 0x1210
    stw     r0, 0x0(r30)
branch_0x802aded8:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802adee0:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x170
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802adf18
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802adf10
    addi    r3, r30, 0x0
    addi    r4, r31, 0x104
    bl      __ct__11TMapObjBaseFPCc
branch_0x802adf10:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802adf18:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x794
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802adf50
    li      r3, 0x14c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802adf48
    addi    r3, r30, 0x0
    addi    r4, r31, 0x7a4
    bl      __ct__14TMonumentShineFPCc
branch_0x802adf48:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802adf50:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x7bc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802adf8c
    li      r3, 0x160
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802adf84
    addi    r3, r30, 0x0
    addi    r5, r31, 0x7cc
    li      r4, 0x1
    bl      __ct__11TBellDolpicFiPCc
branch_0x802adf84:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802adf8c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x7dc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802adfc8
    li      r3, 0x160
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802adfc0
    addi    r3, r30, 0x0
    addi    r5, r31, 0x7cc
    li      r4, 0x0
    bl      __ct__11TBellDolpicFiPCc
branch_0x802adfc0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802adfc8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x7f0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae014
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae00c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x800
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x3754
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802ae00c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae014:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x814
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae04c
    li      r3, 0x16c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae044
    addi    r3, r30, 0x0
    addi    r4, r31, 0x824
    bl      __ct__11TMapObjTurnFPCc
branch_0x802ae044:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae04c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x834
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae0a8
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae0a0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x840
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x331c
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stw     r0, 0x138(r30)
    stw     r0, 0x13c(r30)
    stb     r0, 0x14c(r30)
branch_0x802ae0a0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae0a8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x84c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae10c
    li      r3, 0x148
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae104
    addi    r3, r30, 0x0
    addi    r4, r31, 0x85c
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x31b8
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stw     r0, 0x144(r30)
    lfs     f0, -0x1b8(rtoc)
    stfs    f0, 0x140(r30)
    stfs    f0, 0x13c(r30)
    stfs    f0, 0x138(r30)
branch_0x802ae104:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae10c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x870
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae17c
    li      r3, 0x14c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae174
    addi    r3, r30, 0x0
    addi    r4, r31, 0x87c
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x1324
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    lfs     f2, -0x1b8(rtoc)
    stfs    f2, 0x138(r30)
    fmr     f1, f2
    fmr     f0, f2
    stfs    f2, 0x13c(r30)
    stfs    f1, 0x140(r30)
    stfs    f0, 0x144(r30)
    stw     r0, 0x148(r30)
branch_0x802ae174:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae17c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x890
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae1d4
    li      r3, 0x148
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae1cc
    addi    r3, r30, 0x0
    addi    r4, r31, 0x89c
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x1488
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stw     r0, 0x138(r30)
    stw     r0, 0x13c(r30)
branch_0x802ae1cc:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae1d4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x8ac
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae220
    li      r3, 0x1b0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae218
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x168
    bl      __ct__17TMapObjFloatOnSeaFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x3f28
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802ae218:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae220:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x8b8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae258
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae250
    addi    r3, r30, 0x0
    addi    r4, r31, 0x13c
    bl      __ct__5TItemFPCc
branch_0x802ae250:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae258:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x8c8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae2a4
    li      r3, 0x15c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae29c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x8d4
    bl      __ct__5TItemFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x1938
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802ae29c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae2a4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x8e4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae2f0
    li      r3, 0x15c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae2e8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x8d4
    bl      __ct__5TItemFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x1938
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802ae2e8:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae2f0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x8f4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae33c
    li      r3, 0x15c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae334
    addi    r3, r30, 0x0
    addi    r4, r31, 0x8d4
    bl      __ct__5TItemFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x1938
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802ae334:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae33c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x904
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae374
    li      r3, 0x158
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae36c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x914
    bl      __ct__15TRiccoWatermillFPCc
branch_0x802ae36c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae374:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x920
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae3ac
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae3a4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x104
    bl      __ct__11TMapObjBaseFPCc
branch_0x802ae3a4:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae3ac:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x92c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae400
    li      r3, 0x13c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae3f8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x938
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x1a9c
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stw     r0, 0x138(r30)
branch_0x802ae3f8:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae400:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x94c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae44c
    li      r3, 0x144
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae444
    addi    r3, r30, 0x0
    addi    r4, r31, 0x960
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x1c00
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802ae444:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae44c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x970
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae4a0
    li      r3, 0x14c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae498
    addi    r3, r30, 0x0
    addi    r4, r31, 0x97c
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x2fb4
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stw     r0, 0x148(r30)
branch_0x802ae498:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae4a0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x988
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae4d8
    li      r3, 0x164
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae4d0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x998
    bl      __ct__19TBiancoMiniWindmillFPCc
branch_0x802ae4d0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae4d8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x9ac
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae510
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae508
    addi    r3, r30, 0x0
    addi    r4, r31, 0x104
    bl      __ct__11TMapObjBaseFPCc
branch_0x802ae508:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae510:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x9bc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae564
    li      r3, 0x13c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae55c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x9d0
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x3118
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stw     r0, 0x138(r30)
branch_0x802ae55c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae564:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x160
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae59c
    li      r3, 0x13c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae594
    addi    r3, r30, 0x0
    addi    r4, r31, 0x9e4
    bl      __ct__11TBiancoBellFPCc
branch_0x802ae594:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae59c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x9f0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae5d4
    li      r3, 0x140
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae5cc
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa00
    bl      __ct__16TBiancoWatermillFPCc
branch_0x802ae5cc:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae5d4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa14
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae60c
    li      r3, 0x1a8
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae604
    addi    r3, r30, 0x0
    addi    r4, r31, 0x9e4
    bl      __ct__14TBellWatermillFPCc
branch_0x802ae604:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae60c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa24
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae644
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae63c
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa3c
    bl      __ct__24TBiancoWatermillVerticalFPCc
branch_0x802ae63c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae644:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa54
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae67c
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae674
    addi    r3, r30, 0x0
    addi    r4, r31, 0x104
    bl      __ct__11TMapObjBaseFPCc
branch_0x802ae674:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae67c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa64
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae6b4
    li      r3, 0x170
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae6ac
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa70
    bl      __ct__9TLeafBoatFPCc
branch_0x802ae6ac:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae6b4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa80
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae6ec
    li      r3, 0x180
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae6e4
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa90
    bl      __ct__15TLeafBoatRottenFPCc
branch_0x802ae6e4:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae6ec:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xaa4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae724
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae71c
    addi    r3, r30, 0x0
    addi    r4, r31, 0xab4
    bl      __ct__15TLampSeesawMainFPCc
branch_0x802ae71c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae724:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xac4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae75c
    li      r3, 0x144
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae754
    addi    r3, r30, 0x0
    addi    r4, r31, 0xad0
    bl      __ct__11TLampSeesawFPCc
branch_0x802ae754:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae75c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xae8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae794
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae78c
    addi    r3, r30, 0x0
    addi    r4, r31, 0xaf4
    bl      __ct__9TSandBirdFPCc
branch_0x802ae78c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae794:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb00
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae7e0
    li      r3, 0x148
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae7d8
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb10
    bl      __ct__9TSandBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x2a0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802ae7d8:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae7e0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb24
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae818
    li      r3, 0x158
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae810
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb34
    bl      __ct__13TSandBombBaseFPCc
branch_0x802ae810:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae818:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb48
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae888
    li      r3, 0x144
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae880
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb54
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x38
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r30)
    li      r4, 0x0
    subi    r3, r3, 0x404
    stw     r4, 0x138(r30)
    addi    r0, r3, 0x24
    stw     r3, 0x0(r30)
    stw     r0, 0x20(r30)
    stw     r4, 0x13c(r30)
    stb     r4, 0x140(r30)
branch_0x802ae880:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae888:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb64
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae8c0
    li      r3, 0x1b0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae8b8
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb70
    bl      __ct__11TLeanMirrorFPCc
branch_0x802ae8b8:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae8c0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb7c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae8f8
    li      r3, 0x1a4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae8f0
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb88
    bl      __ct__14TBigWatermelonFPCc
branch_0x802ae8f0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae8f8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb98
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae944
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae93c
    addi    r3, r30, 0x0
    addi    r4, r31, 0xbac
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0xeb0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802ae93c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae944:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xbb8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae97c
    li      r3, 0x80
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae974
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x158
    bl      __ct__13TShiningStoneFPCc
branch_0x802ae974:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae97c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xbc8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae9b4
    li      r3, 0x160
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae9ac
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x150
    bl      __ct__11TSandCastleFPCc
branch_0x802ae9ac:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae9b4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xbd4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ae9ec
    li      r3, 0x14c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ae9e4
    addi    r3, r30, 0x0
    addi    r4, r31, 0xbe8
    bl      __ct__17TMammaBlockRotateFPCc
branch_0x802ae9e4:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802ae9ec:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xbfc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aea24
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aea1c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x104
    bl      __ct__11TMapObjBaseFPCc
branch_0x802aea1c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aea24:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xc0c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aea70
    li      r3, 0x13c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aea68
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x150
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0xbdc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802aea68:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aea70:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xc18
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aeaa8
    li      r3, 0x14c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aeaa0
    addi    r3, r30, 0x0
    addi    r4, r31, 0xc28
    bl      __ct__15TGoalWatermelonFPCc
branch_0x802aeaa0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aeaa8:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x148
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aeaf4
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aeaec
    addi    r3, r30, 0x0
    addi    r4, r31, 0xc38
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x11c0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802aeaec:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aeaf4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xc48
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aeb2c
    li      r3, 0x1a8
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aeb24
    addi    r3, r30, 0x0
    addi    r4, r31, 0xc58
    bl      __ct__13TMerrygoroundFPCc
branch_0x802aeb24:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aeb2c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xc6c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aeb64
    li      r3, 0x144
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aeb5c
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x140
    bl      __ct__12TFerrisWheelFPCc
branch_0x802aeb5c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aeb64:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x138
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aeb9c
    li      r3, 0x15c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aeb94
    addi    r3, r30, 0x0
    addi    r4, r31, 0xc78
    bl      __ct__7TVikingFPCc
branch_0x802aeb94:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aeb9c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xc84
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aebe8
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aebe0
    addi    r3, r30, 0x0
    addi    r4, r31, 0xc90
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803e
    subi    r3, r3, 0x8a0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802aebe0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aebe8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xca0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aec34
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aec2c
    addi    r3, r30, 0x0
    addi    r4, r31, 0xcac
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x5cc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802aec2c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aec34:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xcbc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aec80
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aec78
    addi    r3, r30, 0x0
    addi    r4, r31, 0xcac
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x5cc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802aec78:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aec80:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xccc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aecdc
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aecd4
    addi    r3, r30, 0x0
    addi    r4, r31, 0xcdc
    bl      __ct__14TMapObjGeneralFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x730
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    lfs     f0, -0x1b8(rtoc)
    stfs    f0, 0x150(r30)
    stfs    f0, 0x14c(r30)
    stfs    f0, 0x148(r30)
branch_0x802aecd4:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aecdc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xcf0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aed14
    li      r3, 0x4a4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aed0c
    addi    r3, r30, 0x0
    addi    r4, r31, 0xcfc
    bl      __ct__9TShellCupFPCc
branch_0x802aed0c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aed14:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xd0c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aed60
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aed58
    addi    r3, r30, 0x0
    addi    r4, r31, 0xd18
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x3480
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802aed58:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aed60:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xd28
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aedac
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aeda4
    addi    r3, r30, 0x0
    addi    r4, r31, 0xd18
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x3480
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802aeda4:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aedac:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xd34
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aedf8
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aedf0
    addi    r3, r30, 0x0
    addi    r4, r31, 0xd44
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x468
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802aedf0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aedf8:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x130
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aee4c
    li      r3, 0x148
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aee44
    addi    r3, r30, 0x0
    addi    r4, r31, 0xd54
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x304
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stb     r0, 0x138(r30)
branch_0x802aee44:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aee4c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xd60
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aee84
    li      r3, 0x14c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aee7c
    addi    r3, r30, 0x0
    addi    r4, r31, 0xd70
    bl      __ct__13TPinnaCoasterFPCc
branch_0x802aee7c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aee84:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xd7c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aeebc
    li      r3, 0x178
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aeeb4
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x128
    bl      __ct__9TCogwheelFPCc
branch_0x802aeeb4:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aeebc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xd88
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aef1c
    li      r3, 0x144
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aef14
    addi    r3, r30, 0x0
    addi    r4, r31, 0xd9c
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x1b34
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    lfs     f1, -0x1b8(rtoc)
    stfs    f1, 0x138(r30)
    fmr     f0, f1
    stfs    f1, 0x13c(r30)
    stfs    f0, 0x140(r30)
branch_0x802aef14:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aef1c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xda8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aef54
    li      r3, 0x14c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aef4c
    addi    r3, r30, 0x0
    addi    r4, r31, 0xdb8
    bl      __ct__15TMapObjGrowTreeFPCc
branch_0x802aef4c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aef54:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xdc4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aef8c
    li      r3, 0x158
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aef84
    addi    r3, r30, 0x0
    addi    r4, r31, 0xdd0
    bl      __ct__9TWireBellFPCc
branch_0x802aef84:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aef8c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xde4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aefc4
    li      r3, 0x188
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aefbc
    addi    r3, r30, 0x0
    addi    r4, r31, 0xdf0
    bl      __ct__10TMuddyBoatFPCc
branch_0x802aefbc:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aefc4:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x120
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af018
    li      r3, 0x13c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af010
    addi    r3, r30, 0x0
    addi    r4, r31, 0xdfc
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x1708
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    lfs     f0, -0x1b8(rtoc)
    stfs    f0, 0x138(r30)
branch_0x802af010:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af018:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe08
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af050
    li      r3, 0x148
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af048
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe14
    bl      __ct__10TJointCoinFPCc
branch_0x802af048:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af050:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe28
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af09c
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af094
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe34
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x1440
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802af094:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af09c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe40
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af0f4
    li      r3, 0x158
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af0ec
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe4c
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x12dc
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stw     r0, 0x138(r30)
    stb     r0, 0x154(r30)
branch_0x802af0ec:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af0f4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe5c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af148
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af140
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe6c
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x1238
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stw     r0, 0x68(r30)
branch_0x802af140:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af148:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe80
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af194
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af18c
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe90
    bl      __ct__9TRouletteFPCc
    lis     r3, 0x803e
    subi    r3, r3, 0xa08
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802af18c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af194:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xea4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af1cc
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af1c4
    addi    r3, r30, 0x0
    addi    r4, r31, 0xeb0
    bl      __ct__9TRouletteFPCc
branch_0x802af1c4:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af1cc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xebc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af204
    li      r3, 0x198
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af1fc
    addi    r3, r30, 0x0
    addi    r4, r31, 0xec8
    bl      __ct__9TSlotDrumFPCc
branch_0x802af1fc:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af204:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xedc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af23c
    li      r3, 0x1ac
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af234
    addi    r3, r30, 0x0
    addi    r4, r31, 0xec8
    bl      __ct__13TItemSlotDrumFPCc
branch_0x802af234:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af23c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xeec
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af274
    li      r3, 0x1f0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af26c
    addi    r3, r30, 0x0
    addi    r4, r31, 0xef8
    bl      __ct__11TTelesaSlotFPCc
branch_0x802af26c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af274:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf04
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af2ac
    li      r3, 0x170
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af2a4
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf14
    bl      __ct__16TCasinoPanelGateFPCc
branch_0x802af2a4:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af2ac:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf28
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af2e4
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af2dc
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf34
    bl      __ct__14TWarpAreaActorFPCc
branch_0x802af2dc:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af2e4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf44
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af31c
    li      r3, 0x148
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af314
    addi    r3, r30, 0x0
    addi    r4, r31, 0x128
    bl      __ct__14TMapObjGeneralFPCc
branch_0x802af314:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af31c:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x118
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af354
    li      r3, 0x170
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af34c
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf50
    bl      __ct__7TClosetFPCc
branch_0x802af34c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af354:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x110
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af38c
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af384
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf60
    bl      __ct__8TDonchouFPCc
branch_0x802af384:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af38c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf70
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af3c4
    li      r3, 0x148
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af3bc
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf7c
    bl      __ct__11TSakuCasinoFPCc
branch_0x802af3bc:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af3c4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf88
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af418
    li      r3, 0x13c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af410
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf98
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x2804
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stw     r0, 0x138(r30)
branch_0x802af410:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af418:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xfac
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af46c
    li      r3, 0x13c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af464
    addi    r3, r30, 0x0
    addi    r4, r31, 0xfc0
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x2968
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stw     r0, 0x138(r30)
branch_0x802af464:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af46c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xfd0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af4b8
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af4b0
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x108
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x2b70
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802af4b0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af4b8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xfe0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af4f0
    li      r3, 0x174
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af4e8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x564
    bl      __ct__23TWaterHitPictureHideObjFPCc
branch_0x802af4e8:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af4f0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xff0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af544
    li      r3, 0x178
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af53c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1000
    bl      __ct__23TWaterHitPictureHideObjFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x2e50
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stb     r0, 0x174(r30)
branch_0x802af53c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af544:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x100c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af57c
    li      r3, 0x148
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af574
    addi    r3, r30, 0x0
    addi    r4, r31, 0x128
    bl      __ct__14TMapObjGeneralFPCc
branch_0x802af574:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af57c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1018
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af5c8
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af5c0
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x108
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x2cd4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802af5c0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af5c8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1028
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af64c
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af644
    stw     r30, 0x10(sp)
    addi    r4, r31, 0x1034
    lwz     r3, 0x10(sp)
    bl      __ct__11TMapObjBaseFPCc
    lwz     r4, 0x10(sp)
    lis     r3, 0x803d
    subi    r3, r3, 0x480c
    stw     r3, 0x0(r4)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r4)
    addi    r3, r4, 0x140
    stw     r0, 0x14c(r4)
    lfs     f1, -0x1e4(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_802b0404
    lis     r3, 0x803d
    subi    r3, r3, 0x4970
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802af644:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af64c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1044
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af698
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af690
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x100
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x5b40
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802af690:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af698:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1050
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af6e4
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af6dc
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1060
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x59dc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802af6dc:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af6e4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1070
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af71c
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af714
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xf8
    bl      __ct__14THangingBridgeFPCc
branch_0x802af714:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af71c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1080
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af754
    li      r3, 0x18c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af74c
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xf8
    bl      __ct__11TSwingBoardFPCc
branch_0x802af74c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af754:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x108c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af7a0
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af798
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1098
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x5588
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802af798:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af7a0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10a8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af7d8
    li      r3, 0x16c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af7d0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10b8
    bl      __ct__13TFluffManagerFPCc
branch_0x802af7d0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af7d8:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xf0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af810
    li      r3, 0x2a4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af808
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10c4
    bl      __ct__8TBathtubFPCc
branch_0x802af808:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af810:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10d0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af848
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af840
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10e0
    bl      __ct__14TFileLoadBlockFPCc
branch_0x802af840:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af848:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10fc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af880
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af878
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10e0
    bl      __ct__14TFileLoadBlockFPCc
branch_0x802af878:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af880:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x110c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af8b8
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af8b0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10e0
    bl      __ct__14TFileLoadBlockFPCc
branch_0x802af8b0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af8b8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x111c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af8f0
    li      r3, 0x15c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af8e8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1128
    bl      __ct__11TNormalLiftFPCc
branch_0x802af8e8:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af8f0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1138
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af928
    li      r3, 0x1a4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af920
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xe8
    bl      __ct__10TRailBlockFPCc
branch_0x802af920:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af928:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1144
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af960
    li      r3, 0x15c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af958
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1128
    bl      __ct__11TNormalLiftFPCc
branch_0x802af958:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af960:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xe0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af998
    li      r3, 0x140
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af990
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xd8
    bl      __ct__10TRollBlockFPCc
branch_0x802af990:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af998:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1150
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802af9d0
    li      r3, 0x15c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802af9c8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1128
    bl      __ct__11TNormalLiftFPCc
branch_0x802af9c8:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802af9d0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x115c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802afa08
    li      r3, 0x140
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afa00
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xd8
    bl      __ct__10TRollBlockFPCc
branch_0x802afa00:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802afa08:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1168
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802afa40
    li      r3, 0x140
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afa38
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xd8
    bl      __ct__10TRollBlockFPCc
branch_0x802afa38:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802afa40:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1174
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802afa78
    li      r3, 0x1a4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afa70
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xe8
    bl      __ct__10TRailBlockFPCc
branch_0x802afa70:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802afa78:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1180
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802afab0
    li      r3, 0x1a4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afaa8
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xe8
    bl      __ct__10TRailBlockFPCc
branch_0x802afaa8:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802afab0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x118c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802afae8
    li      r3, 0x1a4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afae0
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xe8
    bl      __ct__10TRailBlockFPCc
branch_0x802afae0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802afae8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1198
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802afb20
    li      r3, 0x1a4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afb18
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xe8
    bl      __ct__10TRailBlockFPCc
branch_0x802afb18:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802afb20:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x11a4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802afb58
    li      r3, 0x140
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afb50
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xd8
    bl      __ct__10TRollBlockFPCc
branch_0x802afb50:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802afb58:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x11b0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802afb90
    li      r3, 0x140
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afb88
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xd8
    bl      __ct__10TRollBlockFPCc
branch_0x802afb88:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802afb90:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x11bc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802afbc8
    li      r3, 0x140
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afbc0
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xd8
    bl      __ct__10TRollBlockFPCc
branch_0x802afbc0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802afbc8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x11c8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802afc00
    li      r3, 0x140
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afbf8
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xd8
    bl      __ct__10TRollBlockFPCc
branch_0x802afbf8:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802afc00:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xd0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802afc38
    li      r3, 0x15c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afc30
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1128
    bl      __ct__11TNormalLiftFPCc
branch_0x802afc30:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802afc38:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x11d4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802afc70
    li      r3, 0x15c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afc68
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1128
    bl      __ct__11TNormalLiftFPCc
branch_0x802afc68:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802afc70:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x11e0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802afca8
    li      r3, 0x15c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afca0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1128
    bl      __ct__11TNormalLiftFPCc
branch_0x802afca0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802afca8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x11ec
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802afce0
    li      r3, 0x16c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afcd8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x11f8
    bl      __ct__10TWoodBlockFPCc
branch_0x802afcd8:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802afce0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1208
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802afd18
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afd10
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xc8
    bl      __ct__11TMapObjNailFPCc
branch_0x802afd10:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802afd18:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1214
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802afd50
    li      r3, 0x16c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afd48
    addi    r3, r30, 0x0
    addi    r4, r31, 0x11f8
    bl      __ct__10TWoodBlockFPCc
branch_0x802afd48:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802afd50:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1220
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802afd88
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afd80
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1238
    bl      __ct__23TMapObjRevivalPollutionFPCc
branch_0x802afd80:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802afd88:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1244
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802afdc0
    li      r3, 0x13c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afdb8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1254
    bl      __ct__13TPolluterBaseFPCc
branch_0x802afdb8:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802afdc0:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xc0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802afdf8
    li      r3, 0x158
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afdf0
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xb8
    bl      __ct__5TCoinFPCc
branch_0x802afdf0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802afdf8:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xb0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802afe30
    li      r3, 0x164
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afe28
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1264
    bl      __ct__8TCoinRedFPCc
branch_0x802afe28:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802afe30:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1270
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802afe68
    li      r3, 0x158
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afe60
    addi    r3, r30, 0x0
    addi    r4, r31, 0x127c
    bl      __ct__9TCoinBlueFPCc
branch_0x802afe60:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802afe68:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xa8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802afeb4
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afeac
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1288
    bl      __ct__12THideObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x7bfc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802afeac:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802afeb4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1298
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aff00
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802afef8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x12a8
    bl      __ct__12THideObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x7a8c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802afef8:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aff00:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x12bc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aff4c
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aff44
    addi    r3, r30, 0x0
    addi    r4, r31, 0x12a8
    bl      __ct__12THideObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x7918
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802aff44:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aff4c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x12cc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aff98
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aff90
    addi    r3, r30, 0x0
    addi    r4, r31, 0x12dc
    bl      __ct__12THideObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x74b8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802aff90:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802aff98:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x12f4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802affd0
    li      r3, 0x194
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802affc8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1308
    bl      __ct__19THideObjPictureTwinFPCc
branch_0x802affc8:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802affd0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1318
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0024
    li      r3, 0x15c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b001c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1324
    bl      __ct__5TCoinFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x6084
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stw     r0, 0x158(r30)
branch_0x802b001c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802b0024:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0xa0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b005c
    li      r3, 0x1b8
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0054
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1338
    bl      __ct__6TShineFPCc
branch_0x802b0054:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802b005c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1344
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0094
    li      r3, 0x168
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b008c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1350
    bl      __ct__10TNozzleBoxFPCc
branch_0x802b008c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802b0094:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1360
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b00e0
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b00d8
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x98
    bl      __ct__5TItemFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x6bd4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802b00d8:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802b00e0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x136c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b011c
    li      r3, 0x140
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0114
    addi    r3, r30, 0x0
    addi    r5, r31, 0x1378
    li      r4, 0x0
    bl      __ct__12TMushroom1upFiPCc
branch_0x802b0114:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802b011c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1388
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0158
    li      r3, 0x140
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0150
    addi    r3, r30, 0x0
    addi    r5, r31, 0x1378
    li      r4, 0x1
    bl      __ct__12TMushroom1upFiPCc
branch_0x802b0150:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802b0158:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1398
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0194
    li      r3, 0x140
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b018c
    addi    r3, r30, 0x0
    addi    r5, r31, 0x1378
    li      r4, 0x2
    bl      __ct__12TMushroom1upFiPCc
branch_0x802b018c:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802b0194:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x13a8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b01cc
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b01c4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x13b4
    bl      __ct__9TEggYoshiFPCc
branch_0x802b01c4:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802b01cc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x13c4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0204
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b01fc
    addi    r3, r30, 0x0
    addi    r4, r31, 0x104
    bl      __ct__11TMapObjBaseFPCc
branch_0x802b01fc:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802b0204:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x13d0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b026c
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0264
    addi    r3, r30, 0x0
    addi    r4, r31, 0x13e4
    bl      __ct__12THideObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x7050
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r30)
    subi    r4, r3, 0x4ae0
    addi    r3, r4, 0x24
    stw     r4, 0x0(r30)
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stb     r0, 0x150(r30)
branch_0x802b0264:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802b026c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1404
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b02b8
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b02b0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1410
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x4538
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802b02b0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802b02b8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1420
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0304
    li      r3, 0x148
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b02fc
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1430
    bl      __ct__14TMapObjGeneralFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x4108
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802b02fc:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802b0304:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1440
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0350
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0348
    addi    r3, r30, 0x0
    addi    r4, r31, 0x144c
    bl      __ct__12THideObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x46a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802b0348:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802b0350:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x145c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b039c
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0394
    addi    r3, r30, 0x0
    addi    r4, r31, 0x146c
    bl      __ct__12THideObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x7050
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802b0394:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802b039c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1480
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b03e8
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b03e0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x148c
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x426c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802b03e0:
    mr      r3, r30
    b       branch_0x802b03ec

branch_0x802b03e8:
    li      r3, 0x0
branch_0x802b03ec:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_802b0404
set_f___Q29JGeometry8TVec3_f_Ffff_802b0404: # 0x802b0404
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl __ct__11TTelesaSlotFPCc
__ct__11TTelesaSlotFPCc: # 0x802b0414
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__9TSlotDrumFPCc
    lis     r3, 0x803b
    lwz     r30, 0x8(sp)
    addi    r3, r3, 0x7c30
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, 0x8002
    stw     r0, 0x20(r30)
    li      r31, 0x0
    addi    r4, r3, 0x10dc
    stb     r31, 0x19b(r30)
    li      r3, 0x1
    li      r0, 0x2
    stb     r3, 0x19c(r30)
    addi    r3, r30, 0x1ac
    li      r5, 0x0
    stw     r0, 0x1a4(r30)
    li      r6, 0xc
    li      r7, 0x4
    bl      __construct_array
    stb     r31, 0x1e0(r30)
    mr      r3, r30
    stb     r31, 0x1a8(r30)
    stb     r31, 0x1a9(r30)
    stb     r31, 0x1aa(r30)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__6TFenceFPCc
__ct__6TFenceFPCc: # 0x802b04ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x482c
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stb     r0, 0x138(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__15TCasinoRouletteFv
__dt__15TCasinoRouletteFv: # 0x802b04f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802b0578
    lis     r3, 0x803e
    subi    r3, r3, 0xa08
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x802b0568
    lis     r3, 0x803d
    subi    r3, r3, 0x1e10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x802b0568
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x802b0568:
    extsh.  r0, r31
    ble-    branch_0x802b0578
    mr      r3, r30
    bl      __dl__FPv
branch_0x802b0578:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TSirenaGateFv
__dt__11TSirenaGateFv: # 0x802b0594
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802b05fc
    lis     r3, 0x803e
    subi    r3, r3, 0x8a0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x802b05ec
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x802b05ec:
    extsh.  r0, r31
    ble-    branch_0x802b05fc
    mr      r3, r30
    bl      __dl__FPv
branch_0x802b05fc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl _32___dt__11TSirenaGateFv
_32___dt__11TSirenaGateFv: # 0x802b0618
    subi    r3, r3, 0x20
    b       __dt__11TSirenaGateFv


.globl _32___dt__15TCasinoRouletteFv
_32___dt__15TCasinoRouletteFv: # 0x802b0620
    subi    r3, r3, 0x20
    b       __dt__15TCasinoRouletteFv

