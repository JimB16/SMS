
.globl __dt__18TSunflowerSManagerFv
__dt__18TSunflowerSManagerFv: # 0x80208b90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80208be8
    lis     r3, 0x803e
    subi    r0, r3, 0x7910
    stw     r0, 0x0(r30)
    beq-    branch_0x80208bd8
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x80208bd8:
    extsh.  r0, r31
    ble-    branch_0x80208be8
    mr      r3, r30
    bl      __dl__FPv
branch_0x80208be8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl createModelData__18TSunflowerSManagerFv
createModelData__18TSunflowerSManagerFv: # 0x80208c04
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x500c
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createModelData__18TSunflowerLManagerFv
createModelData__18TSunflowerLManagerFv: # 0x80208c38
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x4fe4
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createModelData__18TRaccoonDogManagerFv
createModelData__18TRaccoonDogManagerFv: # 0x80208c6c
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x4fbc
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createModelData__13TPeachManagerFv
createModelData__13TPeachManagerFv: # 0x80208ca0
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x4f98
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createModelData__15TKinojiiManagerFv
createModelData__15TKinojiiManagerFv: # 0x80208cd4
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x4f70
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createModelData__15TKinopioManagerFv
createModelData__15TKinopioManagerFv: # 0x80208d08
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x4f48
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      getModelDataKeeper__11TObjManagerFv
    li      r4, 0x0
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r31, 0x0(r3)
    lwz     r3, -0x77ac(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr.     r5, r3
    beq-    branch_0x80208d64
    lwz     r4, -0x77b0(r13)
    mr      r3, r31
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
branch_0x80208d64:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl createModelData__17TMareWBaseManagerFv
createModelData__17TMareWBaseManagerFv: # 0x80208d78
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    lis     r5, 0x8039
    addi    r4, r4, 0x4f1c
    stwu    sp, -0x20(sp)
    addi    r5, r5, 0x4bf8
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    bl      createModelDataArrayBase__11TObjManagerFPC19TModelDataLoadEntryPCc
    mr      r3, r31
    bl      getModelDataKeeper__11TObjManagerFv
    li      r4, 0x0
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r31, 0x0(r3)
    lwz     r3, -0x77ac(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr.     r5, r3
    beq-    branch_0x80208dd0
    lwz     r4, -0x77b0(r13)
    mr      r3, r31
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
branch_0x80208dd0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl createModelData__17TMareMBaseManagerFv
createModelData__17TMareMBaseManagerFv: # 0x80208de4
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    lis     r5, 0x8039
    addi    r4, r4, 0x4ef8
    stwu    sp, -0x20(sp)
    addi    r5, r5, 0x4be8
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    bl      createModelDataArrayBase__11TObjManagerFPC19TModelDataLoadEntryPCc
    mr      r3, r31
    bl      getModelDataKeeper__11TObjManagerFv
    li      r4, 0x0
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r31, 0x0(r3)
    lwz     r3, -0x77ac(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr.     r5, r3
    beq-    branch_0x80208e3c
    lwz     r4, -0x77b0(r13)
    mr      r3, r31
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
branch_0x80208e3c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl createModelData__15TMonteWCManagerFv
createModelData__15TMonteWCManagerFv: # 0x80208e50
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    lis     r5, 0x8039
    addi    r4, r4, 0x4ed4
    stwu    sp, -0x20(sp)
    addi    r5, r5, 0x5024
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    bl      createModelDataArrayBase__11TObjManagerFPC19TModelDataLoadEntryPCc
    mr      r3, r31
    bl      getModelDataKeeper__11TObjManagerFv
    li      r4, 0x0
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r31, 0x0(r3)
    lwz     r3, -0x779c(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, -0x77a4(r13)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x0
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl createModelData__15TMonteWBManagerFv
createModelData__15TMonteWBManagerFv: # 0x80208eb8
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x4ebc
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      getModelDataKeeper__11TObjManagerFv
    li      r4, 0x0
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r31, 0x0(r3)
    lwz     r3, -0x779c(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, -0x77a4(r13)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x0
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl createModelData__15TMonteWAManagerFv
createModelData__15TMonteWAManagerFv: # 0x80208f24
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x4e94
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    bl      getModelDataKeeper__11TObjManagerFv
    li      r4, 0x0
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r31, 0x0(r3)
    lwz     r3, -0x779c(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, -0x77a4(r13)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x0
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    mr      r3, r30
    bl      getModelDataKeeper__11TObjManagerFv
    li      r4, 0x0
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r31, 0x0(r3)
    lwz     r3, -0x77ac(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr.     r5, r3
    beq-    branch_0x80208fb0
    lwz     r4, -0x77b0(r13)
    mr      r3, r31
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
branch_0x80208fb0:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl createModelData__14TMonteWManagerFv
createModelData__14TMonteWManagerFv: # 0x80208fc8
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x4e6c
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    bl      getModelDataKeeper__11TObjManagerFv
    li      r4, 0x0
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r31, 0x0(r3)
    lwz     r3, -0x779c(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, -0x77a4(r13)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x0
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    mr      r3, r30
    bl      getModelDataKeeper__11TObjManagerFv
    li      r4, 0x0
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r31, 0x0(r3)
    lwz     r3, -0x77ac(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr.     r5, r3
    beq-    branch_0x80209054
    lwz     r4, -0x77b0(r13)
    mr      r3, r31
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
branch_0x80209054:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl createModelData__15TMonteMHManagerFv
createModelData__15TMonteMHManagerFv: # 0x8020906c
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    lis     r5, 0x8039
    addi    r4, r4, 0x4e44
    stwu    sp, -0x20(sp)
    addi    r5, r5, 0x5034
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    bl      createModelDataArrayBase__11TObjManagerFPC19TModelDataLoadEntryPCc
    mr      r3, r31
    bl      getModelDataKeeper__11TObjManagerFv
    li      r4, 0x0
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r31, 0x0(r3)
    lwz     r3, -0x77a0(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, -0x77a8(r13)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x0
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl createModelData__15TMonteMGManagerFv
createModelData__15TMonteMGManagerFv: # 0x802090d4
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    lis     r5, 0x8039
    addi    r4, r4, 0x4e2c
    stwu    sp, -0x20(sp)
    addi    r5, r5, 0x5044
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    bl      createModelDataArrayBase__11TObjManagerFPC19TModelDataLoadEntryPCc
    mr      r3, r31
    bl      getModelDataKeeper__11TObjManagerFv
    li      r4, 0x0
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r31, 0x0(r3)
    lwz     r3, -0x77a0(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, -0x77a8(r13)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x0
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl createModelData__15TMonteMFManagerFv
createModelData__15TMonteMFManagerFv: # 0x8020913c
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    lis     r5, 0x8039
    addi    r4, r4, 0x4e14
    stwu    sp, -0x20(sp)
    addi    r5, r5, 0x5054
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    bl      createModelDataArrayBase__11TObjManagerFPC19TModelDataLoadEntryPCc
    mr      r3, r31
    bl      getModelDataKeeper__11TObjManagerFv
    li      r4, 0x0
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r31, 0x0(r3)
    lwz     r3, -0x77a0(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, -0x77a8(r13)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x0
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl createModelData__15TMonteMEManagerFv
createModelData__15TMonteMEManagerFv: # 0x802091a4
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x4dfc
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createModelData__15TMonteMDManagerFv
createModelData__15TMonteMDManagerFv: # 0x802091d8
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x4dd4
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      getModelDataKeeper__11TObjManagerFv
    li      r4, 0x0
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r31, 0x0(r3)
    lwz     r3, -0x77a0(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, -0x77a8(r13)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x0
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl createModelData__15TMonteMCManagerFv
createModelData__15TMonteMCManagerFv: # 0x80209244
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x4dac
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    bl      getModelDataKeeper__11TObjManagerFv
    li      r4, 0x0
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r31, 0x0(r3)
    lwz     r3, -0x77a0(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, -0x77a8(r13)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x0
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    mr      r3, r30
    bl      getModelDataKeeper__11TObjManagerFv
    li      r4, 0x0
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r31, 0x0(r3)
    lwz     r3, -0x77ac(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr.     r5, r3
    beq-    branch_0x802092d0
    lwz     r4, -0x77b0(r13)
    mr      r3, r31
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
branch_0x802092d0:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl createModelData__15TMonteMBManagerFv
createModelData__15TMonteMBManagerFv: # 0x802092e8
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x4d84
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      getModelDataKeeper__11TObjManagerFv
    li      r4, 0x0
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r31, 0x0(r3)
    lwz     r3, -0x77a0(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, -0x77a8(r13)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x0
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl createModelData__15TMonteMAManagerFv
createModelData__15TMonteMAManagerFv: # 0x80209354
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x4d5c
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    bl      getModelDataKeeper__11TObjManagerFv
    li      r4, 0x0
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r31, 0x0(r3)
    lwz     r3, -0x77a0(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, -0x77a8(r13)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x0
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    mr      r3, r30
    bl      getModelDataKeeper__11TObjManagerFv
    li      r4, 0x0
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r31, 0x0(r3)
    lwz     r3, -0x77ac(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr.     r5, r3
    beq-    branch_0x802093e0
    lwz     r4, -0x77b0(r13)
    mr      r3, r31
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
branch_0x802093e0:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl createModelData__14TMonteMManagerFv
createModelData__14TMonteMManagerFv: # 0x802093f8
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x4d34
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    bl      getModelDataKeeper__11TObjManagerFv
    li      r4, 0x0
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r31, 0x0(r3)
    lwz     r3, -0x77a0(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, -0x77a8(r13)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x0
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    mr      r3, r30
    bl      getModelDataKeeper__11TObjManagerFv
    li      r4, 0x0
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r31, 0x0(r3)
    lwz     r3, -0x77ac(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr.     r5, r3
    beq-    branch_0x80209484
    lwz     r4, -0x77b0(r13)
    mr      r3, r31
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
branch_0x80209484:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl load__18TSunflowerLManagerFR20JSUMemoryInputStream
load__18TSunflowerLManagerFR20JSUMemoryInputStream: # 0x8020949c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lfs     f0, -0x1ce8(rtoc)
    stfs    f0, 0x3c(r31)
    lfs     f0, -0x1ce4(rtoc)
    stfs    f0, 0x3c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__18TRaccoonDogManagerFR20JSUMemoryInputStream
load__18TRaccoonDogManagerFR20JSUMemoryInputStream: # 0x802094d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lfs     f0, -0x1ce8(rtoc)
    li      r3, 0x14
    stfs    f0, 0x3c(r31)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8020951c
    lwz     r4, 0x1c(r31)
    mr      r3, r30
    lwz     r4, 0xc(r4)
    bl      __ct__16TModelDataKeeperFPCc
branch_0x8020951c:
    stw     r30, 0x60(r31)
    addi    r3, r31, 0x0
    li      r4, 0x18
    lwz     r6, 0x60(r31)
    lis     r5, 0x1021
    bl      makePartsModelData___11TNPCManagerFUlUlP16TModelDataKeeper
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl load__13TPeachManagerFR20JSUMemoryInputStream
load__13TPeachManagerFR20JSUMemoryInputStream: # 0x8020954c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lfs     f0, -0x1ce8(rtoc)
    li      r3, 0x14
    stfs    f0, 0x3c(r31)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80209590
    lwz     r4, 0x1c(r31)
    mr      r3, r30
    lwz     r4, 0xc(r4)
    bl      __ct__16TModelDataKeeperFPCc
branch_0x80209590:
    stw     r30, 0x60(r31)
    addi    r3, r31, 0x0
    li      r4, 0x17
    lwz     r6, 0x60(r31)
    lis     r5, 0x1001
    bl      makePartsModelData___11TNPCManagerFUlUlP16TModelDataKeeper
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl load__15TKinojiiManagerFR20JSUMemoryInputStream
load__15TKinojiiManagerFR20JSUMemoryInputStream: # 0x802095c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lfs     f0, -0x1ce8(rtoc)
    li      r3, 0x14
    stfs    f0, 0x3c(r31)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80209604
    lwz     r4, 0x1c(r31)
    mr      r3, r30
    lwz     r4, 0xc(r4)
    bl      __ct__16TModelDataKeeperFPCc
branch_0x80209604:
    stw     r30, 0x60(r31)
    addi    r3, r31, 0x0
    li      r4, 0x16
    lwz     r6, 0x60(r31)
    lis     r5, 0x1001
    bl      makePartsModelData___11TNPCManagerFUlUlP16TModelDataKeeper
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl load__15TKinopioManagerFR20JSUMemoryInputStream
load__15TKinopioManagerFR20JSUMemoryInputStream: # 0x80209634
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lfs     f0, -0x1ce8(rtoc)
    li      r3, 0x14
    stfs    f0, 0x3c(r31)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80209678
    lwz     r4, 0x1c(r31)
    mr      r3, r30
    lwz     r4, 0xc(r4)
    bl      __ct__16TModelDataKeeperFPCc
branch_0x80209678:
    stw     r30, 0x60(r31)
    addi    r3, r31, 0x0
    li      r4, 0x15
    lwz     r6, 0x60(r31)
    lis     r5, 0x1021
    bl      makePartsModelData___11TNPCManagerFUlUlP16TModelDataKeeper
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl load__14TMareWBManagerFR20JSUMemoryInputStream
load__14TMareWBManagerFR20JSUMemoryInputStream: # 0x802096a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lfs     f0, -0x1ce8(rtoc)
    li      r3, 0x14
    stfs    f0, 0x3c(r31)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802096ec
    lwz     r4, 0x1c(r31)
    mr      r3, r30
    lwz     r4, 0xc(r4)
    bl      __ct__16TModelDataKeeperFPCc
branch_0x802096ec:
    stw     r30, 0x60(r31)
    addi    r3, r31, 0x0
    li      r4, 0x14
    lwz     r6, 0x60(r31)
    lis     r5, 0x1021
    bl      makePartsModelData___11TNPCManagerFUlUlP16TModelDataKeeper
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl load__14TMareWAManagerFR20JSUMemoryInputStream
load__14TMareWAManagerFR20JSUMemoryInputStream: # 0x8020971c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lfs     f0, -0x1ce8(rtoc)
    li      r3, 0x14
    stfs    f0, 0x3c(r31)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80209760
    lwz     r4, 0x1c(r31)
    mr      r3, r30
    lwz     r4, 0xc(r4)
    bl      __ct__16TModelDataKeeperFPCc
branch_0x80209760:
    stw     r30, 0x60(r31)
    addi    r3, r31, 0x0
    li      r4, 0x13
    lwz     r6, 0x60(r31)
    lis     r5, 0x1021
    bl      makePartsModelData___11TNPCManagerFUlUlP16TModelDataKeeper
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl load__14TMareMDManagerFR20JSUMemoryInputStream
load__14TMareMDManagerFR20JSUMemoryInputStream: # 0x80209790
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lfs     f0, -0x1ce8(rtoc)
    li      r3, 0x14
    stfs    f0, 0x3c(r31)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802097d4
    lwz     r4, 0x1c(r31)
    mr      r3, r30
    lwz     r4, 0xc(r4)
    bl      __ct__16TModelDataKeeperFPCc
branch_0x802097d4:
    stw     r30, 0x60(r31)
    addi    r3, r31, 0x0
    li      r4, 0x11
    lwz     r6, 0x60(r31)
    lis     r5, 0x1021
    bl      makePartsModelData___11TNPCManagerFUlUlP16TModelDataKeeper
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl load__14TMareMCManagerFR20JSUMemoryInputStream
load__14TMareMCManagerFR20JSUMemoryInputStream: # 0x80209804
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lfs     f0, -0x1ce8(rtoc)
    li      r3, 0x14
    stfs    f0, 0x3c(r31)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80209848
    lwz     r4, 0x1c(r31)
    mr      r3, r30
    lwz     r4, 0xc(r4)
    bl      __ct__16TModelDataKeeperFPCc
branch_0x80209848:
    stw     r30, 0x60(r31)
    addi    r3, r31, 0x0
    li      r4, 0x10
    lwz     r6, 0x60(r31)
    lis     r5, 0x1021
    bl      makePartsModelData___11TNPCManagerFUlUlP16TModelDataKeeper
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl load__14TMareMBManagerFR20JSUMemoryInputStream
load__14TMareMBManagerFR20JSUMemoryInputStream: # 0x80209878
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lfs     f0, -0x1ce8(rtoc)
    li      r3, 0x14
    stfs    f0, 0x3c(r31)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802098bc
    lwz     r4, 0x1c(r31)
    mr      r3, r30
    lwz     r4, 0xc(r4)
    bl      __ct__16TModelDataKeeperFPCc
branch_0x802098bc:
    stw     r30, 0x60(r31)
    addi    r3, r31, 0x0
    li      r4, 0xf
    lwz     r6, 0x60(r31)
    lis     r5, 0x1021
    bl      makePartsModelData___11TNPCManagerFUlUlP16TModelDataKeeper
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl load__14TMareMAManagerFR20JSUMemoryInputStream
load__14TMareMAManagerFR20JSUMemoryInputStream: # 0x802098ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lfs     f0, -0x1ce8(rtoc)
    li      r3, 0x14
    stfs    f0, 0x3c(r31)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80209930
    lwz     r4, 0x1c(r31)
    mr      r3, r30
    lwz     r4, 0xc(r4)
    bl      __ct__16TModelDataKeeperFPCc
branch_0x80209930:
    stw     r30, 0x60(r31)
    addi    r3, r31, 0x0
    li      r4, 0xe
    lwz     r6, 0x60(r31)
    lis     r5, 0x1021
    bl      makePartsModelData___11TNPCManagerFUlUlP16TModelDataKeeper
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl load__15TMonteWCManagerFR20JSUMemoryInputStream
load__15TMonteWCManagerFR20JSUMemoryInputStream: # 0x80209960
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lfs     f0, -0x1ce8(rtoc)
    li      r3, 0x14
    stfs    f0, 0x3c(r31)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802099a4
    lwz     r4, 0x1c(r31)
    mr      r3, r30
    lwz     r4, 0xc(r4)
    bl      __ct__16TModelDataKeeperFPCc
branch_0x802099a4:
    stw     r30, 0x60(r31)
    addi    r3, r31, 0x0
    li      r4, 0xc
    lwz     r6, 0x60(r31)
    lis     r5, 0x1021
    bl      makePartsModelData___11TNPCManagerFUlUlP16TModelDataKeeper
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl load__15TMonteMHManagerFR20JSUMemoryInputStream
load__15TMonteMHManagerFR20JSUMemoryInputStream: # 0x802099d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lfs     f0, -0x1ce8(rtoc)
    li      r3, 0x14
    stfs    f0, 0x3c(r31)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80209a18
    lwz     r4, 0x1c(r31)
    mr      r3, r30
    lwz     r4, 0xc(r4)
    bl      __ct__16TModelDataKeeperFPCc
branch_0x80209a18:
    stw     r30, 0x60(r31)
    addi    r3, r31, 0x0
    li      r4, 0x8
    lwz     r6, 0x60(r31)
    lis     r5, 0x1021
    bl      makePartsModelData___11TNPCManagerFUlUlP16TModelDataKeeper
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl load__15TMonteMGManagerFR20JSUMemoryInputStream
load__15TMonteMGManagerFR20JSUMemoryInputStream: # 0x80209a48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lfs     f0, -0x1ce8(rtoc)
    li      r3, 0x14
    stfs    f0, 0x3c(r31)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80209a8c
    lwz     r4, 0x1c(r31)
    mr      r3, r30
    lwz     r4, 0xc(r4)
    bl      __ct__16TModelDataKeeperFPCc
branch_0x80209a8c:
    stw     r30, 0x60(r31)
    addi    r3, r31, 0x0
    li      r4, 0x7
    lwz     r6, 0x60(r31)
    lis     r5, 0x1021
    bl      makePartsModelData___11TNPCManagerFUlUlP16TModelDataKeeper
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl load__15TMonteMFManagerFR20JSUMemoryInputStream
load__15TMonteMFManagerFR20JSUMemoryInputStream: # 0x80209abc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lfs     f0, -0x1ce8(rtoc)
    li      r3, 0x14
    stfs    f0, 0x3c(r31)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80209b00
    lwz     r4, 0x1c(r31)
    mr      r3, r30
    lwz     r4, 0xc(r4)
    bl      __ct__16TModelDataKeeperFPCc
branch_0x80209b00:
    stw     r30, 0x60(r31)
    addi    r3, r31, 0x0
    li      r4, 0x6
    lwz     r6, 0x60(r31)
    lis     r5, 0x1021
    bl      makePartsModelData___11TNPCManagerFUlUlP16TModelDataKeeper
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl createAnmData__21TMonteWSpecialManagerFv
createAnmData__21TMonteWSpecialManagerFv: # 0x80209b30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      createAnmData__11TObjManagerFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createAnmData__21TMonteMSpecialManagerFv
createAnmData__21TMonteMSpecialManagerFv: # 0x80209b50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      createAnmData__11TObjManagerFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createAnmData__18TMonteWBaseManagerFv
createAnmData__18TMonteWBaseManagerFv: # 0x80209b70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x4c
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80209ba0
    mr      r3, r30
    bl      __ct__13MActorAnmDataFv
branch_0x80209ba0:
    lwz     r4, -0x7784(r13)
    mr      r3, r30
    li      r5, 0x0
    bl      init__13MActorAnmDataFPCcPPCc
    stw     r30, 0x20(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl createAnmData__18TMonteMBaseManagerFv
createAnmData__18TMonteMBaseManagerFv: # 0x80209bcc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x4c
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80209bfc
    mr      r3, r30
    bl      __ct__13MActorAnmDataFv
branch_0x80209bfc:
    lwz     r4, -0x7788(r13)
    mr      r3, r30
    li      r5, 0x0
    bl      init__13MActorAnmDataFPCcPPCc
    stw     r30, 0x20(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getBmt___16TMareBaseManagerFb
getBmt___16TMareBaseManagerFb: # 0x80209c28
    clrlwi. r0, r4, 24
    beq-    branch_0x80209c38
    lwz     r3, -0x61fc(r13)
    blr

branch_0x80209c38:
    lwz     r3, -0x6200(r13)
    blr


.globl __dt__11TNPCManagerFv
__dt__11TNPCManagerFv: # 0x80209c40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80209c88
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x80209c88
    mr      r3, r30
    bl      __dl__FPv
branch_0x80209c88:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__17TMareWBaseManagerFPCc
__ct__17TMareWBaseManagerFPCc: # 0x80209ca4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r3, 0x8(sp)
    lwz     r0, 0x8(sp)
    stw     r0, 0x10(sp)
    lwz     r3, 0x10(sp)
    bl      __ct__11TNPCManagerFPCc
    lis     r4, 0x803e
    lwz     r3, 0x10(sp)
    subi    r0, r4, 0x6e30
    stw     r0, 0x0(r3)
    lwz     r0, -0x6200(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x80209cf8
    lwz     r3, -0x7778(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    bl      loadMaterialTable__22J3DModelLoaderDataBaseFPCv
    stw     r3, -0x6200(r13)
branch_0x80209cf8:
    lwz     r0, -0x61fc(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x80209d14
    lwz     r3, -0x7774(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    bl      loadMaterialTable__22J3DModelLoaderDataBaseFPCv
    stw     r3, -0x61fc(r13)
branch_0x80209d14:
    lis     r4, 0x803e
    lwz     r3, 0x8(sp)
    subi    r0, r4, 0x7880
    stw     r0, 0x0(r3)
    lwz     r31, -0x777c(r13)
    lwz     r0, -0x6204(r13)
    stw     r0, 0x5c(r3)
    lwz     r0, 0x5c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80209d7c
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80209d58
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      __ct__16TModelDataKeeperFPCc
branch_0x80209d58:
    lwz     r3, 0x8(sp)
    li      r4, 0x12
    lis     r5, 0x1021
    stw     r30, 0x5c(r3)
    addi    r6, r3, 0x5c
    lwz     r0, 0x5c(r3)
    stw     r0, -0x6204(r13)
    lwz     r6, 0x0(r6)
    bl      makePartsModelData___11TNPCManagerFUlUlP16TModelDataKeeper
branch_0x80209d7c:
    lwz     r0, 0x24(sp)
    lwz     r3, 0x8(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    blr


.globl __dt__16TMareBaseManagerFv
__dt__16TMareBaseManagerFv: # 0x80209d98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80209df0
    lis     r3, 0x803e
    subi    r0, r3, 0x6e30
    stw     r0, 0x0(r30)
    beq-    branch_0x80209de0
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x80209de0:
    extsh.  r0, r31
    ble-    branch_0x80209df0
    mr      r3, r30
    bl      __dl__FPv
branch_0x80209df0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__17TMareMBaseManagerFPCc
__ct__17TMareMBaseManagerFPCc: # 0x80209e0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r3, 0x8(sp)
    lwz     r0, 0x8(sp)
    stw     r0, 0x10(sp)
    lwz     r3, 0x10(sp)
    bl      __ct__11TNPCManagerFPCc
    lis     r4, 0x803e
    lwz     r3, 0x10(sp)
    subi    r0, r4, 0x6e30
    stw     r0, 0x0(r3)
    lwz     r0, -0x6200(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x80209e60
    lwz     r3, -0x7778(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    bl      loadMaterialTable__22J3DModelLoaderDataBaseFPCv
    stw     r3, -0x6200(r13)
branch_0x80209e60:
    lwz     r0, -0x61fc(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x80209e7c
    lwz     r3, -0x7774(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    bl      loadMaterialTable__22J3DModelLoaderDataBaseFPCv
    stw     r3, -0x61fc(r13)
branch_0x80209e7c:
    lis     r4, 0x803e
    lwz     r3, 0x8(sp)
    subi    r0, r4, 0x7828
    stw     r0, 0x0(r3)
    lwz     r31, -0x7780(r13)
    lwz     r0, -0x6208(r13)
    stw     r0, 0x5c(r3)
    lwz     r0, 0x5c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80209ee4
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80209ec0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      __ct__16TModelDataKeeperFPCc
branch_0x80209ec0:
    lwz     r3, 0x8(sp)
    li      r4, 0xd
    lis     r5, 0x1021
    stw     r30, 0x5c(r3)
    addi    r6, r3, 0x5c
    lwz     r0, 0x5c(r3)
    stw     r0, -0x6208(r13)
    lwz     r6, 0x0(r6)
    bl      makePartsModelData___11TNPCManagerFUlUlP16TModelDataKeeper
branch_0x80209ee4:
    lwz     r0, 0x24(sp)
    lwz     r3, 0x8(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    blr


.globl __ct__18TMonteWBaseManagerFPCc
__ct__18TMonteWBaseManagerFPCc: # 0x80209f00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11TNPCManagerFPCc
    lis     r4, 0x803e
    lwz     r3, 0x8(sp)
    subi    r0, r4, 0x6ee0
    stw     r0, 0x0(r3)
    lwz     r31, -0x7784(r13)
    lwz     r0, -0x620c(r13)
    stw     r0, 0x5c(r3)
    lwz     r0, 0x5c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80209f88
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80209f64
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      __ct__16TModelDataKeeperFPCc
branch_0x80209f64:
    lwz     r3, 0x8(sp)
    li      r4, 0x9
    lis     r5, 0x1021
    stw     r30, 0x5c(r3)
    addi    r6, r3, 0x5c
    lwz     r0, 0x5c(r3)
    stw     r0, -0x620c(r13)
    lwz     r6, 0x0(r6)
    bl      makePartsModelData___11TNPCManagerFUlUlP16TModelDataKeeper
branch_0x80209f88:
    lwz     r0, 0x1c(sp)
    lwz     r3, 0x8(sp)
    lwz     r31, 0x14(sp)
    mtlr    r0
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    blr


.globl __ct__18TMonteMBaseManagerFPCc
__ct__18TMonteMBaseManagerFPCc: # 0x80209fa4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11TNPCManagerFPCc
    lis     r4, 0x803e
    lwz     r3, 0x8(sp)
    subi    r0, r4, 0x6e88
    stw     r0, 0x0(r3)
    lwz     r31, -0x7788(r13)
    lwz     r0, -0x6210(r13)
    stw     r0, 0x5c(r3)
    lwz     r0, 0x5c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8020a02c
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8020a008
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      __ct__16TModelDataKeeperFPCc
branch_0x8020a008:
    lwz     r3, 0x8(sp)
    li      r4, 0x0
    lis     r5, 0x1021
    stw     r30, 0x5c(r3)
    addi    r6, r3, 0x5c
    lwz     r0, 0x5c(r3)
    stw     r0, -0x6210(r13)
    lwz     r6, 0x0(r6)
    bl      makePartsModelData___11TNPCManagerFUlUlP16TModelDataKeeper
branch_0x8020a02c:
    lwz     r0, 0x1c(sp)
    lwz     r3, 0x8(sp)
    lwz     r31, 0x14(sp)
    mtlr    r0
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    blr


.globl perform__11TNPCManagerFUlPQ26JDrama9TGraphics
perform__11TNPCManagerFUlPQ26JDrama9TGraphics: # 0x8020a048
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 22, 22
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    beq-    branch_0x8020a194
    lwz     r6, 0x14(r3)
    li      r7, 0x0
    li      r8, 0x0
    cmpwi   r6, 0x0
    ble-    branch_0x8020a194
    cmpwi   r6, 0x8
    subi    r9, r6, 0x8
    ble-    branch_0x8020a164
    addi    r0, r9, 0x7
    srwi    r0, r0, 3
    cmpwi   r9, 0x0
    mtctr   r0
    ble-    branch_0x8020a164
branch_0x8020a09c:
    lwz     r9, 0x18(r3)
    addi    r29, r8, 0x4
    addi    r30, r8, 0x8
    lwzx    r31, r9, r8
    addi    r12, r8, 0xc
    addi    r11, r8, 0x10
    lwz     r0, 0xf0(r31)
    addi    r10, r8, 0x14
    addi    r9, r8, 0x18
    oris    r0, r0, 0x100
    stw     r0, 0xf0(r31)
    addi    r0, r8, 0x1c
    addi    r7, r7, 0x8
    lwz     r31, 0x18(r3)
    addi    r8, r8, 0x20
    lwzx    r29, r31, r29
    lwz     r31, 0xf0(r29)
    oris    r31, r31, 0x100
    stw     r31, 0xf0(r29)
    lwz     r31, 0x18(r3)
    lwzx    r30, r31, r30
    lwz     r31, 0xf0(r30)
    oris    r31, r31, 0x100
    stw     r31, 0xf0(r30)
    lwz     r31, 0x18(r3)
    lwzx    r31, r31, r12
    lwz     r12, 0xf0(r31)
    oris    r12, r12, 0x100
    stw     r12, 0xf0(r31)
    lwz     r12, 0x18(r3)
    lwzx    r12, r12, r11
    lwz     r11, 0xf0(r12)
    oris    r11, r11, 0x100
    stw     r11, 0xf0(r12)
    lwz     r11, 0x18(r3)
    lwzx    r11, r11, r10
    lwz     r10, 0xf0(r11)
    oris    r10, r10, 0x100
    stw     r10, 0xf0(r11)
    lwz     r10, 0x18(r3)
    lwzx    r10, r10, r9
    lwz     r9, 0xf0(r10)
    oris    r9, r9, 0x100
    stw     r9, 0xf0(r10)
    lwz     r9, 0x18(r3)
    lwzx    r9, r9, r0
    lwz     r0, 0xf0(r9)
    oris    r0, r0, 0x100
    stw     r0, 0xf0(r9)
    bdnz+      branch_0x8020a09c
branch_0x8020a164:
    subf    r0, r7, r6
    cmpw    r7, r6
    mtctr   r0
    slwi    r6, r7, 2
    bge-    branch_0x8020a194
branch_0x8020a178:
    lwz     r7, 0x18(r3)
    lwzx    r7, r7, r6
    addi    r6, r6, 0x4
    lwz     r0, 0xf0(r7)
    oris    r0, r0, 0x100
    stw     r0, 0xf0(r7)
    bdnz+      branch_0x8020a178
branch_0x8020a194:
    bl      perform__13TEnemyManagerFUlPQ26JDrama9TGraphics
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl clipEnemies__11TNPCManagerFPQ26JDrama9TGraphics
clipEnemies__11TNPCManagerFPQ26JDrama9TGraphics: # 0x8020a1b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stfd    f30, 0x80(sp)
    stmw    r26, 0x68(sp)
    mr      r27, r3
    mr      r28, r4
    lwz     r5, gpMarDirector(r13)
    lwz     r3, 0x58(r3)
    lbz     r0, 0x7c(r5)
    lfs     f31, 0x54(r27)
    cmplwi  r0, 0x1
    lfs     f30, 0x0(r3)
    bne-    branch_0x8020a290
    lwz     r26, gpCamera(r13)
    li      r29, 0x1
    addi    r3, r26, 0x0
    bl      isSimpleDemoCamera__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8020a22c
    lwz     r0, 0x50(r26)
    cmpwi   r0, 0x49
    bne-    branch_0x8020a21c
    mr      r0, r29
    b       branch_0x8020a220

branch_0x8020a21c:
    li      r0, 0x0
branch_0x8020a220:
    clrlwi. r0, r0, 24
    bne-    branch_0x8020a22c
    li      r29, 0x0
branch_0x8020a22c:
    clrlwi. r0, r29, 24
    beq-    branch_0x8020a23c
    li      r0, 0x1
    b       branch_0x8020a240

branch_0x8020a23c:
    li      r0, 0x0
branch_0x8020a240:
    clrlwi. r0, r0, 24
    bne-    branch_0x8020a280
    lwz     r3, gpCamera(r13)
    lwz     r0, 0x50(r3)
    cmpwi   r0, 0xd
    beq-    branch_0x8020a280
    lwz     r0, 0x54(r3)
    cmpwi   r0, 0xd
    bne-    branch_0x8020a290
    bl      isNowInbetween__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8020a280
    lwz     r3, gpCamera(r13)
    lwz     r0, 0x50(r3)
    cmpwi   r0, 0x13
    bne-    branch_0x8020a290
branch_0x8020a280:
    lfs     f0, -0x1ce0(rtoc)
    fcmpo   cr0, f30, f0
    bge-    branch_0x8020a290
    fmr     f30, f0
branch_0x8020a290:
    lwz     r3, gpCamera(r13)
    fmr     f3, f31
    fmr     f4, f30
    lfs     f2, 0x4c(r3)
    lfs     f1, 0x48(r3)
    bl      SetViewFrustumClipCheckPerspective__Fffff
    lwz     r31, 0x14(r27)
    li      r29, 0x0
    lfs     f31, -0x1cdc(rtoc)
    li      r26, 0x0
    b       branch_0x8020a350

branch_0x8020a2bc:
    lwz     r3, 0x18(r27)
    lwzx    r30, r3, r26
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r3, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x5c(sp)
    lfs     f0, 0x58(sp)
    fadds   f0, f0, f31
    stfs    f0, 0x58(sp)
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x8020a314
    addi    r3, sp, 0x54
    bl      SMS_IsInOtherFastCube__FRC3Vec
    clrlwi. r0, r3, 24
    beq-    branch_0x8020a314
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x4
    stw     r0, 0xf0(r30)
    b       branch_0x8020a348

branch_0x8020a314:
    lfs     f1, 0x3c(r27)
    addi    r3, r28, 0x0
    addi    r4, r30, 0x10
    bl      ViewFrustumClipCheck__FPQ26JDrama9TGraphicsP3Vecf
    cmpwi   r3, 0x0
    beq-    branch_0x8020a33c
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r30)
    b       branch_0x8020a348

branch_0x8020a33c:
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x4
    stw     r0, 0xf0(r30)
branch_0x8020a348:
    addi    r29, r29, 0x1
    addi    r26, r26, 0x4
branch_0x8020a350:
    cmpw    r29, r31
    blt+    branch_0x8020a2bc
    lmw     r26, 0x68(sp)
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lfd     f30, 0x80(sp)
    mtlr    r0
    addi    sp, sp, 0x90
    blr


.globl getPartsSDLModelData__11TNPCManagerCFPCc
getPartsSDLModelData__11TNPCManagerCFPCc: # 0x8020a374
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r3, 0x5c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8020a3ac
    mr      r4, r31
    bl      getDataByName__16TModelDataKeeperCFPCc
    mr      r0, r3
branch_0x8020a3ac:
    cmplwi  r0, 0x0
    bne-    branch_0x8020a3cc
    lwz     r3, 0x60(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x8020a3cc
    mr      r4, r31
    bl      getDataByName__16TModelDataKeeperCFPCc
    mr      r0, r3
branch_0x8020a3cc:
    mr      r3, r0
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getBmt___11TNPCManagerFb
getBmt___11TNPCManagerFb: # 0x8020a3e8
    li      r3, 0x0
    blr


.globl makePartsModelData___11TNPCManagerFUlUlP16TModelDataKeeper
makePartsModelData___11TNPCManagerFUlUlP16TModelDataKeeper: # 0x8020a3f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x150(sp)
    stmw    r21, 0x124(sp)
    addi    r24, r3, 0x0
    addi    r25, r5, 0x0
    addi    r26, r6, 0x0
    addi    r3, r4, 0x0
    bl      SMSGetNpcInitData__FUl
    addi    r31, r3, 0x0
    li      r28, 0x0
    li      r23, 0x0
branch_0x8020a420:
    addi    r0, r23, 0x4
    lwzx    r30, r31, r0
    cmplwi  r30, 0x0
    beq-    branch_0x8020a51c
    lbz     r0, 0x2a(r30)
    addi    r29, r25, 0x0
    cmplwi  r0, 0x0
    beq-    branch_0x8020a448
    rlwinm  r29, r29, 0, 16, 12
    oris    r29, r29, 0x10
branch_0x8020a448:
    li      r27, 0x0
    li      r22, 0x0
branch_0x8020a450:
    addi    r21, r22, 0x8
    add     r21, r30, r21
    lwz     r7, 0x0(r21)
    cmplwi  r7, 0x0
    beq-    branch_0x8020a50c
    lwz     r6, 0x0(r26)
    addi    r3, sp, 0x20
    crxor   6, 6, 6
    li      r4, 0x100
    subi    r5, rtoc, 0x1cd8
    bl      snprintf
    addi    r3, sp, 0x20
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8020a50c
    lwz     r4, 0x0(r21)
    addi    r3, r26, 0x0
    addi    r5, r29, 0x0
    bl      createAndKeepData__16TModelDataKeeperFPCcUl
    lbz     r0, 0x2b(r30)
    addi    r21, r3, 0x0
    cmplwi  r0, 0x0
    beq-    branch_0x8020a4e0
    mr      r3, r24
    lbz     r4, 0x2a(r30)
    lwz     r12, 0x0(r24)
    lwz     r12, 0x54(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8020a4e0
    lwz     r0, 0x0(r21)
    addi    r4, r3, 0x0
    li      r5, 0x3
    mr      r3, r0
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
branch_0x8020a4e0:
    lbz     r0, 0x2a(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8020a50c
    lwz     r21, 0x0(r21)
    lwz     r3, -0x77ac(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr.     r5, r3
    beq-    branch_0x8020a50c
    lwz     r4, -0x77b0(r13)
    mr      r3, r21
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
branch_0x8020a50c:
    addi    r27, r27, 0x1
    cmpwi   r27, 0x2
    addi    r22, r22, 0x4
    blt+    branch_0x8020a450
branch_0x8020a51c:
    addi    r28, r28, 0x1
    cmpwi   r28, 0xc
    addi    r23, r23, 0x4
    blt+    branch_0x8020a420
    lmw     r21, 0x124(sp)
    lwz     r0, 0x154(sp)
    addi    sp, sp, 0x150
    mtlr    r0
    blr


.globl load__11TNPCManagerFR20JSUMemoryInputStream
load__11TNPCManagerFR20JSUMemoryInputStream: # 0x8020a540
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lfs     f0, -0x1ce8(rtoc)
    stfs    f0, 0x3c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__11TNPCManagerFPCc
__ct__11TNPCManagerFPCc: # 0x8020a574
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r31)
    li      r0, 0x0
    lfs     f0, -0x1cd0(rtoc)
    stfs    f0, 0x54(r31)
    stw     r0, 0x58(r31)
    stw     r0, 0x5c(r31)
    stw     r0, 0x60(r31)
    lwz     r3, gpMarDirector(r13)
    lwz     r4, -0x70b0(r13)
    lbz     r0, 0x7c(r3)
    lwz     r3, 0xf4(r4)
    cmplwi  r0, 0xd
    lwz     r4, 0x0(r3)
    bgt-    branch_0x8020a674
    lis     r3, 0x803e
    subi    r3, r3, 0x78b8
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8020A5E4:		# jumptable 8020A5E0 case 0
    addi    r0, r4, 0x18
    stw     r0, 0x58(r31)
    b       branch_0x8020a67c

branch_0x8020A5F0:		# jumptable 8020A5E0 case 1
addi	  r0, r4, 0x2C
stw	  r0, 0x58(r31)
b	  branch_0x8020a67c

branch_0x8020A5FC:		# jumptable 8020A5E0 case 2
addi	  r0, r4, 0x40
stw	  r0, 0x58(r31)
b	  branch_0x8020a67c

branch_0x8020A608:		# jumptable 8020A5E0 case 3
addi	  r0, r4, 0x54
stw	  r0, 0x58(r31)
b	  branch_0x8020a67c

branch_0x8020A614:		# jumptable 8020A5E0 case 4
addi	  r0, r4, 0x68
stw	  r0, 0x58(r31)
b	  branch_0x8020a67c

branch_0x8020A620:		# jumptable 8020A5E0 case 5
addi	  r0, r4, 0x7C
stw	  r0, 0x58(r31)
b	  branch_0x8020a67c

branch_0x8020A62C:		# jumptable 8020A5E0 case 13
addi	  r0, r4, 0x90
stw	  r0, 0x58(r31)
b	  branch_0x8020a67c

branch_0x8020A638:		# jumptable 8020A5E0 case 6
addi	  r0, r4, 0xA4
stw	  r0, 0x58(r31)
b	  branch_0x8020a67c

branch_0x8020A644:		# jumptable 8020A5E0 case 7
addi	  r0, r4, 0xB8
stw	  r0, 0x58(r31)
b	  branch_0x8020a67c

branch_0x8020A650:		# jumptable 8020A5E0 case 9
addi	  r0, r4, 0xCC
stw	  r0, 0x58(r31)
b	  branch_0x8020a67c

branch_0x8020A65C:		# jumptable 8020A5E0 case 8
addi	  r0, r4, 0xE0
stw	  r0, 0x58(r31)
b	  branch_0x8020a67c

branch_0x8020A668:		# jumptable 8020A5E0 case 10
addi	  r0, r4, 0xF4
stw	  r0, 0x58(r31)
b	  branch_0x8020a67c

def_8020A5E0:		# jumptable 8020A5E0 default case
branch_0x8020a674:
    addi    r0, r4, 0x108
    stw     r0, 0x58(r31)
branch_0x8020a67c:
    lwz     r0, 0x6c(sp)
    mr      r3, r31
    lwz     r31, 0x64(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl createModelData__21TMareJellyFishManagerFv
createModelData__21TMareJellyFishManagerFv: # 0x8020a694
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x4cd0
    stwu    sp, -0x60(sp)
    stmw    r26, 0x48(sp)
    mr      r26, r3
    lwz     r12, 0x0(r26)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x778c(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, -0x5db8(r13)
    mr      r29, r3
    lwz     r31, -0x7798(r13)
    lwz     r30, 0x4(r4)
    mr      r3, r31
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r31
    mtlr    r12
    blrl
    lwz     r4, 0x10(r3)
    mr      r3, r26
    lwz     r30, 0x20(r4)
    bl      getModelDataKeeper__11TObjManagerFv
    bl      getModelDataNum__16TModelDataKeeperCFv
    addi    r31, r3, 0x0
    li      r27, 0x0
    b       branch_0x8020a754

branch_0x8020a71c:
    mr      r3, r26
    bl      getModelDataKeeper__11TObjManagerFv
    mr      r4, r27
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r28, 0x0(r3)
    mr      r5, r29
    lwz     r4, -0x7790(r13)
    mr      r3, r28
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    lwz     r4, -0x7794(r13)
    addi    r3, r28, 0x0
    addi    r5, r30, 0x0
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    addi    r27, r27, 0x1
branch_0x8020a754:
    cmpw    r27, r31
    blt+    branch_0x8020a71c
    lmw     r26, 0x48(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl perform__21TMareJellyFishManagerFUlPQ26JDrama9TGraphics
perform__21TMareJellyFishManagerFUlPQ26JDrama9TGraphics: # 0x8020a770
    blr


.globl __ct__21TMareJellyFishManagerFPCc
__ct__21TMareJellyFishManagerFPCc: # 0x8020a774
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TObjManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x6d80
    stw     r0, 0x0(r31)
    mr      r3, r31
    stw     r31, -0x61f8(r13)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__11TObjManagerFv
__dt__11TObjManagerFv: # 0x8020a7b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020a80c
    lis     r3, 0x803e
    subi    r0, r3, 0x6058
    stw     r0, 0x0(r30)
    beq-    branch_0x8020a7fc
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8020a7fc:
    extsh.  r0, r31
    ble-    branch_0x8020a80c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020a80c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl createModelData__16TBoardNpcManagerFv
createModelData__16TBoardNpcManagerFv: # 0x8020a828
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x4c58
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl clipActors__16TBoardNpcManagerFPQ26JDrama9TGraphics
clipActors__16TBoardNpcManagerFPQ26JDrama9TGraphics: # 0x8020a85c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, -0x70b0(r13)
    lfs     f2, -0x1ccc(rtoc)
    lfs     f1, 0x9c(r5)
    bl      clipActorsAux__12TLiveManagerFPQ26JDrama9TGraphicsff
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__17TMareWBaseManagerFv
__dt__17TMareWBaseManagerFv: # 0x8020a888
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020a8f0
    lis     r3, 0x803e
    subi    r0, r3, 0x7880
    stw     r0, 0x0(r30)
    beq-    branch_0x8020a8e0
    lis     r3, 0x803e
    subi    r0, r3, 0x6e30
    stw     r0, 0x0(r30)
    beq-    branch_0x8020a8e0
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020a8e0:
    extsh.  r0, r31
    ble-    branch_0x8020a8f0
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020a8f0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17TMareMBaseManagerFv
__dt__17TMareMBaseManagerFv: # 0x8020a90c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020a974
    lis     r3, 0x803e
    subi    r0, r3, 0x7828
    stw     r0, 0x0(r30)
    beq-    branch_0x8020a964
    lis     r3, 0x803e
    subi    r0, r3, 0x6e30
    stw     r0, 0x0(r30)
    beq-    branch_0x8020a964
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020a964:
    extsh.  r0, r31
    ble-    branch_0x8020a974
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020a974:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TMonteWBManagerFv
__dt__15TMonteWBManagerFv: # 0x8020a990
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020a9f8
    lis     r3, 0x803e
    subi    r0, r3, 0x77d0
    stw     r0, 0x0(r30)
    beq-    branch_0x8020a9e8
    lis     r3, 0x803e
    subi    r0, r3, 0x6ee0
    stw     r0, 0x0(r30)
    beq-    branch_0x8020a9e8
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020a9e8:
    extsh.  r0, r31
    ble-    branch_0x8020a9f8
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020a9f8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TMonteWAManagerFv
__dt__15TMonteWAManagerFv: # 0x8020aa14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020aa7c
    lis     r3, 0x803e
    subi    r0, r3, 0x7778
    stw     r0, 0x0(r30)
    beq-    branch_0x8020aa6c
    lis     r3, 0x803e
    subi    r0, r3, 0x6ee0
    stw     r0, 0x0(r30)
    beq-    branch_0x8020aa6c
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020aa6c:
    extsh.  r0, r31
    ble-    branch_0x8020aa7c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020aa7c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TMonteWManagerFv
__dt__14TMonteWManagerFv: # 0x8020aa98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020ab00
    lis     r3, 0x803e
    subi    r0, r3, 0x7720
    stw     r0, 0x0(r30)
    beq-    branch_0x8020aaf0
    lis     r3, 0x803e
    subi    r0, r3, 0x6ee0
    stw     r0, 0x0(r30)
    beq-    branch_0x8020aaf0
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020aaf0:
    extsh.  r0, r31
    ble-    branch_0x8020ab00
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020ab00:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TMonteMEManagerFv
__dt__15TMonteMEManagerFv: # 0x8020ab1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020ab94
    lis     r3, 0x803e
    subi    r0, r3, 0x76c8
    stw     r0, 0x0(r30)
    beq-    branch_0x8020ab84
    lis     r3, 0x803e
    subi    r0, r3, 0x6f38
    stw     r0, 0x0(r30)
    beq-    branch_0x8020ab84
    lis     r3, 0x803e
    subi    r0, r3, 0x6e88
    stw     r0, 0x0(r30)
    beq-    branch_0x8020ab84
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020ab84:
    extsh.  r0, r31
    ble-    branch_0x8020ab94
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020ab94:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TMonteMDManagerFv
__dt__15TMonteMDManagerFv: # 0x8020abb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020ac18
    lis     r3, 0x803e
    subi    r0, r3, 0x7670
    stw     r0, 0x0(r30)
    beq-    branch_0x8020ac08
    lis     r3, 0x803e
    subi    r0, r3, 0x6e88
    stw     r0, 0x0(r30)
    beq-    branch_0x8020ac08
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020ac08:
    extsh.  r0, r31
    ble-    branch_0x8020ac18
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020ac18:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TMonteMCManagerFv
__dt__15TMonteMCManagerFv: # 0x8020ac34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020ac9c
    lis     r3, 0x803e
    subi    r0, r3, 0x7618
    stw     r0, 0x0(r30)
    beq-    branch_0x8020ac8c
    lis     r3, 0x803e
    subi    r0, r3, 0x6e88
    stw     r0, 0x0(r30)
    beq-    branch_0x8020ac8c
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020ac8c:
    extsh.  r0, r31
    ble-    branch_0x8020ac9c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020ac9c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TMonteMBManagerFv
__dt__15TMonteMBManagerFv: # 0x8020acb8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020ad20
    lis     r3, 0x803e
    subi    r0, r3, 0x75c0
    stw     r0, 0x0(r30)
    beq-    branch_0x8020ad10
    lis     r3, 0x803e
    subi    r0, r3, 0x6e88
    stw     r0, 0x0(r30)
    beq-    branch_0x8020ad10
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020ad10:
    extsh.  r0, r31
    ble-    branch_0x8020ad20
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020ad20:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TMonteMAManagerFv
__dt__15TMonteMAManagerFv: # 0x8020ad3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020ada4
    lis     r3, 0x803e
    subi    r0, r3, 0x7568
    stw     r0, 0x0(r30)
    beq-    branch_0x8020ad94
    lis     r3, 0x803e
    subi    r0, r3, 0x6e88
    stw     r0, 0x0(r30)
    beq-    branch_0x8020ad94
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020ad94:
    extsh.  r0, r31
    ble-    branch_0x8020ada4
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020ada4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TMonteMManagerFv
__dt__14TMonteMManagerFv: # 0x8020adc0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020ae28
    lis     r3, 0x803e
    subi    r0, r3, 0x7510
    stw     r0, 0x0(r30)
    beq-    branch_0x8020ae18
    lis     r3, 0x803e
    subi    r0, r3, 0x6e88
    stw     r0, 0x0(r30)
    beq-    branch_0x8020ae18
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020ae18:
    extsh.  r0, r31
    ble-    branch_0x8020ae28
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020ae28:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__18TSunflowerLManagerFv
__dt__18TSunflowerLManagerFv: # 0x8020ae44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020ae9c
    lis     r3, 0x803e
    subi    r0, r3, 0x74b8
    stw     r0, 0x0(r30)
    beq-    branch_0x8020ae8c
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020ae8c:
    extsh.  r0, r31
    ble-    branch_0x8020ae9c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020ae9c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__18TRaccoonDogManagerFv
__dt__18TRaccoonDogManagerFv: # 0x8020aeb8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020af10
    lis     r3, 0x803e
    subi    r0, r3, 0x7460
    stw     r0, 0x0(r30)
    beq-    branch_0x8020af00
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020af00:
    extsh.  r0, r31
    ble-    branch_0x8020af10
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020af10:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13TPeachManagerFv
__dt__13TPeachManagerFv: # 0x8020af2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020af84
    lis     r3, 0x803e
    subi    r0, r3, 0x7408
    stw     r0, 0x0(r30)
    beq-    branch_0x8020af74
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020af74:
    extsh.  r0, r31
    ble-    branch_0x8020af84
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020af84:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TKinojiiManagerFv
__dt__15TKinojiiManagerFv: # 0x8020afa0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020aff8
    lis     r3, 0x803e
    subi    r0, r3, 0x73b0
    stw     r0, 0x0(r30)
    beq-    branch_0x8020afe8
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020afe8:
    extsh.  r0, r31
    ble-    branch_0x8020aff8
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020aff8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TKinopioManagerFv
__dt__15TKinopioManagerFv: # 0x8020b014
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020b06c
    lis     r3, 0x803e
    subi    r0, r3, 0x7358
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b05c
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020b05c:
    extsh.  r0, r31
    ble-    branch_0x8020b06c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020b06c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TMareWBManagerFv
__dt__14TMareWBManagerFv: # 0x8020b088
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020b100
    lis     r3, 0x803e
    subi    r0, r3, 0x7300
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b0f0
    lis     r3, 0x803e
    subi    r0, r3, 0x7880
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b0f0
    lis     r3, 0x803e
    subi    r0, r3, 0x6e30
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b0f0
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020b0f0:
    extsh.  r0, r31
    ble-    branch_0x8020b100
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020b100:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TMareWAManagerFv
__dt__14TMareWAManagerFv: # 0x8020b11c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020b194
    lis     r3, 0x803e
    subi    r0, r3, 0x72a8
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b184
    lis     r3, 0x803e
    subi    r0, r3, 0x7880
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b184
    lis     r3, 0x803e
    subi    r0, r3, 0x6e30
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b184
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020b184:
    extsh.  r0, r31
    ble-    branch_0x8020b194
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020b194:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TMareMDManagerFv
__dt__14TMareMDManagerFv: # 0x8020b1b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020b228
    lis     r3, 0x803e
    subi    r0, r3, 0x7250
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b218
    lis     r3, 0x803e
    subi    r0, r3, 0x7828
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b218
    lis     r3, 0x803e
    subi    r0, r3, 0x6e30
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b218
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020b218:
    extsh.  r0, r31
    ble-    branch_0x8020b228
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020b228:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TMareMCManagerFv
__dt__14TMareMCManagerFv: # 0x8020b244
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020b2bc
    lis     r3, 0x803e
    subi    r0, r3, 0x71f8
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b2ac
    lis     r3, 0x803e
    subi    r0, r3, 0x7828
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b2ac
    lis     r3, 0x803e
    subi    r0, r3, 0x6e30
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b2ac
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020b2ac:
    extsh.  r0, r31
    ble-    branch_0x8020b2bc
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020b2bc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TMareMBManagerFv
__dt__14TMareMBManagerFv: # 0x8020b2d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020b350
    lis     r3, 0x803e
    subi    r0, r3, 0x71a0
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b340
    lis     r3, 0x803e
    subi    r0, r3, 0x7828
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b340
    lis     r3, 0x803e
    subi    r0, r3, 0x6e30
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b340
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020b340:
    extsh.  r0, r31
    ble-    branch_0x8020b350
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020b350:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TMareMAManagerFv
__dt__14TMareMAManagerFv: # 0x8020b36c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020b3e4
    lis     r3, 0x803e
    subi    r0, r3, 0x7148
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b3d4
    lis     r3, 0x803e
    subi    r0, r3, 0x7828
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b3d4
    lis     r3, 0x803e
    subi    r0, r3, 0x6e30
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b3d4
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020b3d4:
    extsh.  r0, r31
    ble-    branch_0x8020b3e4
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020b3e4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TMonteWCManagerFv
__dt__15TMonteWCManagerFv: # 0x8020b400
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020b478
    lis     r3, 0x803e
    subi    r0, r3, 0x70f0
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b468
    lis     r3, 0x803e
    subi    r0, r3, 0x6f90
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b468
    lis     r3, 0x803e
    subi    r0, r3, 0x6ee0
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b468
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020b468:
    extsh.  r0, r31
    ble-    branch_0x8020b478
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020b478:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TMonteMHManagerFv
__dt__15TMonteMHManagerFv: # 0x8020b494
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020b50c
    lis     r3, 0x803e
    subi    r0, r3, 0x7098
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b4fc
    lis     r3, 0x803e
    subi    r0, r3, 0x6f38
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b4fc
    lis     r3, 0x803e
    subi    r0, r3, 0x6e88
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b4fc
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020b4fc:
    extsh.  r0, r31
    ble-    branch_0x8020b50c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020b50c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TMonteMGManagerFv
__dt__15TMonteMGManagerFv: # 0x8020b528
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020b5a0
    lis     r3, 0x803e
    subi    r0, r3, 0x7040
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b590
    lis     r3, 0x803e
    subi    r0, r3, 0x6f38
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b590
    lis     r3, 0x803e
    subi    r0, r3, 0x6e88
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b590
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020b590:
    extsh.  r0, r31
    ble-    branch_0x8020b5a0
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020b5a0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TMonteMFManagerFv
__dt__15TMonteMFManagerFv: # 0x8020b5bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020b634
    lis     r3, 0x803e
    subi    r0, r3, 0x6fe8
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b624
    lis     r3, 0x803e
    subi    r0, r3, 0x6f38
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b624
    lis     r3, 0x803e
    subi    r0, r3, 0x6e88
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b624
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020b624:
    extsh.  r0, r31
    ble-    branch_0x8020b634
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020b634:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__21TMonteWSpecialManagerFv
__dt__21TMonteWSpecialManagerFv: # 0x8020b650
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020b6b8
    lis     r3, 0x803e
    subi    r0, r3, 0x6f90
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b6a8
    lis     r3, 0x803e
    subi    r0, r3, 0x6ee0
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b6a8
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020b6a8:
    extsh.  r0, r31
    ble-    branch_0x8020b6b8
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020b6b8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__21TMonteMSpecialManagerFv
__dt__21TMonteMSpecialManagerFv: # 0x8020b6d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020b73c
    lis     r3, 0x803e
    subi    r0, r3, 0x6f38
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b72c
    lis     r3, 0x803e
    subi    r0, r3, 0x6e88
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b72c
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020b72c:
    extsh.  r0, r31
    ble-    branch_0x8020b73c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020b73c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__18TMonteWBaseManagerFv
__dt__18TMonteWBaseManagerFv: # 0x8020b758
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020b7b0
    lis     r3, 0x803e
    subi    r0, r3, 0x6ee0
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b7a0
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020b7a0:
    extsh.  r0, r31
    ble-    branch_0x8020b7b0
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020b7b0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__18TMonteMBaseManagerFv
__dt__18TMonteMBaseManagerFv: # 0x8020b7cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020b824
    lis     r3, 0x803e
    subi    r0, r3, 0x6e88
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b814
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8020b814:
    extsh.  r0, r31
    ble-    branch_0x8020b824
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020b824:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__21TMareJellyFishManagerFv
__dt__21TMareJellyFishManagerFv: # 0x8020b840
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020b8a8
    lis     r3, 0x803e
    subi    r0, r3, 0x6d80
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b898
    lis     r3, 0x803e
    subi    r0, r3, 0x6058
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b898
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8020b898:
    extsh.  r0, r31
    ble-    branch_0x8020b8a8
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020b8a8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__16TBoardNpcManagerFv
__dt__16TBoardNpcManagerFv: # 0x8020b8c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020b93c
    lis     r3, 0x803e
    subi    r0, r3, 0x6d50
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b92c
    lis     r3, 0x803e
    subi    r0, r3, 0x6098
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b92c
    lis     r3, 0x803e
    subi    r0, r3, 0x6058
    stw     r0, 0x0(r30)
    beq-    branch_0x8020b92c
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8020b92c:
    extsh.  r0, r31
    ble-    branch_0x8020b93c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020b93c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

