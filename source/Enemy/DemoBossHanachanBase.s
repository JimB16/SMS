
.globl __dt__17TDemoBossHanachanFv
__dt__17TDemoBossHanachanFv: # 0x800eaa04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800eaa54
    lis     r3, 0x803c
    subi    r3, r3, 0x5668
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x800eaa54
    mr      r3, r30
    bl      __dl__FPv
branch_0x800eaa54:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl receiveMessage__17TDemoBossHanachanFP9THitActorUl
receiveMessage__17TDemoBossHanachanFP9THitActorUl: # 0x800eaa70
    li      r3, 0x0
    blr


.globl initBase__17TDemoBossHanachanFP12TLiveManagerUl
initBase__17TDemoBossHanachanFP12TLiveManagerUl: # 0x800eaa78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    addi    r4, r29, 0x0
    stw     r28, 0x18(sp)
    stw     r30, 0x70(r3)
    addi    r3, r30, 0x0
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x800eaacc
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    bl      __ct__13TMActorKeeperFP12TLiveManager
branch_0x800eaacc:
    stw     r28, 0x78(r29)
    addi    r5, r31, 0x0
    li      r4, 0x0
    lwz     r3, 0x78(r29)
    bl      createMActorFromNthData__13TMActorKeeperFiUl
    stw     r3, 0x74(r29)
    addi    r4, r29, 0xc4
    lfs     f0, -0x5aec(rtoc)
    stfs    f0, 0x148(r29)
    lfs     f0, -0x5ae8(rtoc)
    stfs    f0, 0xbc(r29)
    lfs     f0, 0xbc(r29)
    stfs    f0, 0x14c(r29)
    lfs     f0, -0x5ae4(rtoc)
    stfs    f0, 0xc0(r29)
    lfs     f0, -0x5af0(rtoc)
    stfs    f0, 0x140(r29)
    lfs     f0, -0x5ae0(rtoc)
    stfs    f0, 0xb8(r29)
    lwz     r0, 0xf0(r29)
    ori     r0, r0, 0x18
    stw     r0, 0xf0(r29)
    lfs     f2, 0x148(r29)
    lfs     f1, 0xc0(r29)
    lfs     f0, 0x14(r29)
    fmuls   f2, f2, f1
    lwz     r3, -0x6328(r13)
    lfs     f1, 0x10(r29)
    lfs     f3, 0x18(r29)
    fadds   f2, f0, f2
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r29)
    li      r4, 0x1
    lwz     r3, 0x74(r29)
    bl      setLightType__6MActorFi
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl clipEnemies__24TDemoBossHanachanManagerFPQ26JDrama9TGraphics
clipEnemies__24TDemoBossHanachanManagerFPQ26JDrama9TGraphics: # 0x800eab78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r6, 0x54(r3)
    lfs     f2, 0x2c(r6)
    lfs     f1, 0x18(r6)
    bl      clipActorsAux__12TLiveManagerFPQ26JDrama9TGraphicsff
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__27TDemoBossHanachanSaveParamsFPCc
__ct__27TDemoBossHanachanSaveParamsFPCc: # 0x800eaba4
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    mr      r28, r3
    stw     r4, 0x0(r3)
    lis     r3, 0x8038
    addi    r29, r3, 0x1850
    stw     r0, 0x4(r28)
    addi    r3, r29, 0xe0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x8
    addi    r6, r29, 0xe0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r30, r3, 0x42c4
    stw     r30, 0x8(r28)
    lis     r3, 0x803b
    subi    r31, r3, 0x42d0
    lfs     f0, -0x5adc(rtoc)
    addi    r3, r29, 0xf0
    stfs    f0, 0x18(r28)
    stw     r31, 0x8(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x1c
    addi    r6, r29, 0xf0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r30, 0x1c(r28)
    mr      r3, r28
    lfs     f0, -0x5ad8(rtoc)
    stfs    f0, 0x2c(r28)
    stw     r31, 0x1c(r28)
    lwz     r4, 0x0(r28)
    bl      load__7TParamsFPCc
    lwz     r0, 0x24(sp)
    mr      r3, r28
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl __dt__24TDemoBossHanachanManagerFv
__dt__24TDemoBossHanachanManagerFv: # 0x800eac70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800eacb8
    lis     r3, 0x803c
    subi    r0, r3, 0x5554
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x800eacb8
    mr      r3, r30
    bl      __dl__FPv
branch_0x800eacb8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl _32___dt__17TDemoBossHanachanFv
_32___dt__17TDemoBossHanachanFv: # 0x800eacd4
    subi    r3, r3, 0x20
    b       __dt__17TDemoBossHanachanFv

