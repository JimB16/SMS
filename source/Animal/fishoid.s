
.globl __dt__15TFishoidManagerFv
__dt__15TFishoidManagerFv: # 0x80006b60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80006ba8
    lis     r3, 0x803b
    subi    r0, r3, 0x4958
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x80006ba8
    mr      r3, r30
    bl      __dl__FPv
branch_0x80006ba8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl restoreDrawBuffer__13TEnemyManagerFUl
restoreDrawBuffer__13TEnemyManagerFUl: # 0x80006bc4
    blr


.globl changeDrawBuffer__13TEnemyManagerFUl
changeDrawBuffer__13TEnemyManagerFUl: # 0x80006bc8
    blr


.globl createModelData__15TFishoidManagerFv
createModelData__15TFishoidManagerFv: # 0x80006bcc
    mflr    r0
    lis     r4, 0x8037
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x35c0
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__15TFishoidManagerFPCc
__ct__15TFishoidManagerFPCc: # 0x80006c00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803b
    subi    r0, r3, 0x4958
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createRealoidActor__8TFishoidFP6MActor
createRealoidActor__8TFishoidFP6MActor: # 0x80006c3c
    mflr    r0
    li      r3, 0xa8
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80006cd0
    stw     r30, 0x10(sp)
    mr      r3, r30
    subi    r4, rtoc, 0x7f98
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803b
    subi    r3, r3, 0x48e4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, 0x803b
    stw     r0, 0x20(r30)
    li      r5, 0x0
    subi    r3, r3, 0x4548
    stw     r5, 0x68(r30)
    addi    r0, r3, 0x24
    stw     r5, 0x6c(r30)
    lwz     r4, 0x10(sp)
    stw     r3, 0x0(r4)
    addi    r3, r4, 0x78
    stw     r0, 0x20(r4)
    stw     r31, 0x70(r4)
    stw     r5, 0x74(r4)
    bl      __ct__Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f__Fv
    lis     r3, 0x803b
    subi    r3, r3, 0x4718
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x80006cd0:
    lwz     r0, 0x24(sp)
    mr      r3, r30
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __dt__13TRealoidActorFv
__dt__13TRealoidActorFv: # 0x80006cec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80006d6c
    lis     r3, 0x803b
    subi    r3, r3, 0x4548
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80006d5c
    lis     r3, 0x803b
    subi    r3, r3, 0x48e4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80006d5c
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80006d5c:
    extsh.  r0, r31
    ble-    branch_0x80006d6c
    mr      r3, r30
    bl      __dl__FPv
branch_0x80006d6c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f__Fv
__ct__Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f__Fv: # 0x80006d88
    blr


.globl __dt__10TTakeActorFv
__dt__10TTakeActorFv: # 0x80006d8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80006df4
    lis     r3, 0x803b
    subi    r3, r3, 0x48e4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80006de4
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80006de4:
    extsh.  r0, r31
    ble-    branch_0x80006df4
    mr      r3, r30
    bl      __dl__FPv
branch_0x80006df4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9THitActorFv
__dt__9THitActorFv: # 0x80006e10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80006e60
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
    extsh.  r0, r31
    ble-    branch_0x80006e60
    mr      r3, r30
    bl      __dl__FPv
