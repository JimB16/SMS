
.globl SMS_MakeMActor__FPCcPCcUlUl
SMS_MakeMActor__FPCcPCcUlUl: # 0x8023e5c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r30, r6, 0x0
    li      r3, 0x4c
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8023e5fc
    mr      r3, r31
    bl      __ct__13MActorAnmDataFv
branch_0x8023e5fc:
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    li      r5, 0x0
    bl      init__13MActorAnmDataFPCcPPCc
    addi    r3, r28, 0x0
    addi    r4, r31, 0x0
    addi    r6, r29, 0x0
    addi    r7, r30, 0x0
    li      r5, 0x1
    bl      SMS_MakeMActorsWithAnmData__FPCcP13MActorAnmDataiUlUl
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    lwz     r3, 0x0(r3)
    mtlr    r0
    blr


.globl SMS_MakeMActorWithAnmData__FPCcP13MActorAnmDataUlUl
SMS_MakeMActorWithAnmData__FPCcP13MActorAnmDataUlUl: # 0x8023e63c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    addi    r30, r6, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x28(sp)
    addi    r28, r4, 0x0
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r30
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r30, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8023e690
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x8023e690:
    addi    r30, r31, 0x0
    li      r3, 0x4
    bl      __nwa__FUl
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    bl      SMS_MakeMActorFromSDLModelData__FP12SDLModelDataP13MActorAnmDataUl
    stw     r3, 0x0(r31)
    lwz     r0, 0x3c(sp)
    lwz     r3, 0x0(r31)
    lwz     r31, 0x34(sp)
    mtlr    r0
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl SMS_MakeMActorsWithAnmData__FPCcP13MActorAnmDataiUlUl
SMS_MakeMActorsWithAnmData__FPCcP13MActorAnmDataiUlUl: # 0x8023e6d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r23, 0x2c(sp)
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    addi    r31, r6, 0x0
    addi    r24, r7, 0x0
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r24
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r28, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8023e724
    addi    r3, r24, 0x0
    addi    r4, r28, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x8023e724:
    addi    r26, r24, 0x0
    slwi    r3, r30, 2
    bl      __nwa__FUl
    addi    r25, r3, 0x0
    li      r24, 0x0
    li      r28, 0x0
    b       branch_0x8023e79c

branch_0x8023e740:
    li      r3, 0xac
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8023e764
    addi    r3, r27, 0x0
    addi    r4, r26, 0x0
    addi    r5, r31, 0x0
    li      r6, 0x1
    bl      __ct__8SDLModelFP12SDLModelDataUlUl
branch_0x8023e764:
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8023e780
    addi    r3, r23, 0x0
    addi    r4, r29, 0x0
    bl      __ct__6MActorFP13MActorAnmData
branch_0x8023e780:
    addi    r3, r23, 0x0
    addi    r4, r27, 0x0
    li      r5, 0x0
    bl      setModel__6MActorFP8J3DModelUl
    stwx    r23, r25, r28
    addi    r24, r24, 0x1
    addi    r28, r28, 0x4
branch_0x8023e79c:
    cmpw    r24, r30
    blt+    branch_0x8023e740
    mr      r3, r25
    lmw     r23, 0x2c(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl SMS_MakeSDLModelData__FPCcUl
SMS_MakeSDLModelData__FPCcUl: # 0x8023e7bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r4
    stw     r30, 0x18(sp)
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r31
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r31, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8023e800
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x8023e800:
    lwz     r0, 0x24(sp)
    mr      r3, r30
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl SMS_MakeMActorFromSDLModelData__FP12SDLModelDataP13MActorAnmDataUl
SMS_MakeMActorFromSDLModelData__FP12SDLModelDataP13MActorAnmDataUl: # 0x8023e81c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    li      r3, 0xac
    stw     r28, 0x18(sp)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x8023e868
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r31, 0x0
    li      r6, 0x1
    bl      __ct__8SDLModelFP12SDLModelDataUlUl
branch_0x8023e868:
    addi    r31, r28, 0x0
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x8023e888
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    bl      __ct__6MActorFP13MActorAnmData
branch_0x8023e888:
    addi    r3, r28, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x0
    bl      setModel__6MActorFP8J3DModelUl
    lwz     r0, 0x2c(sp)
    mr      r3, r28
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr

