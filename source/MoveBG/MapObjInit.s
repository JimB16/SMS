
.globl getFlushTime__14TMapObjGeneralCFv
getFlushTime__14TMapObjGeneralCFv: # 0x801b1764
    lwz     r3, -0x7a44(r13)
    blr


.globl initKeyCode__14TMapObjManagerFv
initKeyCode__14TMapObjManagerFv: # 0x801b176c
    mflr    r0
    lis     r3, 0x803d
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    subi    r30, r3, 0x7a80
    stw     r29, 0x14(sp)
    b       branch_0x801b17ac

branch_0x801b1794:
    lwz     r3, 0x0(r3)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r4, 0x0(r29)
    clrlwi  r0, r3, 16
    addi    r31, r31, 0x4
    stw     r0, 0x38(r4)
branch_0x801b17ac:
    add     r29, r30, r31
    lwz     r3, 0x0(r29)
    lwz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    bne+    branch_0x801b1794
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl initMapObj__14TMapObjGeneralFv
initMapObj__14TMapObjGeneralFv: # 0x801b17dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lwz     r3, 0x130(r31)
    lwz     r3, 0x20(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801b1810
    lwz     r3, 0x4(r3)
    lfs     f0, 0x0(r3)
    stfs    f0, 0xcc(r31)
branch_0x801b1810:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


# TMapObjBase::initMapObj((void))
.globl initMapObj__11TMapObjBaseFv
initMapObj__11TMapObjBaseFv: # 0x801b1824
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    stw     r30, 0x80(sp)
    stw     r29, 0x7c(sp)
    lwz     r4, 0x10(r3)
    lwz     r0, 0x14(r31)
    stw     r4, 0x10c(r31)
    stw     r0, 0x110(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x114(r31)
    lwz     r4, 0x30(r31)
    lwz     r0, 0x34(r31)
    stw     r4, 0x118(r31)
    stw     r0, 0x11c(r31)
    lwz     r0, 0x38(r31)
    stw     r0, 0x120(r31)
    lwz     r4, 0x24(r31)
    lwz     r0, 0x28(r31)
    stw     r4, 0x124(r31)
    stw     r0, 0x128(r31)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x12c(r31)
    bl      initActorData__11TMapObjBaseFv
    mr      r3, r31
    bl      initModelData__11TMapObjBaseFv
    mr      r3, r31
    bl      initObjCollisionData__11TMapObjBaseFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x128(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      initBckMoveData__11TMapObjBaseFv
    lwz     r3, 0x130(r31)
    lwz     r29, 0x28(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x801b192c
    lwz     r3, 0x0(r29)
    bl      getGlbResource__13JKRFileLoaderFPCc
    lis     r4, 0x24
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    stw     r3, 0x8(r29)
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b1900
    lwz     r4, 0x8(r29)
    addi    r3, r30, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x801b1900:
    stw     r30, 0xc(r29)
    lwz     r3, 0x8(r29)
    lwz     r4, 0x4(r29)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    clrlwi  r0, r3, 16
    lwz     r3, 0xc(r29)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r0, r3, r0
    stw     r0, 0x10(r29)
branch_0x801b192c:
    mr      r3, r31
    bl      initUnique__11TMapObjBaseFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x134(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801b197c
    lwz     r0, 0x4c(r31)
    rlwinm. r0, r0, 0, 1, 1
    beq-    branch_0x801b1968
    li      r0, 0x1
    b       branch_0x801b196c

branch_0x801b1968:
    li      r0, 0x0
branch_0x801b196c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b197c
    li      r4, 0x2
    bl      setLightType__6MActorFi
branch_0x801b197c:
    lwz     r3, 0x130(r31)
    lfs     f1, -0x2ce0(rtoc)
    lfs     f0, 0x30(r3)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801b199c
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
branch_0x801b199c:
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x801b1aa0
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x84
    bne-    branch_0x801b19c0
    li      r0, 0x1
    b       branch_0x801b19c4

branch_0x801b19c0:
    li      r0, 0x0
branch_0x801b19c4:
    clrlwi. r0, r0, 24
    bne-    branch_0x801b1aa0
    lwz     r4, -0x5db8(r13)
    lis     r3, 0x8039
    addi    r30, r3, 0x424
    lwz     r29, 0x4(r4)
    mr      r3, r30
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x0
    mtlr    r12
    blrl
    lwz     r4, 0x10(r3)
    mr      r3, r31
    lwz     r29, 0x20(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x4(r3)
    li      r4, 0x3
    lwz     r3, 0x0(r29)
    lwz     r6, 0xac(r5)
    lwz     r0, 0x4(r29)
    lwz     r5, 0x4(r6)
    stw     r3, 0x40(r5)
    stw     r0, 0x44(r5)
    lwz     r3, 0x8(r29)
    lwz     r0, 0xc(r29)
    stw     r3, 0x48(r5)
    stw     r0, 0x4c(r5)
    lwz     r3, 0x10(r29)
    lwz     r0, 0x14(r29)
    stw     r3, 0x50(r5)
    stw     r0, 0x54(r5)
    lwz     r3, 0x18(r29)
    lwz     r0, 0x1c(r29)
    stw     r3, 0x58(r5)
    stw     r0, 0x5c(r5)
    lwz     r3, 0x4(r6)
    lwz     r0, 0x5c(r3)
    addi    r5, r3, 0x5c
    addi    r3, r3, 0x40
    add     r0, r29, r0
    subf    r0, r3, r0
    stw     r0, 0x0(r5)
    lwz     r3, 0x4(r6)
    lwz     r0, 0x4c(r3)
    addi    r5, r3, 0x4c
    addi    r3, r3, 0x40
    add     r0, r29, r0
    subf    r0, r3, r0
    stw     r0, 0x0(r5)
    lwz     r3, 0x74(r31)
    bl      setLightType__6MActorFi
branch_0x801b1aa0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    blr


.globl initActorData__11TMapObjBaseFv
initActorData__11TMapObjBaseFv: # 0x801b1ad0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r27, 0x44(sp)
    mr      r31, r3
    li      r30, 0x0
    lwz     r3, 0xf4(r3)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803d
    clrlwi  r27, r3, 16
    subi    r29, r4, 0x7a80
    b       branch_0x801b1b24

branch_0x801b1b00:
    lwz     r0, 0x38(r3)
    cmplw   r27, r0
    bne-    branch_0x801b1b20
    lwz     r3, 0x0(r3)
    lwz     r4, 0xf4(r31)
    bl      strcmp
    cmpwi   r3, 0x0
    beq-    branch_0x801b1b38
branch_0x801b1b20:
    addi    r30, r30, 0x4
branch_0x801b1b24:
    add     r28, r29, r30
    lwz     r3, 0x0(r28)
    lwz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    bne+    branch_0x801b1b00
branch_0x801b1b38:
    lis     r4, 0x8039
    lwz     r3, 0x4(r31)
    addi    r4, r4, 0x43c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b1b58
    lwz     r0, 0xf4(r31)
    stw     r0, 0x4(r31)
branch_0x801b1b58:
    lwz     r0, 0x0(r28)
    stw     r0, 0x130(r31)
    lwz     r3, 0x130(r31)
    lwz     r0, 0x34(r3)
    stw     r0, 0xf8(r31)
    lwz     r4, 0x130(r31)
    lwz     r3, -0x5db8(r13)
    lwz     r29, 0x8(r4)
    lwz     r30, 0x4(r3)
    mr      r3, r29
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r29
    mtlr    r12
    blrl
    stw     r3, 0x70(r31)
    mr      r4, r31
    lwz     r3, 0x70(r31)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    lwz     r3, 0x130(r31)
    lwz     r3, 0x14(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801b1bd0
    lfs     f1, 0x28(r31)
    lfs     f0, 0x8(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x108(r31)
branch_0x801b1bd0:
    lfs     f1, 0x14(r31)
    lfs     f0, 0x108(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r3, 0x130(r31)
    lfs     f0, 0x24(r31)
    lfs     f1, 0x30(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r31)
    lwz     r0, 0xf8(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x801b1c0c
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf0(r31)
branch_0x801b1c0c:
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 11, 11
    beq-    branch_0x801b1c20
    li      r0, 0x2
    stb     r0, 0xe8(r31)
branch_0x801b1c20:
    lmw     r27, 0x44(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl initModelData__11TMapObjBaseFv
initModelData__11TMapObjBaseFv: # 0x801b1c34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    stw     r30, 0x30(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x12c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x801b1cdc
    lwz     r0, 0x74(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801b1cdc
    lwz     r3, gpMap(r13)
    addi    r4, r31, 0x10
    addi    r5, r31, 0xc4
    bl      checkGround__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    lwz     r3, 0xc4(r31)
    lhz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x801b1ca0
    li      r0, 0x1
    b       branch_0x801b1ca4

branch_0x801b1ca0:
    li      r0, 0x0
branch_0x801b1ca4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b1ccc
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 17, 17
    bne-    branch_0x801b1ccc
    lwz     r4, 0x74(r31)
    lwz     r3, -0x62b8(r13)
    lwz     r4, 0x4(r4)
    bl      entryStaticDrawBufferShadow__14TMapObjManagerFP8J3DModel
    b       branch_0x801b1cdc

branch_0x801b1ccc:
    lwz     r4, 0x74(r31)
    lwz     r3, -0x62b8(r13)
    lwz     r4, 0x4(r4)
    bl      entryStaticDrawBufferSun__14TMapObjManagerFP8J3DModel
branch_0x801b1cdc:
    lwz     r3, 0xf8(r31)
    rlwinm. r0, r3, 0, 27, 27
    bne-    branch_0x801b1cf0
    rlwinm. r0, r3, 0, 26, 26
    beq-    branch_0x801b1d4c
branch_0x801b1cf0:
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b1d0c
    lwz     r4, 0x4(r31)
    mr      r3, r30
    bl      __ct__12TMirrorActorFPCc
branch_0x801b1d0c:
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x801b1d34
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    li      r5, 0x1a
    bl      init__12TMirrorActorFP8J3DModelUs
    b       branch_0x801b1d4c

branch_0x801b1d34:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    li      r5, 0x18
    bl      init__12TMirrorActorFP8J3DModelUs
branch_0x801b1d4c:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl makeMActors__11TMapObjBaseFv
makeMActors__11TMapObjBaseFv: # 0x801b1d64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stmw    r24, 0xb8(sp)
    mr      r31, r3
    li      r24, 0x1
    lwz     r3, 0x130(r3)
    lwz     r3, 0x10(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801b1d90
    lhz     r24, 0x2(r3)
branch_0x801b1d90:
    clrlwi. r0, r24, 16
    beq-    branch_0x801b205c
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x801b1db8
    lwz     r4, 0x70(r31)
    addi    r3, r25, 0x0
    addi    r5, r24, 0x0
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x801b1db8:
    stw     r25, 0x78(r31)
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x801b1dd8
    lwz     r3, 0x78(r31)
    lis     r0, 0x1122
    stw     r0, 0x14(r3)
    b       branch_0x801b1de4

branch_0x801b1dd8:
    lwz     r3, 0x78(r31)
    lis     r0, 0x1022
    stw     r0, 0x14(r3)
branch_0x801b1de4:
    lwz     r3, 0x130(r31)
    lwz     r30, 0x10(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x801b1fc0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x130(r12)
    mtlr    r12
    blrl
    lwz     r6, 0x4(r30)
    mr      r5, r3
    lwz     r0, 0x78(r31)
    lwz     r4, 0x0(r6)
    lwz     r28, 0xc(r6)
    mr      r3, r0
    lwz     r25, 0x74(r31)
    bl      createMActor__13TMActorKeeperFPCcUl
    mr      r27, r3
    stw     r27, 0x74(r31)
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x801b1e54
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setLightID__6MActorFs
    lwz     r3, 0x74(r31)
    li      r0, 0x0
    stb     r0, 0x40(r3)
branch_0x801b1e54:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    bl      calc__6MActorFv
    lwz     r3, 0x74(r31)
    bl      viewCalc__6MActorFv
    stw     r25, 0x74(r31)
    li      r28, 0x1
    stw     r27, 0x74(r31)
    b       branch_0x801b1fac

branch_0x801b1e88:
    clrlwi  r0, r28, 16
    lwz     r3, 0x4(r30)
    mulli   r29, r0, 0x14
    addi    r0, r29, 0x10
    lwzx    r0, r3, r0
    cmplwi  r0, 0x0
    beq-    branch_0x801b1eb8
    lwz     r0, 0x80(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801b1eb8
    mr      r3, r31
    bl      initAnmSound__10TLiveActorFv
branch_0x801b1eb8:
    lwz     r3, 0x4(r30)
    lwzx    r0, r3, r29
    cmplwi  r0, 0x0
    beq-    branch_0x801b1fa8
    clrlwi  r24, r28, 16
    mulli   r25, r24, 0x14
    li      r26, 0x0
    addi    r27, r26, 0x0
    b       branch_0x801b1f0c

branch_0x801b1edc:
    lwz     r3, 0x4(r30)
    lwzx    r4, r3, r27
    cmplwi  r4, 0x0
    beq-    branch_0x801b1f04
    lwzx    r3, r25, r3
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b1f04
    li      r0, 0x1
    b       branch_0x801b1f18

branch_0x801b1f04:
    addi    r26, r26, 0x1
    addi    r27, r27, 0x14
branch_0x801b1f0c:
    cmpw    r26, r24
    blt+    branch_0x801b1edc
    li      r0, 0x0
branch_0x801b1f18:
    clrlwi. r0, r0, 24
    bne-    branch_0x801b1fa8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x130(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x4(r30)
    addi    r5, r3, 0x0
    lwz     r6, 0x78(r31)
    add     r7, r0, r29
    lwz     r24, 0x74(r31)
    lwz     r4, 0x0(r7)
    mr      r3, r6
    lwz     r26, 0xc(r7)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x801b1f80
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setLightID__6MActorFs
    lwz     r3, 0x74(r31)
    li      r0, 0x0
    stb     r0, 0x40(r3)
branch_0x801b1f80:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    bl      calc__6MActorFv
    lwz     r3, 0x74(r31)
    bl      viewCalc__6MActorFv
    stw     r24, 0x74(r31)
branch_0x801b1fa8:
    addi    r28, r28, 0x1
branch_0x801b1fac:
    lhz     r0, 0x0(r30)
    clrlwi  r3, r28, 16
    cmplw   r3, r0
    blt+    branch_0x801b1e88
    b       branch_0x801b205c

branch_0x801b1fc0:
    lwz     r6, 0x0(r3)
    addi    r3, sp, 0x74
    crxor   6, 6, 6
    li      r4, 0x40
    subi    r5, rtoc, 0x2cdc
    bl      snprintf
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x130(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x78(r31)
    mr      r5, r3
    lwz     r24, 0x74(r31)
    addi    r4, sp, 0x74
    mr      r3, r0
    bl      createMActor__13TMActorKeeperFPCcUl
    mr      r27, r3
    stw     r27, 0x74(r31)
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x801b2030
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setLightID__6MActorFs
    lwz     r3, 0x74(r31)
    li      r0, 0x0
    stb     r0, 0x40(r3)
branch_0x801b2030:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    bl      calc__6MActorFv
    lwz     r3, 0x74(r31)
    bl      viewCalc__6MActorFv
    stw     r24, 0x74(r31)
    stw     r27, 0x74(r31)
branch_0x801b205c:
    lmw     r24, 0xb8(sp)
    lwz     r0, 0xdc(sp)
    addi    sp, sp, 0xd8
    mtlr    r0
    blr


.globl initMActor__11TMapObjBaseFPCcPCcUl
initMActor__11TMapObjBaseFPCcPCcUl: # 0x801b2070
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    addi    r29, r5, 0x0
    addi    r5, r6, 0x0
    stw     r28, 0x28(sp)
    mr      r28, r3
    lwz     r3, 0x78(r3)
    lwz     r31, 0x74(r28)
    bl      createMActor__13TMActorKeeperFPCcUl
    mr      r30, r3
    stw     r30, 0x74(r28)
    lwz     r0, 0xf8(r28)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x801b20d0
    lwz     r3, 0x74(r28)
    li      r4, 0x0
    bl      setLightID__6MActorFs
    lwz     r3, 0x74(r28)
    li      r0, 0x0
    stb     r0, 0x40(r3)
branch_0x801b20d0:
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r28)
    bl      calc__6MActorFv
    lwz     r3, 0x74(r28)
    bl      viewCalc__6MActorFv
    stw     r31, 0x74(r28)
    mr      r3, r30
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl initBckMoveData__11TMapObjBaseFv
initBckMoveData__11TMapObjBaseFv: # 0x801b211c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    stw     r30, 0x80(sp)
    mr      r30, r3
    lwz     r3, 0x130(r3)
    lwz     r31, 0x2c(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x801b21ec
    lwz     r3, 0x0(r31)
    bl      getGlbResource__13JKRFileLoaderFPCc
    bl      load__20J3DAnmLoaderDataBaseFPCv
    stw     r3, 0x4(r31)
    li      r0, 0x0
    li      r3, 0x14
    lwz     r4, 0x74(r30)
    lwz     r4, 0x4(r4)
    lwz     r4, 0x4(r4)
    lwz     r6, 0x20(r4)
    lwz     r5, 0x4(r6)
    stw     r5, 0x0(r6)
    lwz     r4, 0x20(r4)
    lfs     f0, -0x2cd4(rtoc)
    lwz     r4, 0x0(r4)
    stfs    f0, 0x1c(r4)
    stfs    f0, 0x20(r4)
    stfs    f0, 0x24(r4)
    sth     r0, 0x28(r4)
    sth     r0, 0x2a(r4)
    sth     r0, 0x2c(r4)
    lfs     f0, -0x2ce0(rtoc)
    stfs    f0, 0x30(r4)
    stfs    f0, 0x34(r4)
    stfs    f0, 0x38(r4)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b21d0
    lwz     r4, 0x4(r31)
    lis     r3, 0x803b
    subi    r0, r3, 0x2eac
    lha     r4, 0x2(r4)
    mr      r3, r30
    stw     r0, 0x0(r30)
    bl      init__12J3DFrameCtrlFs
branch_0x801b21d0:
    stw     r30, 0x8(r31)
    li      r0, 0x2
    lwz     r3, 0x8(r31)
    stb     r0, 0x4(r3)
    bl      SMSGetAnmFrameRate__Fv
    lwz     r3, 0x8(r31)
    stfs    f1, 0xc(r3)
branch_0x801b21ec:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    addi    sp, sp, 0x88
    blr


.globl initObjCollisionData__11TMapObjBaseFv
initObjCollisionData__11TMapObjBaseFv: # 0x801b2204
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    lwz     r31, 0x130(r3)
    lwz     r0, 0x14(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801b22f4
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x15c(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x2ce0(rtoc)
    mr      r5, r3
    lwz     r6, 0x14(r31)
    mr      r3, r30
    fmr     f2, f1
    fmr     f3, f1
    lwz     r4, 0x4(r31)
    fmr     f4, f1
    lwz     r6, 0x4(r6)
    bl      initHitActor__9THitActorFUlUsiffff
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x0
    lwz     r12, 0x118(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x24(r30)
    lfs     f1, 0x2c(r30)
    lwz     r3, 0x130(r30)
    fcmpo   cr0, f0, f1
    lwz     r3, 0x14(r3)
    lwz     r3, 0xc(r3)
    ble-    branch_0x801b22a4
    fmr     f2, f0
    b       branch_0x801b22a8

branch_0x801b22a4:
    fmr     f2, f1
branch_0x801b22a8:
    lfs     f1, 0x8(r3)
    lfs     f0, -0x2ce0(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801b22d4
    fmuls   f0, f1, f2
    stfs    f0, 0xbc(r30)
    lfs     f1, 0xc(r3)
    lfs     f0, 0x28(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0xc0(r30)
    b       branch_0x801b2324

branch_0x801b22d4:
    lfs     f0, 0x0(r3)
    fmuls   f0, f0, f2
    stfs    f0, 0xbc(r30)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x28(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0xc0(r30)
    b       branch_0x801b2324

branch_0x801b22f4:
    lfs     f1, -0x2ce0(rtoc)
    addi    r3, r30, 0x0
    li      r4, 0x0
    fmr     f2, f1
    li      r5, 0x1
    fmr     f3, f1
    li      r6, 0x0
    fmr     f4, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lfs     f0, -0x2ce0(rtoc)
    stfs    f0, 0xbc(r30)
    stfs    f0, 0xc0(r30)
branch_0x801b2324:
    lfs     f1, -0x2ce0(rtoc)
    lfs     f0, 0x50(r30)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801b2340
    lfs     f0, 0x54(r30)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801b234c
branch_0x801b2340:
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x2
    stw     r0, 0x64(r30)
branch_0x801b234c:
    lfs     f1, -0x2ce0(rtoc)
    lfs     f0, 0x58(r30)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801b2368
    lfs     f0, 0x5c(r30)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801b2374
branch_0x801b2368:
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x4
    stw     r0, 0x64(r30)
branch_0x801b2374:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl initMapCollisionData__11TMapObjBaseFv
initMapCollisionData__11TMapObjBaseFv: # 0x801b238c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    mr      r28, r3
    lwz     r3, 0x130(r3)
    lwz     r30, 0x18(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x801b2428
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x801b23e0
    lhz     r4, 0x2(r30)
    addi    r3, r29, 0x0
    addi    r6, r28, 0x0
    subi    r5, rtoc, 0x2cd0
    bl      __ct__20TMapCollisionManagerFUsPCcPC10TLiveActor
branch_0x801b23e0:
    stw     r29, 0xec(r28)
    li      r29, 0x0
    li      r31, 0x0
    b       branch_0x801b241c

branch_0x801b23f0:
    lwz     r0, 0x4(r30)
    add     r5, r0, r31
    lwz     r4, 0x0(r5)
    cmplwi  r4, 0x0
    beq-    branch_0x801b2414
    lwz     r3, 0xec(r28)
    li      r6, 0x0
    lhz     r5, 0x4(r5)
    bl      init__20TMapCollisionManagerFPCcUsPCc
branch_0x801b2414:
    addi    r29, r29, 0x1
    addi    r31, r31, 0x8
branch_0x801b241c:
    lhz     r0, 0x0(r30)
    cmpw    r29, r0
    blt+    branch_0x801b23f0
branch_0x801b2428:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl checkIllegalAttr__11TMapObjBaseCFv
checkIllegalAttr__11TMapObjBaseCFv: # 0x801b2448
    blr


.globl initUnique__11TMapObjBaseFv
initUnique__11TMapObjBaseFv: # 0x801b244c
    mflr    r0
    lis     r5, 0x4000
    stw     r0, 0x4(sp)
    stwu    sp, -0x2d8(sp)
    stw     r31, 0x2d4(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x2d0(sp)
    stw     r29, 0x2cc(sp)
    stw     r28, 0x2c8(sp)
    lwz     r0, 0x4c(r3)
    addi    r3, r5, 0x9c
    cmpw    r0, r3
    beq-    branch_0x801b28f8
    bge-    branch_0x801b2568
    lis     r4, 0x2000
    addi    r3, r4, 0x68
    cmpw    r0, r3
    beq-    branch_0x801b2a78
    bge-    branch_0x801b24f8
    addi    r3, r4, 0x26
    cmpw    r0, r3
    beq-    branch_0x801b2a34
    bge-    branch_0x801b24d8
    addi    r3, r4, 0x1f
    cmpw    r0, r3
    beq-    branch_0x801b2a34
    bge-    branch_0x801b24c8
    addi    r3, r4, 0xe
    cmpw    r0, r3
    beq-    branch_0x801b2668
    b       branch_0x801b2c70

branch_0x801b24c8:
    addi    r3, r4, 0x22
    cmpw    r0, r3
    beq-    branch_0x801b2a34
    b       branch_0x801b2c70

branch_0x801b24d8:
    addi    r3, r4, 0x3c
    cmpw    r0, r3
    beq-    branch_0x801b2658
    bge-    branch_0x801b2c70
    addi    r3, r4, 0x2a
    cmpw    r0, r3
    beq-    branch_0x801b2a34
    b       branch_0x801b2c70

branch_0x801b24f8:
    addi    r3, r5, 0x48
    cmpw    r0, r3
    beq-    branch_0x801b269c
    bge-    branch_0x801b2538
    addi    r3, r5, 0x1c
    cmpw    r0, r3
    beq-    branch_0x801b26e0
    bge-    branch_0x801b2528
    addi    r3, r5, 0x1b
    cmpw    r0, r3
    bge-    branch_0x801b2c30
    b       branch_0x801b2c70

branch_0x801b2528:
    addi    r3, r5, 0x3c
    cmpw    r0, r3
    beq-    branch_0x801b2860
    b       branch_0x801b2c70

branch_0x801b2538:
    addi    r3, r5, 0x96
    cmpw    r0, r3
    beq-    branch_0x801b287c
    bge-    branch_0x801b2558
    addi    r3, r5, 0x5a
    cmpw    r0, r3
    beq-    branch_0x801b2790
    b       branch_0x801b2c70

branch_0x801b2558:
    addi    r3, r5, 0x9a
    cmpw    r0, r3
    bge-    branch_0x801b287c
    b       branch_0x801b2c70

branch_0x801b2568:
    addi    r3, r5, 0xcc
    cmpw    r0, r3
    beq-    branch_0x801b2c70
    bge-    branch_0x801b25e8
    addi    r3, r5, 0xa5
    cmpw    r0, r3
    beq-    branch_0x801b293c
    bge-    branch_0x801b25b8
    addi    r3, r5, 0xa0
    cmpw    r0, r3
    beq-    branch_0x801b28c0
    bge-    branch_0x801b25a8
    addi    r3, r5, 0x9e
    cmpw    r0, r3
    bge-    branch_0x801b287c
    b       branch_0x801b2c70

branch_0x801b25a8:
    addi    r3, r5, 0xa4
    cmpw    r0, r3
    bge-    branch_0x801b2c70
    b       branch_0x801b287c

branch_0x801b25b8:
    addi    r3, r5, 0xba
    cmpw    r0, r3
    beq-    branch_0x801b280c
    bge-    branch_0x801b25d8
    addi    r3, r5, 0xa8
    cmpw    r0, r3
    beq-    branch_0x801b287c
    b       branch_0x801b2c70

branch_0x801b25d8:
    addi    r3, r5, 0xcb
    cmpw    r0, r3
    bge-    branch_0x801b2974
    b       branch_0x801b2c70

branch_0x801b25e8:
    addi    r3, r5, 0xdb
    cmpw    r0, r3
    beq-    branch_0x801b2bd8
    bge-    branch_0x801b2628
    addi    r3, r5, 0xd0
    cmpw    r0, r3
    beq-    branch_0x801b2bc8
    bge-    branch_0x801b2618
    addi    r3, r5, 0xcf
    cmpw    r0, r3
    bge-    branch_0x801b29f0
    b       branch_0x801b2974

branch_0x801b2618:
    addi    r3, r5, 0xd3
    cmpw    r0, r3
    beq-    branch_0x801b29b8
    b       branch_0x801b2c70

branch_0x801b2628:
    addi    r3, r5, 0x2c2
    cmpw    r0, r3
    beq-    branch_0x801b2ae8
    bge-    branch_0x801b2648
    addi    r3, r5, 0x263
    cmpw    r0, r3
    beq-    branch_0x801b2850
    b       branch_0x801b2c70

branch_0x801b2648:
    addi    r3, r5, 0x2c4
    cmpw    r0, r3
    bge-    branch_0x801b2c70
    b       branch_0x801b2b58

branch_0x801b2658:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setLightType__6MActorFi
    b       branch_0x801b2c70

branch_0x801b2668:
    lwz     r0, 0x74(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801b2c70
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x80(r3)
    mr      r3, r31
    lwz     r29, 0x3c(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x80(r3)
    clrlwi  r0, r29, 1
    stw     r0, 0x3c(r3)
    b       branch_0x801b2c70

branch_0x801b269c:
    lwz     r4, -0x62b8(r13)
    mr      r3, r31
    lwz     r30, 0x74(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r30, 0x0
    li      r5, 0x3
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
    lwz     r3, 0x74(r31)
    bl      initDL__6MActorFv
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    bl      lock__8J3DModelFv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    bl      SMS_UnifyMaterial__FP8J3DModel
    b       branch_0x801b2c70

branch_0x801b26e0:
    li      r28, 0x0
    li      r30, 0x0
branch_0x801b26e8:
    lwz     r4, 0x78(r31)
    mr      r3, r31
    lwz     r4, 0x8(r4)
    lwzx    r0, r4, r30
    stw     r0, 0x74(r31)
    lwz     r4, -0x62b8(r13)
    lwz     r29, 0x7c(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r29, 0x0
    li      r5, 0x3
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
    lwz     r3, 0x74(r31)
    bl      initDL__6MActorFv
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    bl      lock__8J3DModelFv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    bl      SMS_UnifyMaterial__FP8J3DModel
    addi    r28, r28, 0x1
    cmpwi   r28, 0x2
    addi    r30, r30, 0x4
    blt+    branch_0x801b26e8
    lwz     r3, 0x78(r31)
    lwz     r3, 0x8(r3)
    lwz     r0, 0x0(r3)
    stw     r0, 0x74(r31)
    lwz     r3, 0xc4(r31)
    lhz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x801b2770
    li      r0, 0x1
    b       branch_0x801b2774

branch_0x801b2770:
    li      r0, 0x0
branch_0x801b2774:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b2c70
    lwz     r3, 0xec(r31)
    li      r4, 0x4000
    lwz     r3, 0x8(r3)
    bl      setAllBGType__17TMapCollisionBaseFUs
    b       branch_0x801b2c70

branch_0x801b2790:
    li      r28, 0x0
    li      r30, 0x0
branch_0x801b2798:
    lwz     r4, 0x78(r31)
    mr      r3, r31
    lwz     r4, 0x8(r4)
    lwzx    r0, r4, r30
    stw     r0, 0x74(r31)
    lwz     r4, -0x62b8(r13)
    lwz     r29, 0x80(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r29, 0x0
    li      r5, 0x3
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
    lwz     r3, 0x74(r31)
    bl      initDL__6MActorFv
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    bl      lock__8J3DModelFv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    bl      SMS_UnifyMaterial__FP8J3DModel
    addi    r28, r28, 0x1
    cmpwi   r28, 0x2
    addi    r30, r30, 0x4
    blt+    branch_0x801b2798
    lwz     r3, 0x78(r31)
    lwz     r3, 0x8(r3)
    lwz     r0, 0x0(r3)
    stw     r0, 0x74(r31)
    b       branch_0x801b2c70

branch_0x801b280c:
    lwz     r4, -0x62b8(r13)
    mr      r3, r31
    lwz     r29, 0x94(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r29, 0x0
    li      r5, 0x3
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
    lwz     r3, 0x74(r31)
    bl      initDL__6MActorFv
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    bl      lock__8J3DModelFv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    bl      SMS_UnifyMaterial__FP8J3DModel
    b       branch_0x801b2c70

branch_0x801b2850:
    lwz     r4, 0xf4(r31)
    lwz     r3, 0x74(r31)
    bl      startAllAnim__11TMapObjBaseFP6MActorPCc
    b       branch_0x801b2c70

branch_0x801b2860:
    lwz     r3, 0x74(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801b2c70
    li      r4, 0x14
    bl      initSimpleMotionBlend__12MActorAnmBckFi
    b       branch_0x801b2c70

branch_0x801b287c:
    lwz     r4, -0x62b8(r13)
    mr      r3, r31
    lwz     r29, 0x8c(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r29, 0x0
    li      r5, 0x3
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
    lwz     r3, 0x74(r31)
    bl      initDL__6MActorFv
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    bl      lock__8J3DModelFv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    bl      SMS_UnifyMaterial__FP8J3DModel
    b       branch_0x801b2c70

branch_0x801b28c0:
    lwz     r4, -0x62b8(r13)
    mr      r3, r31
    lwz     r29, 0x8c(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r29, 0x0
    li      r5, 0x3
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
    lwz     r3, 0x74(r31)
    bl      initDL__6MActorFv
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    bl      lock__8J3DModelFv
    b       branch_0x801b2c70

branch_0x801b28f8:
    lwz     r4, -0x62b8(r13)
    mr      r3, r31
    lwz     r29, 0x90(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r29, 0x0
    li      r5, 0x3
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
    lwz     r3, 0x74(r31)
    bl      initDL__6MActorFv
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    bl      lock__8J3DModelFv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    bl      SMS_UnifyMaterial__FP8J3DModel
    b       branch_0x801b2c70

branch_0x801b293c:
    lwz     r4, -0x62b8(r13)
    mr      r3, r31
    lwz     r29, 0x90(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r29, 0x0
    li      r5, 0x3
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
    lwz     r3, 0x74(r31)
    bl      initDL__6MActorFv
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    bl      lock__8J3DModelFv
    b       branch_0x801b2c70

branch_0x801b2974:
    lwz     r4, -0x62b8(r13)
    mr      r3, r31
    lwz     r29, 0xc0(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r29, 0x0
    li      r5, 0x3
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
    lwz     r3, 0x74(r31)
    bl      initDL__6MActorFv
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    bl      lock__8J3DModelFv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    bl      SMS_UnifyMaterial__FP8J3DModel
    b       branch_0x801b2c70

branch_0x801b29b8:
    lwz     r4, -0x62b8(r13)
    mr      r3, r31
    lwz     r29, 0xc0(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r29, 0x0
    li      r5, 0x2
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
    lwz     r3, 0x74(r31)
    bl      initDL__6MActorFv
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    bl      lock__8J3DModelFv
    b       branch_0x801b2c70

branch_0x801b29f0:
    lwz     r4, -0x62b8(r13)
    mr      r3, r31
    lwz     r29, 0xc4(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r29, 0x0
    li      r5, 0x3
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
    lwz     r3, 0x74(r31)
    bl      initDL__6MActorFv
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    bl      lock__8J3DModelFv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    bl      SMS_UnifyMaterial__FP8J3DModel
    b       branch_0x801b2c70

branch_0x801b2a34:
    lwz     r4, -0x62b8(r13)
    mr      r3, r31
    lwz     r29, 0x6c(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r29, 0x0
    li      r5, 0x3
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
    lwz     r3, 0x74(r31)
    bl      initDL__6MActorFv
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    bl      lock__8J3DModelFv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    bl      SMS_UnifyMaterial__FP8J3DModel
    b       branch_0x801b2c70

branch_0x801b2a78:
    li      r28, 0x0
    li      r30, 0x0
branch_0x801b2a80:
    lwz     r4, 0x78(r31)
    mr      r3, r31
    lwz     r4, 0x8(r4)
    lwzx    r0, r4, r30
    stw     r0, 0x74(r31)
    lwz     r4, -0x62b8(r13)
    lwz     r29, 0x70(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r29, 0x0
    li      r5, 0x2
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
    lwz     r3, 0x74(r31)
    bl      initDL__6MActorFv
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    bl      lock__8J3DModelFv
    addi    r28, r28, 0x1
    cmpwi   r28, 0x3
    addi    r30, r30, 0x4
    blt+    branch_0x801b2a80
    lwz     r3, 0x78(r31)
    lwz     r3, 0x8(r3)
    lwz     r0, 0x0(r3)
    stw     r0, 0x74(r31)
    b       branch_0x801b2c70

branch_0x801b2ae8:
    li      r28, 0x0
    li      r30, 0x0
branch_0x801b2af0:
    lwz     r4, 0x78(r31)
    mr      r3, r31
    lwz     r4, 0x8(r4)
    lwzx    r0, r4, r30
    stw     r0, 0x74(r31)
    lwz     r4, -0x62b8(r13)
    lwz     r29, 0x84(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r29, 0x0
    li      r5, 0x3
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
    lwz     r3, 0x74(r31)
    bl      initDL__6MActorFv
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    bl      lock__8J3DModelFv
    addi    r28, r28, 0x1
    cmpwi   r28, 0x2
    addi    r30, r30, 0x4
    blt+    branch_0x801b2af0
    lwz     r3, 0x78(r31)
    lwz     r3, 0x8(r3)
    lwz     r0, 0x0(r3)
    stw     r0, 0x74(r31)
    b       branch_0x801b2c70

branch_0x801b2b58:
    li      r28, 0x0
    li      r30, 0x0
branch_0x801b2b60:
    lwz     r4, 0x78(r31)
    mr      r3, r31
    lwz     r4, 0x8(r4)
    lwzx    r0, r4, r30
    stw     r0, 0x74(r31)
    lwz     r4, -0x62b8(r13)
    lwz     r29, 0x88(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r29, 0x0
    li      r5, 0x3
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
    lwz     r3, 0x74(r31)
    bl      initDL__6MActorFv
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    bl      lock__8J3DModelFv
    addi    r28, r28, 0x1
    cmpwi   r28, 0x2
    addi    r30, r30, 0x4
    blt+    branch_0x801b2b60
    lwz     r3, 0x78(r31)
    lwz     r3, 0x8(r3)
    lwz     r0, 0x0(r3)
    stw     r0, 0x74(r31)
    b       branch_0x801b2c70

branch_0x801b2bc8:
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setLightType__6MActorFi
    b       branch_0x801b2c70

branch_0x801b2bd8:
    lfs     f2, -0x2cc8(rtoc)
    mr      r3, r31
    lfs     f1, 0x28(r31)
    lfs     f0, 0x14(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lfs     f2, -0x2cc8(rtoc)
    lfs     f1, 0x28(r31)
    lfs     f0, 0x14(r31)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x14(r31)
    b       branch_0x801b2c70

branch_0x801b2c30:
    lwz     r4, -0x62b8(r13)
    mr      r3, r31
    lwz     r29, 0x78(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r29, 0x0
    li      r5, 0x3
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
    lwz     r3, 0x74(r31)
    bl      initDL__6MActorFv
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    bl      lock__8J3DModelFv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    bl      SMS_UnifyMaterial__FP8J3DModel
branch_0x801b2c70:
    lwz     r0, 0x2dc(sp)
    lwz     r31, 0x2d4(sp)
    lwz     r30, 0x2d0(sp)
    mtlr    r0
    lwz     r29, 0x2cc(sp)
    lwz     r28, 0x2c8(sp)
    addi    sp, sp, 0x2d8
    blr


.globl __sinit_MapObjInit_cpp
__sinit_MapObjInit_cpp: # 0x801b2c90
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x6ed0
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801b2cd8
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801b2cd8:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801b2d08
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801b2d08:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801b2d38
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801b2d38:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801b2d68
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801b2d68:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801b2d98
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801b2d98:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801b2dc8
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801b2dc8:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801b2df8
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801b2df8:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801b2e28
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801b2e28:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801b2e58
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801b2e58:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801b2e88
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801b2e88:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801b2eb8
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801b2eb8:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801b2ee8
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801b2ee8:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801b2f18
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801b2f18:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801b2f48
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801b2f48:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801b2f78
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801b2f78:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__14TMapObjGeneralFv
_32___dt__14TMapObjGeneralFv: # 0x801b2f8c
    subi    r3, r3, 0x20
    b       __dt__14TMapObjGeneralFv