branch_0x80006e60:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__8TFishoidFR20JSUMemoryInputStream
load__8TFishoidFR20JSUMemoryInputStream: # 0x80006e7c
    mflr    r0
    li      r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stw     r31, 0xcc(sp)
    stw     r30, 0xc8(sp)
    mr      r30, r3
    stw     r29, 0xc4(sp)
    stw     r28, 0xc0(sp)
    addi    r28, r4, 0x0
    lwz     r0, 0x158(r3)
    lis     r3, 0x8037
    slwi    r4, r0, 2
    addi    r0, r3, 0x35b0
    add     r3, r0, r4
    lwz     r5, 0x0(r3)
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    bl      loadDefault__8TRealoidFR20JSUMemoryInputStreamPCci
    addi    r3, r28, 0x0
    addi    r4, sp, 0xac
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r3, 0xac(sp)
    subi    r4, rtoc, 0x7f90
    bl      newAndRegisterObjByEventID__18TMapObjBaseManagerFUlPCc
    stw     r3, 0x15c(r30)
    lwz     r3, 0x15c(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80006f24
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x80006f0c
    li      r0, 0x1
    b       branch_0x80006f10

branch_0x80006f0c:
    li      r0, 0x0
branch_0x80006f10:
    clrlwi. r0, r0, 24
    beq-    branch_0x80006f24
    lwz     r3, gpItemManager(r13)
    bl      newAndRegisterCoinReal__12TItemManagerFv
    stw     r3, 0x15c(r30)
branch_0x80006f24:
    lfs     f0, -0x7f8c(rtoc)
    lwz     r3, 0x150(r30)
    stfs    f0, 0x20(r3)
    lfs     f0, -0x7f88(rtoc)
    lwz     r3, 0x150(r30)
    stfs    f0, 0x24(r3)
    lfs     f0, -0x7f84(rtoc)
    lwz     r3, 0x150(r30)
    stfs    f0, 0x28(r3)
    lfs     f1, -0x7f80(rtoc)
    lwz     r3, 0x150(r30)
    stfs    f1, 0x2c(r3)
    lfs     f0, -0x7f7c(rtoc)
    lwz     r3, 0x150(r30)
    stfs    f0, 0x30(r3)
    lwz     r3, 0x150(r30)
    stfs    f1, 0x34(r3)
    lwz     r3, MarioHitActor(r13)
    lfs     f0, -0x7f78(rtoc)
    stw     r3, 0xb0(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0xb4(sp)
    stfs    f0, 0xb8(sp)
    stfs    f0, 0xbc(sp)
    beq-    branch_0x80006fa0
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0xb4(sp)
    stfs    f1, 0xb8(sp)
    stfs    f2, 0xbc(sp)
branch_0x80006fa0:
    lwz     r4, 0x150(r30)
    lis     r3, 0x8037
    lwz     r0, 0xb0(sp)
    addi    r28, r3, 0x35fc
    li      r31, 0x0
    stw     r0, 0x5c(r4)
    li      r29, 0x0
    lwz     r3, 0xb4(sp)
    lwz     r0, 0xb8(sp)
    stw     r3, 0x60(r4)
    stw     r0, 0x64(r4)
    lwz     r0, 0xbc(sp)
    stw     r0, 0x68(r4)
    lfs     f0, -0x7f74(rtoc)
    lwz     r3, 0x150(r30)
    stfs    f0, 0x6c(r3)
    lfs     f0, -0x7f70(rtoc)
    lwz     r3, 0x150(r30)
    stfs    f0, 0x70(r3)
    lwz     r3, 0x150(r30)
    lwz     r0, 0x1c(r3)
    ori     r0, r0, 0x2
    stw     r0, 0x1c(r3)
    b       branch_0x8000701c

branch_0x80007000:
    lwz     r3, 0x154(r30)
    mr      r4, r28
    lwzx    r3, r3, r29
    lwz     r3, 0x70(r3)
    bl      setBck__6MActorFPCc
    addi    r31, r31, 0x1
    addi    r29, r29, 0x4
branch_0x8000701c:
    lwz     r3, 0x150(r30)
    lwz     r3, 0x10(r3)
    cmpw    r31, r3
    blt+    branch_0x80007000
    lwz     r0, 0x15c(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80007084
    subi    r0, r3, 0x1
    lwz     r3, 0x154(r30)
    slwi    r0, r0, 2
    lwzx    r28, r3, r0
    lwz     r0, 0x74(r28)
    ori     r0, r0, 0x2
    stw     r0, 0x74(r28)
    lwz     r3, 0x15c(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x15c(r30)
    lwz     r3, 0x10(r28)
    lwz     r0, 0x14(r28)
    stw     r3, 0x10(r4)
    stw     r0, 0x14(r4)
    lwz     r0, 0x18(r28)
    stw     r0, 0x18(r4)
branch_0x80007084:
    lwz     r0, 0xd4(sp)
    lwz     r31, 0xcc(sp)
    lwz     r30, 0xc8(sp)
    mtlr    r0
    lwz     r29, 0xc4(sp)
    lwz     r28, 0xc0(sp)
    addi    sp, sp, 0xd0
    blr


.globl init__8TFishoidFP12TLiveManager
init__8TFishoidFP12TLiveManager: # 0x800070a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r4, 0x70(r3)
    mr      r4, r31
    lwz     r3, 0x70(r3)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    lbz     r0, -0x72c0(r13)
    extsb.  r0, r0
    bne-    branch_0x8000710c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x72bc(r13)
    subi    r0, r3, 0x4904
    lis     r4, 0x8000
    stw     r0, -0x72bc(r13)
    lis     r3, 0x803f
    subi    r5, r3, 0x68b0
    addi    r4, r4, 0x7170
    subi    r3, r13, 0x72bc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x72c0(r13)
branch_0x8000710c:
    lwz     r8, 0x8c(r31)
    li      r7, 0x0
    subi    r0, r13, 0x72bc
    stw     r7, 0x8(r8)
    addi    r3, r31, 0x0
    li      r4, 0x0
    stw     r7, 0x20(r8)
    li      r5, 0x1
    li      r6, 0x0
    stw     r0, 0x14(r8)
    stw     r0, 0x18(r8)
    stw     r7, 0x1c(r8)
    lfs     f1, -0x7f78(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    fmr     f4, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__31TNerveWaitForever_10TLiveActor_Fv
__dt__31TNerveWaitForever_10TLiveActor_Fv: # 0x80007170
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800071b4
    lis     r3, 0x803b
    subi    r0, r3, 0x4904
    stw     r0, 0x0(r31)
    beq-    branch_0x800071a4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800071a4:
    extsh.  r0, r4
    ble-    branch_0x800071b4
    mr      r3, r31
    bl      __dl__FPv
branch_0x800071b4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__24TNerveBase_10TLiveActor_Fv
__dt__24TNerveBase_10TLiveActor_Fv: # 0x800071cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80007200
    lis     r3, 0x803b
    subi    r3, r3, 0x48f4
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x80007200
    mr      r3, r31
    bl      __dl__FPv
branch_0x80007200:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__8TFishoidFUlPQ26JDrama9TGraphics
perform__8TFishoidFUlPQ26JDrama9TGraphics: # 0x80007218
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stmw    r26, 0xa0(sp)
    mr      r30, r3
    addi    r31, r4, 0x0
    addi    r26, r5, 0x0
    lwz     r3, 0x150(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    rlwinm. r0, r31, 0, 30, 30
    beq-    branch_0x8000729c
    addi    r3, r30, 0x0
    addi    r4, r26, 0x0
    bl      clipBoids__8TRealoidFPQ26JDrama9TGraphics
    li      r27, 0x0
    addi    r28, r27, 0x0
    li      r29, 0x0
    b       branch_0x8000728c

branch_0x8000726c:
    lwz     r0, 0x14(r3)
    lwz     r3, 0x154(r30)
    add     r4, r0, r28
    lwzx    r3, r3, r29
    bl      calcRootMatrix__13TRealoidActorFP5TBoid
    addi    r27, r27, 0x1
    addi    r29, r29, 0x4
    addi    r28, r28, 0x50
branch_0x8000728c:
    lwz     r3, 0x150(r30)
    lwz     r0, 0x10(r3)
    cmpw    r27, r0
    blt+    branch_0x8000726c
branch_0x8000729c:
    li      r28, 0x0
    li      r29, 0x0
    b       branch_0x800072d0

branch_0x800072a8:
    lwz     r3, 0x154(r30)
    addi    r4, r31, 0x0
    addi    r5, r26, 0x0
    lwzx    r3, r3, r29
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r28, r28, 0x1
    addi    r29, r29, 0x4
branch_0x800072d0:
    lwz     r3, 0x150(r30)
    lwz     r0, 0x10(r3)
    cmpw    r28, r0
    blt+    branch_0x800072a8
    lfs     f0, -0x7f78(rtoc)
    li      r6, 0x0
    li      r3, 0x0
    b       branch_0x80007340

branch_0x800072f0:
    lwz     r0, 0x14(r5)
    add     r5, r0, r3
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x8c(sp)
    stw     r0, 0x90(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x94(sp)
    lfs     f1, 0x90(sp)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80007320
    stfs    f0, 0x90(sp)
branch_0x80007320:
    lwz     r4, 0x8c(sp)
    addi    r6, r6, 0x1
    lwz     r0, 0x90(sp)
    addi    r3, r3, 0x50
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r0, 0x94(sp)
    stw     r0, 0x8(r5)
branch_0x80007340:
    lwz     r5, 0x150(r30)
    lwz     r4, 0x10(r5)
    cmpw    r6, r4
    blt+    branch_0x800072f0
    lwz     r6, 0x15c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x8000738c
    clrlwi. r0, r31, 31
    beq-    branch_0x8000738c
    subi    r0, r4, 0x1
    lwz     r3, 0x14(r5)
    mulli   r0, r0, 0x50
    add     r4, r3, r0
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x10(r6)
    stw     r0, 0x14(r6)
    lwz     r0, 0x8(r4)
    stw     r0, 0x18(r6)
branch_0x8000738c:
    lmw     r26, 0xa0(sp)
    lwz     r0, 0xbc(sp)
    addi    sp, sp, 0xb8
    mtlr    r0
    blr


.globl __ct__8TFishoidFiPCc
__ct__8TFishoidFiPCc: # 0x800073a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    addi    r4, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803b
    subi    r3, r3, 0x4660
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, 0x803b
    stw     r0, 0x20(r30)
    li      r6, 0x0
    subi    r4, r3, 0x4830
    stw     r6, 0x150(r30)
    addi    r0, r4, 0x24
    addi    r3, r30, 0x0
    lwz     r5, 0xf0(r30)
    ori     r5, r5, 0x38
    stw     r5, 0xf0(r30)
    stw     r4, 0x0(r30)
    stw     r0, 0x20(r30)
    stw     r31, 0x158(r30)
    stw     r6, 0x15c(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__8TRealoidFv
__dt__8TRealoidFv: # 0x80007424
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80007474
    lis     r3, 0x803b
    subi    r3, r3, 0x4660
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x80007474
    mr      r3, r30
    bl      __dl__FPv
branch_0x80007474:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl init__5TFishFv
init__5TFishFv: # 0x80007490
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    blr


.globl perform__8TRealoidFUlPQ26JDrama9TGraphics
perform__8TRealoidFUlPQ26JDrama9TGraphics: # 0x800074a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r26, 0x80(sp)
    mr      r28, r3
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    lwz     r3, 0x150(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    rlwinm. r0, r29, 0, 30, 30
    beq-    branch_0x800075c0
    lwz     r3, gpCamera(r13)
    lfs     f3, 0xe8(r30)
    lfs     f2, 0x4c(r3)
    lfs     f1, 0x48(r3)
    lfs     f4, -0x7f6c(rtoc)
    bl      SetViewFrustumClipCheckPerspective__Fffff
    li      r31, 0x0
    addi    r26, r31, 0x0
    li      r27, 0x0
    b       branch_0x80007570

branch_0x80007500:
    lwz     r0, 0x14(r3)
    mr      r3, r30
    lfs     f1, -0x7f68(rtoc)
    addi    r4, sp, 0x74
    add     r6, r0, r26
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x74(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x7c(sp)
    bl      ViewFrustumClipCheck__FPQ26JDrama9TGraphicsP3Vecf
    cmpwi   r3, 0x0
    beq-    branch_0x80007550
    lwz     r3, 0x154(r28)
    lwzx    r3, r3, r27
    lwz     r0, 0x74(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x74(r3)
    b       branch_0x80007564

branch_0x80007550:
    lwz     r3, 0x154(r28)
    lwzx    r3, r3, r27
    lwz     r0, 0x74(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x74(r3)
branch_0x80007564:
    addi    r31, r31, 0x1
    addi    r27, r27, 0x4
    addi    r26, r26, 0x50
branch_0x80007570:
    lwz     r3, 0x150(r28)
    lwz     r0, 0x10(r3)
    cmpw    r31, r0
    blt+    branch_0x80007500
    li      r26, 0x0
    li      r31, 0x0
    li      r27, 0x0
    b       branch_0x800075b0

branch_0x80007590:
    lwz     r0, 0x14(r3)
    lwz     r3, 0x154(r28)
    add     r4, r0, r27
    lwzx    r3, r3, r31
    bl      calcRootMatrix__13TRealoidActorFP5TBoid
    addi    r26, r26, 0x1
    addi    r31, r31, 0x4
    addi    r27, r27, 0x50
branch_0x800075b0:
    lwz     r3, 0x150(r28)
    lwz     r0, 0x10(r3)
    cmpw    r26, r0
    blt+    branch_0x80007590
branch_0x800075c0:
    li      r26, 0x0
    li      r31, 0x0
    b       branch_0x800075f4

branch_0x800075cc:
    lwz     r3, 0x154(r28)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    lwzx    r3, r3, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r26, r26, 0x1
    addi    r31, r31, 0x4
branch_0x800075f4:
    lwz     r3, 0x150(r28)
    lwz     r0, 0x10(r3)
    cmpw    r26, r0
    blt+    branch_0x800075cc
    lmw     r26, 0x80(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl clipBoids__8TRealoidFPQ26JDrama9TGraphics
clipBoids__8TRealoidFPQ26JDrama9TGraphics: # 0x80007618
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r27, 0x5c(sp)
    mr      r30, r4
    mr      r29, r3
    lwz     r5, gpCamera(r13)
    lfs     f3, 0xe8(r4)
    lfs     f2, 0x4c(r5)
    lfs     f1, 0x48(r5)
    lfs     f4, -0x7f6c(rtoc)
    bl      SetViewFrustumClipCheckPerspective__Fffff
    li      r31, 0x0
    li      r28, 0x0
    li      r27, 0x0
    b       branch_0x800076c8

branch_0x80007658:
    lwz     r0, 0x14(r3)
    mr      r3, r30
    lfs     f1, -0x7f68(rtoc)
    addi    r4, sp, 0x44
    add     r6, r0, r27
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x4c(sp)
    bl      ViewFrustumClipCheck__FPQ26JDrama9TGraphicsP3Vecf
    cmpwi   r3, 0x0
    beq-    branch_0x800076a8
    lwz     r3, 0x154(r29)
    lwzx    r3, r3, r28
    lwz     r0, 0x74(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x74(r3)
    b       branch_0x800076bc

branch_0x800076a8:
    lwz     r3, 0x154(r29)
    lwzx    r3, r3, r28
    lwz     r0, 0x74(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x74(r3)
branch_0x800076bc:
    addi    r31, r31, 0x1
    addi    r28, r28, 0x4
    addi    r27, r27, 0x50
branch_0x800076c8:
    lwz     r3, 0x150(r29)
    lwz     r0, 0x10(r3)
    cmpw    r31, r0
    blt+    branch_0x80007658
    lmw     r27, 0x5c(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl loadDefault__8TRealoidFR20JSUMemoryInputStreamPCci
loadDefault__8TRealoidFR20JSUMemoryInputStreamPCci: # 0x800076ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stmw    r26, 0x58(sp)
    addi    r27, r3, 0x0
    addi    r29, r4, 0x0
    addi    r28, r5, 0x0
    addi    r26, r6, 0x0
    bl      load__11TSpineEnemyFR20JSUMemoryInputStream
    addi    r3, r29, 0x0
    addi    r4, sp, 0x54
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80007748
    lwz     r0, 0x54(sp)
    mr      r3, r29
    lwz     r4, 0x70(r27)
    add     r5, r0, r26
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x80007748:
    stw     r29, 0x78(r27)
    li      r3, 0x80
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x80007770
    lis     r3, 0x8037
    lwz     r4, 0x54(sp)
    addi    r5, r3, 0x3608
    addi    r3, r26, 0x0
    bl      __ct__11TBoidLeaderFiPCc
branch_0x80007770:
    stw     r26, 0x150(r27)
    li      r31, 0x0
    addi    r5, r27, 0x10
    lwz     r4, 0x150(r27)
    stw     r31, 0x34(sp)
    lwz     r3, 0x10(r27)
    lwz     r0, 0x14(r27)
    stw     r3, 0x38(sp)
    stw     r0, 0x3c(sp)
    lwz     r0, 0x18(r27)
    stw     r0, 0x40(sp)
    lwz     r0, 0x34(sp)
    stw     r0, 0x38(r4)
    lwz     r3, 0x38(sp)
    lwz     r0, 0x3c(sp)
    stw     r3, 0x3c(r4)
    stw     r0, 0x40(r4)
    lwz     r0, 0x40(sp)
    stw     r0, 0x44(r4)
    lwz     r4, 0x124(r27)
    lwz     r3, 0x150(r27)
    lwz     r4, 0x0(r4)
    bl      setGraph__11TBoidLeaderFP9TGraphWebRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x54(sp)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x154(r27)
    li      r29, 0x0
    li      r26, 0x0
    lwz     r30, 0x78(r27)
    lwz     r3, 0x10(r27)
    lwz     r0, 0x14(r27)
    lfs     f31, -0x7f64(rtoc)
    stw     r3, 0x48(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x18(r27)
    stw     r0, 0x50(sp)
    b       branch_0x80007874

branch_0x80007808:
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x3
    bl      createMActor__13TMActorKeeperFPCcUl
    lwz     r6, 0x150(r27)
    mr      r4, r3
    lwz     r5, 0x48(sp)
    addi    r3, r27, 0x0
    lwz     r6, 0x14(r6)
    lwz     r0, 0x4c(sp)
    add     r6, r6, r31
    stw     r5, 0x0(r6)
    stw     r0, 0x4(r6)
    lwz     r0, 0x50(sp)
    stw     r0, 0x8(r6)
    lwz     r12, 0x0(r27)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x154(r27)
    addi    r29, r29, 0x1
    addi    r31, r31, 0x50
    stwx    r3, r4, r26
    addi    r26, r26, 0x4
    lfs     f0, 0x4c(sp)
    fadds   f0, f0, f31
    stfs    f0, 0x4c(sp)
branch_0x80007874:
    lwz     r0, 0x54(sp)
    cmpw    r29, r0
    blt+    branch_0x80007808
    lmw     r26, 0x58(sp)
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl __ct__8TRealoidFPCc
__ct__8TRealoidFPCc: # 0x80007898
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803b
    subi    r3, r3, 0x4660
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x150(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x38
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getTakingMtx__13TRealoidActorFv
getTakingMtx__13TRealoidActorFv: # 0x800078f0
    addi    r3, r3, 0x78
    blr


.globl checkHitActors__13TRealoidActorFv
checkHitActors__13TRealoidActorFv: # 0x800078f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    mr      r28, r3
    lwz     r0, 0x74(r3)
    rlwinm. r0, r0, 0, 29, 30
    bne-    branch_0x80007970
    lhz     r0, 0x48(r28)
    lis     r3, 0x8000
    lwz     r4, 0x44(r28)
    addi    r31, r3, 0x1
    slwi    r0, r0, 2
    addi    r29, r4, 0x0
    add     r30, r4, r0
    b       branch_0x80007968

branch_0x80007944:
    lwz     r3, 0x0(r29)
    lwz     r0, 0x4c(r3)
    cmpw    r0, r31
    beq-    branch_0x80007958
    b       branch_0x80007964

branch_0x80007958:
    addi    r3, r28, 0x0
    li      r4, MARIOMSG_HURT
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x80007964:
    addi    r29, r29, 0x4
branch_0x80007968:
    cmplw   r29, r30
    bne+    branch_0x80007944
branch_0x80007970:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl calcRootMatrix__13TRealoidActorFP5TBoid
calcRootMatrix__13TRealoidActorFP5TBoid: # 0x80007990
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stw     r31, 0xcc(sp)
    addi    r31, r4, 0x0
    stw     r30, 0xc8(sp)
    mr      r30, r3
    lwz     r0, 0x74(r3)
    rlwinm. r0, r0, 0, 29, 30
    bne-    branch_0x80007bf0
    lwz     r3, 0x0(r31)
    lwz     r0, 0x4(r31)
    stw     r3, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x8(r31)
    stw     r0, 0x18(r30)
    lwz     r3, 0x68(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80007a44
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xc(r3)
    stfs    f0, 0x88(sp)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x8c(sp)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x90(sp)
    lwz     r3, 0x88(sp)
    lwz     r0, 0x8c(sp)
    stw     r3, 0x0(r31)
    stw     r0, 0x4(r31)
    lwz     r0, 0x90(sp)
    stw     r0, 0x8(r31)
    lwz     r3, 0x68(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x70(r30)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    b       branch_0x80007bf0

branch_0x80007a44:
    lwz     r5, 0x0(r31)
    addi    r3, sp, 0x94
    lwz     r0, 0x4(r31)
    mr      r4, r3
    stw     r5, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x8(r31)
    stw     r0, 0x18(r30)
    lwz     r5, 0x0(r31)
    lwz     r0, 0x4(r31)
    lfs     f1, -0x7f78(rtoc)
    stw     r5, 0xbc(sp)
    lfs     f0, -0x7f84(rtoc)
    stw     r0, 0xc0(sp)
    lwz     r0, 0x8(r31)
    stw     r0, 0xc4(sp)
    lwz     r5, 0x70(r30)
    lwz     r5, 0x4(r5)
    stfs    f1, 0xac(sp)
    addi    r30, r5, 0x20
    stfs    f0, 0xb0(sp)
    stfs    f1, 0xb4(sp)
    lwz     r5, 0x18(r31)
    lwz     r0, 0x1c(r31)
    lfs     f7, 0xac(sp)
    stw     r5, 0xa0(sp)
    stw     r0, 0xa4(sp)
    lwz     r0, 0x20(r31)
    stw     r0, 0xa8(sp)
    lfs     f3, 0xa8(sp)
    lfs     f1, 0xb4(sp)
    lfs     f6, 0xa4(sp)
    fmuls   f0, f7, f3
    lfs     f5, 0xb0(sp)
    fmuls   f2, f1, f6
    lfs     f4, 0xa0(sp)
    fmsubs  f1, f1, f4, f0
    fmsubs  f2, f5, f3, f2
    fmuls   f0, f5, f4
    stfs    f2, 0x94(sp)
    fmsubs  f0, f7, f6, f0
    stfs    f1, 0x98(sp)
    stfs    f0, 0x9c(sp)
    bl      PSVECNormalize
    lfs     f3, 0xa8(sp)
    addi    r3, sp, 0xac
    lfs     f6, 0x98(sp)
    mr      r4, r3
    lfs     f2, 0x9c(sp)
    lfs     f7, 0xa0(sp)
    fmuls   f0, f3, f6
    lfs     f5, 0xa4(sp)
    lfs     f4, 0x94(sp)
    fmuls   f1, f7, f2
    fmsubs  f2, f5, f2, f0
    fmuls   f0, f5, f4
    fmsubs  f1, f3, f4, f1
    stfs    f2, 0xac(sp)
    fmsubs  f0, f7, f6, f0
    stfs    f1, 0xb0(sp)
    stfs    f0, 0xb4(sp)
    bl      PSVECNormalize
    lfs     f3, 0x9c(sp)
    addi    r3, sp, 0xa0
    lfs     f6, 0xb0(sp)
    mr      r4, r3
    lfs     f2, 0xb4(sp)
    lfs     f7, 0x94(sp)
    fmuls   f0, f3, f6
    lfs     f5, 0x98(sp)
    lfs     f4, 0xac(sp)
    fmuls   f1, f7, f2
    fmsubs  f2, f5, f2, f0
    fmuls   f0, f5, f4
    fmsubs  f1, f3, f4, f1
    stfs    f2, 0xa0(sp)
    fmsubs  f0, f7, f6, f0
    stfs    f1, 0xa4(sp)
    stfs    f0, 0xa8(sp)
    bl      PSVECNormalize
    lfs     f0, 0xa0(sp)
    fneg    f0, f0
    stfs    f0, 0x0(r30)
    lfs     f0, 0xa4(sp)
    fneg    f0, f0
    stfs    f0, 0x10(r30)
    lfs     f0, 0xa8(sp)
    fneg    f0, f0
    stfs    f0, 0x20(r30)
    lfs     f0, 0xac(sp)
    stfs    f0, 0x4(r30)
    lfs     f0, 0xb0(sp)
    stfs    f0, 0x14(r30)
    lfs     f0, 0xb4(sp)
    stfs    f0, 0x24(r30)
    lfs     f0, 0x94(sp)
    stfs    f0, 0x8(r30)
    lfs     f0, 0x98(sp)
    stfs    f0, 0x18(r30)
    lfs     f0, 0x9c(sp)
    stfs    f0, 0x28(r30)
    lfs     f0, 0xbc(sp)
    stfs    f0, 0xc(r30)
    lfs     f0, 0xc0(sp)
    stfs    f0, 0x1c(r30)
    lfs     f0, 0xc4(sp)
    stfs    f0, 0x2c(r30)
branch_0x80007bf0:
    lwz     r0, 0xd4(sp)
    lwz     r31, 0xcc(sp)
    lwz     r30, 0xc8(sp)
    mtlr    r0
    addi    sp, sp, 0xd0
    blr


.globl perform__13TRealoidActorFUlPQ26JDrama9TGraphics
perform__13TRealoidActorFUlPQ26JDrama9TGraphics: # 0x80007c08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lwz     r0, 0x74(r3)
    rlwinm. r0, r0, 0, 29, 30
    bne-    branch_0x80007c64
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    lwz     r0, 0x74(r29)
    clrlwi. r0, r0, 31
    bne-    branch_0x80007c64
    lwz     r3, 0x70(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x80007c64:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__13TRealoidActorFP6MActor
__ct__13TRealoidActorFP6MActor: # 0x80007c80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    subi    r4, rtoc, 0x7f98
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803b
    subi    r3, r3, 0x48e4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, 0x803b
    stw     r0, 0x20(r30)
    li      r5, 0x0
    subi    r4, r3, 0x4548
    stw     r5, 0x68(r30)
    addi    r0, r4, 0x24
    addi    r3, r30, 0x0
    stw     r5, 0x6c(r30)
    stw     r4, 0x0(r30)
    stw     r0, 0x20(r30)
    stw     r31, 0x70(r30)
    stw     r5, 0x74(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl ensureTakeSituation__10TTakeActorFv
ensureTakeSituation__10TTakeActorFv: # 0x80007cfc
    lwz     r4, 0x6c(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80007d1c
    lwz     r0, 0x68(r4)
    cmplw   r0, r3
    beq-    branch_0x80007d1c
    li      r0, 0x0
    stw     r0, 0x6c(r3)
branch_0x80007d1c:
    lwz     r4, 0x68(r3)
    cmplwi  r4, 0x0
    beqlr-    

    lwz     r0, 0x6c(r4)
    cmplw   r0, r3
    beqlr-    

    li      r0, 0x0
    stw     r0, 0x68(r3)
    blr


.globl moveRequest__10TTakeActorFRCQ29JGeometry8TVec3_f_
moveRequest__10TTakeActorFRCQ29JGeometry8TVec3_f_: # 0x80007d40
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r5, 0x10(r3)
    stw     r0, 0x14(r3)
    lwz     r0, 0x8(r4)
    stw     r0, 0x18(r3)
    li      r3, 0x1
    blr


.globl getRadiusAtY__10TTakeActorCFf
getRadiusAtY__10TTakeActorCFf: # 0x80007d60
    lfs     f1, 0x58(r3)
    blr


.globl receiveMessage__9THitActorFP9THitActorUl
receiveMessage__9THitActorFP9THitActorUl: # 0x80007d68
    li      r3, 0x0
    blr


.globl getType__Q26JDrama6TActorCFv
getType__Q26JDrama6TActorCFv: # 0x80007d70
    li      r3, 0x1
    blr


.globl __dt__8TFishoidFv
__dt__8TFishoidFv: # 0x80007d78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80007de0
    lis     r3, 0x803b
    subi    r3, r3, 0x4830
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80007dd0
    lis     r3, 0x803b
    subi    r3, r3, 0x4660
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x80007dd0:
    extsh.  r0, r31
    ble-    branch_0x80007de0
    mr      r3, r30
    bl      __dl__FPv
branch_0x80007de0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getPhaseShift__11TSpineEnemyCFv
getPhaseShift__11TSpineEnemyCFv: # 0x80007dfc
    lfs     f1, -0x7f78(rtoc)
    blr


.globl isReachedToGoal__11TSpineEnemyCFv
isReachedToGoal__11TSpineEnemyCFv: # 0x80007e04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    lwz     r4, 0x104(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80007e24
    addi    r5, r4, 0x10
    b       branch_0x80007e28

branch_0x80007e24:
    addi    r5, r3, 0x108
branch_0x80007e28:
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x20(sp)
    stw     r0, 0x24(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x28(sp)
    lfs     f1, 0x20(sp)
    lfs     f0, 0x10(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x20(sp)
    lfs     f1, 0x24(sp)
    lfs     f0, 0x14(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x24(sp)
    lfs     f1, 0x28(sp)
    lfs     f0, 0x18(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x28(sp)
    lfs     f1, 0x20(sp)
    lfs     f0, 0x24(sp)
    lfs     f2, 0x28(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x7f68(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80007ea8
    li      r3, 0x1
    b       branch_0x80007eac

branch_0x80007ea8:
    li      r3, 0x0
branch_0x80007eac:
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __dt__5TFishFv
__dt__5TFishFv: # 0x80007ebc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80007f3c
    lis     r3, 0x803b
    subi    r3, r3, 0x4718
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80007f2c
    lis     r3, 0x803b
    subi    r3, r3, 0x4548
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80007f2c
    lis     r3, 0x803b
    subi    r3, r3, 0x48e4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__9THitActorFv
branch_0x80007f2c:
    extsh.  r0, r31
    ble-    branch_0x80007f3c
    mr      r3, r30
    bl      __dl__FPv
branch_0x80007f3c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl execute__31TNerveWaitForever_10TLiveActor_CFP24TSpineBase_10TLiveActor_
execute__31TNerveWaitForever_10TLiveActor_CFP24TSpineBase_10TLiveActor_: # 0x80007f58
    li      r3, 0x0
    blr


.globl _32___dt__13TRealoidActorFv
_32___dt__13TRealoidActorFv: # 0x80007f60
    subi    r3, r3, 0x20
    b       __dt__13TRealoidActorFv


.globl _32___dt__8TRealoidFv
_32___dt__8TRealoidFv: # 0x80007f68
    subi    r3, r3, 0x20
    b       __dt__8TRealoidFv


.globl _32___dt__5TFishFv
_32___dt__5TFishFv: # 0x80007f70
    subi    r3, r3, 0x20
    b       __dt__5TFishFv


.globl _32___dt__8TFishoidFv
_32___dt__8TFishoidFv: # 0x80007f78
    subi    r3, r3, 0x20
    b       __dt__8TFishoidFv


.globl _32_JSGSetRotation__Q26JDrama6TActorFRC3Vec
_32_JSGSetRotation__Q26JDrama6TActorFRC3Vec: # 0x80007f80
    subi    r3, r3, 0x20
    b       JSGSetRotation__Q26JDrama6TActorFRC3Vec


.globl _32_JSGGetRotation__Q26JDrama6TActorCFP3Vec
_32_JSGGetRotation__Q26JDrama6TActorCFP3Vec: # 0x80007f88
    subi    r3, r3, 0x20
    b       JSGGetRotation__Q26JDrama6TActorCFP3Vec


.globl _32_JSGSetScaling__Q26JDrama6TActorFRC3Vec
_32_JSGSetScaling__Q26JDrama6TActorFRC3Vec: # 0x80007f90
    subi    r3, r3, 0x20
    b       JSGSetScaling__Q26JDrama6TActorFRC3Vec


.globl _32_JSGGetScaling__Q26JDrama6TActorCFP3Vec
_32_JSGGetScaling__Q26JDrama6TActorCFP3Vec: # 0x80007f98
    subi    r3, r3, 0x20
    b       JSGGetScaling__Q26JDrama6TActorCFP3Vec


.globl _32_JSGSetTranslation__Q26JDrama6TActorFRC3Vec
_32_JSGSetTranslation__Q26JDrama6TActorFRC3Vec: # 0x80007fa0
    subi    r3, r3, 0x20
    b       JSGSetTranslation__Q26JDrama6TActorFRC3Vec


.globl _32_JSGGetTranslation__Q26JDrama6TActorCFP3Vec
_32_JSGGetTranslation__Q26JDrama6TActorCFP3Vec: # 0x80007fa8
    subi    r3, r3, 0x20
    b       JSGGetTranslation__Q26JDrama6TActorCFP3Vec


.globl _32___dt__10TTakeActorFv
_32___dt__10TTakeActorFv: # 0x80007fb0
    subi    r3, r3, 0x20
    b       __dt__10TTakeActorFv
