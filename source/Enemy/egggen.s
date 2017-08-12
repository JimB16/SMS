
.globl __dt__14TEggGenManagerFv
__dt__14TEggGenManagerFv: # 0x800fe190
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800fe1d8
    lis     r3, __vvt__14TEggGenManager@ha
    addi    r0, r3, __vvt__14TEggGenManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x800fe1d8
    mr      r3, r30
    bl      __dl__FPv
branch_0x800fe1d8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__14TEggGenManagerFR20JSUMemoryInputStream
load__14TEggGenManagerFR20JSUMemoryInputStream: # 0x800fe1f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    li      r3, 0xa8
    stw     r29, 0x14(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800fe234
    lis     r3, unk_80383094@h
    addi    r4, r3, unk_80383094@l
    addi    r3, r29, 0x0
    bl      __ct__17TSpineEnemyParamsFPCc
branch_0x800fe234:
    stw     r29, 0x38(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl createModelData__14TEggGenManagerFv
createModelData__14TEggGenManagerFv: # 0x800fe260
    mflr    r0
    lis     r4, entry_2257@h
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_2257@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__14TEggGenManagerFPCc
__ct__14TEggGenManagerFPCc: # 0x800fe294
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, __vvt__14TEggGenManager@ha
    addi    r0, r3, __vvt__14TEggGenManager@l
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl control__13TEggGeneratorFv
control__13TEggGeneratorFv: # 0x800fe2d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    addi    r3, r31, 0x10
    lwz     r4, R13Off_m0x60d8(r13)
    addi    r4, r4, 0x10
    bl      PSVECSquareDistance
    lfs     f0, -0x5728(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800fe334
    lwz     r3, R13Off_m0x60d8(r13)
    lwz     r3, 0x3f0(r3)
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fe31c
    li      r0, 0x0
    b       branch_0x800fe320

branch_0x800fe31c:
    li      r0, 0x1
branch_0x800fe320:
    cmpwi   r0, 0x0
    bne-    branch_0x800fe334
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
branch_0x800fe334:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl init__13TEggGeneratorFP12TLiveManager
init__13TEggGeneratorFP12TLiveManager: # 0x800fe348
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    stw     r30, 0x18(sp)
    stw     r4, 0x70(r3)
    mr      r4, r31
    lwz     r3, 0x70(r3)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800fe390
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800fe390:
    stw     r30, 0x78(r31)
    lis     r3, unk_80383068@h
    addi    r4, r3, unk_80383068@l
    lwz     r3, 0x78(r31)
    li      r5, 0x0
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    lis     r4, unk_02000001@h
    addi    r3, r31, 0x0
    lfs     f1, -0x5724(r2)
    addi    r4, r4, unk_02000001@l
    li      r5, 0x1
    fmr     f2, f1
    lis     r6, 0x8000
    fmr     f3, f1
    fmr     f4, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
    lfs     f2, 0x30(r31)
    lfs     f1, -0x5720(r2)
    lfs     f0, -0x571c(r2)
    fsubs   f2, f2, f1
    b       branch_0x800fe3f8

branch_0x800fe3f4:
    fsubs   f2, f2, f0
branch_0x800fe3f8:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x800fe3f4
    lfs     f1, -0x571c(r2)
    lfs     f0, -0x5718(r2)
    b       branch_0x800fe414

branch_0x800fe410:
    fadds   f2, f2, f1
branch_0x800fe414:
    fcmpo   cr0, f2, f0
    blt+    branch_0x800fe410
    stfs    f2, 0x30(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __ct__13TEggGeneratorFPCc
__ct__13TEggGeneratorFPCc: # 0x800fe438
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, __vvt__13TEggGenerator@ha
    addi    r3, r3, __vvt__13TEggGenerator@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    addi    r3, r31, 0x0
    stw     r0, 0x20(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__13TEggGeneratorFv
__dt__13TEggGeneratorFv: # 0x800fe494
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800fe4e4
    lis     r3, __vvt__13TEggGenerator@ha
    addi    r3, r3, __vvt__13TEggGenerator@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x800fe4e4
    mr      r3, r30
    bl      __dl__FPv
branch_0x800fe4e4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl unk_800fe500
unk_800fe500: # 0x800fe500
    addi    r3, r3, -0x20
    b       __dt__13TEggGeneratorFv

