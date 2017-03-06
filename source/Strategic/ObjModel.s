
.globl __ct__13TMActorKeeperFP12TLiveManager
__ct__13TMActorKeeperFP12TLiveManager: # 0x8021c9cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr.     r31, r4
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x8021ca04
    mr      r3, r31
    bl      getModelDataKeeper__11TObjManagerFv
    stw     r3, 0x0(r30)
    mr      r3, r31
    bl      getMActorAnmData__11TObjManagerFv
    stw     r3, 0xc(r30)
branch_0x8021ca04:
    lwz     r3, 0x0(r30)
    li      r4, 0x0
    addi    r3, r3, 0x4
    b       branch_0x8021ca1c

branch_0x8021ca14:
    lwz     r3, 0xc(r3)
    addi    r4, r4, 0x1
branch_0x8021ca1c:
    cmplwi  r3, 0x0
    beq-    branch_0x8021ca30
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    bne+    branch_0x8021ca14
branch_0x8021ca30:
    sth     r4, 0x4(r30)
    li      r31, 0x0
    sth     r31, 0x6(r30)
    lhz     r0, 0x4(r30)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x8(r30)
    lhz     r0, 0x4(r30)
    slwi    r3, r0, 1
    bl      __nwa__FUl
    stw     r3, 0x10(r30)
    li      r4, 0x0
    stw     r31, 0x14(r30)
    lhz     r0, 0x4(r30)
    lwz     r3, 0x8(r30)
    slwi    r5, r0, 2
    bl      memset
    lhz     r0, 0x4(r30)
    li      r4, 0x0
    lwz     r3, 0x10(r30)
    slwi    r5, r0, 1
    bl      memset
    lwz     r0, 0x3c(sp)
    mr      r3, r30
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl __ct__13TMActorKeeperFP12TLiveManagerUs
__ct__13TMActorKeeperFP12TLiveManagerUs: # 0x8021caa4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    stw     r30, 0x20(sp)
    clrlwi  r30, r5, 16
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    mr      r28, r3
    sth     r5, 0x4(r3)
    sth     r31, 0x6(r3)
    clrlslwi  r3, r5, 16, 2
    bl      __nwa__FUl
    stw     r3, 0x8(r28)
    slwi    r3, r30, 1
    stw     r31, 0xc(r28)
    bl      __nwa__FUl
    stw     r3, 0x10(r28)
    slwi    r5, r30, 2
    li      r4, 0x0
    stw     r31, 0x14(r28)
    lwz     r3, 0x8(r28)
    bl      memset
    lwz     r3, 0x10(r28)
    slwi    r5, r30, 1
    li      r4, 0x0
    bl      memset
    cmplwi  r29, 0x0
    beq-    branch_0x8021cb38
    mr      r3, r29
    bl      getModelDataKeeper__11TObjManagerFv
    stw     r3, 0x0(r28)
    mr      r3, r29
    bl      getMActorAnmData__11TObjManagerFv
    stw     r3, 0xc(r28)
branch_0x8021cb38:
    lwz     r0, 0x2c(sp)
    mr      r3, r28
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl createMActorFromAllBmd__13TMActorKeeperFUl
createMActorFromAllBmd__13TMActorKeeperFUl: # 0x8021cb5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x54(sp)
    mr      r29, r3
    stw     r28, 0x50(sp)
    li      r28, 0x0
    lwz     r3, 0x0(r3)
    addi    r3, r3, 0x4
    b       branch_0x8021cb98

branch_0x8021cb90:
    lwz     r3, 0xc(r3)
    addi    r28, r28, 0x1
branch_0x8021cb98:
    cmplwi  r3, 0x0
    beq-    branch_0x8021cbac
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    bne+    branch_0x8021cb90
branch_0x8021cbac:
    li      r31, 0x0
    b       branch_0x8021cc4c

branch_0x8021cbb4:
    lhz     r0, 0x6(r29)
    cmpwi   r31, 0x0
    lwz     r4, 0x0(r29)
    lwz     r3, 0x10(r29)
    slwi    r0, r0, 1
    addi    r5, r4, 0x4
    sthx    r31, r3, r0
    li      r3, 0x0
    ble-    branch_0x8021cc38
    cmpwi   r31, 0x8
    subi    r4, r31, 0x8
    ble-    branch_0x8021cc20
    addi    r0, r4, 0x7
    srwi    r0, r0, 3
    cmpwi   r4, 0x0
    mtctr   r0
    ble-    branch_0x8021cc20
branch_0x8021cbf8:
    lwz     r4, 0xc(r5)
    addi    r3, r3, 0x8
    lwz     r4, 0xc(r4)
    lwz     r4, 0xc(r4)
    lwz     r4, 0xc(r4)
    lwz     r4, 0xc(r4)
    lwz     r4, 0xc(r4)
    lwz     r4, 0xc(r4)
    lwz     r5, 0xc(r4)
    bdnz+      branch_0x8021cbf8
branch_0x8021cc20:
    subf    r0, r3, r31
    cmpw    r3, r31
    mtctr   r0
    bge-    branch_0x8021cc38
branch_0x8021cc30:
    lwz     r5, 0xc(r5)
    bdnz+      branch_0x8021cc30
branch_0x8021cc38:
    lwz     r4, 0x0(r5)
    addi    r3, r29, 0x0
    addi    r5, r30, 0x0
    bl      createAndRegister__13TMActorKeeperFP12SDLModelDataUl
    addi    r31, r31, 0x1
branch_0x8021cc4c:
    cmpw    r31, r28
    blt+    branch_0x8021cbb4
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    lwz     r28, 0x50(sp)
    addi    sp, sp, 0x60
    blr


.globl createMActor__13TMActorKeeperFPCcUl
createMActor__13TMActorKeeperFPCcUl: # 0x8021cc74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stmw    r25, 0x84(sp)
    addi    r29, r4, 0x0
    addi    r28, r3, 0x0
    addi    r30, r5, 0x0
    lwz     r31, 0x0(r3)
    addi    r3, r29, 0x0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r25, r31, 0x4
    clrlwi  r27, r3, 16
    li      r26, 0x0
    b       branch_0x8021ccec

branch_0x8021ccac:
    lhz     r0, 0x8(r25)
    cmplw   r27, r0
    bne-    branch_0x8021ccd4
    mr      r3, r29
    lwz     r4, 0x4(r25)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8021ccd4
    li      r0, 0x1
    b       branch_0x8021ccd8

branch_0x8021ccd4:
    li      r0, 0x0
branch_0x8021ccd8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8021cce4
    b       branch_0x8021cd04

branch_0x8021cce4:
    lwz     r25, 0xc(r25)
    addi    r26, r26, 0x1
branch_0x8021ccec:
    cmplwi  r25, 0x0
    beq-    branch_0x8021cd00
    lwz     r0, 0x0(r25)
    cmplwi  r0, 0x0
    bne+    branch_0x8021ccac
branch_0x8021cd00:
    li      r26, -0x1
branch_0x8021cd04:
    cmpwi   r26, 0x0
    addi    r6, r26, 0x0
    bge-    branch_0x8021cdbc
    lwz     r4, 0x14(r28)
    addi    r25, r31, 0x4
    b       branch_0x8021cd20

branch_0x8021cd1c:
    mr      r25, r0
branch_0x8021cd20:
    lwz     r0, 0xc(r25)
    cmplwi  r0, 0x0
    bne+    branch_0x8021cd1c
    lwz     r5, 0x0(r31)
    mr      r3, r29
    bl      loadModelData__16TModelDataKeeperFPCcUlPCc
    addi    r4, r3, 0x0
    addi    r3, r25, 0x0
    addi    r5, r29, 0x0
    bl      registerDataAndJoinNewNode__14TModelDataNodeFP12SDLModelDataPCc
    mr      r3, r29
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r26, r31, 0x4
    clrlwi  r27, r3, 16
    li      r25, 0x0
    b       branch_0x8021cda0

branch_0x8021cd60:
    lhz     r0, 0x8(r26)
    cmplw   r27, r0
    bne-    branch_0x8021cd88
    mr      r3, r29
    lwz     r4, 0x4(r26)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8021cd88
    li      r0, 0x1
    b       branch_0x8021cd8c

branch_0x8021cd88:
    li      r0, 0x0
branch_0x8021cd8c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8021cd98
    b       branch_0x8021cdb8

branch_0x8021cd98:
    lwz     r26, 0xc(r26)
    addi    r25, r25, 0x1
branch_0x8021cda0:
    cmplwi  r26, 0x0
    beq-    branch_0x8021cdb4
    lwz     r0, 0x0(r26)
    cmplwi  r0, 0x0
    bne+    branch_0x8021cd60
branch_0x8021cdb4:
    li      r25, -0x1
branch_0x8021cdb8:
    mr      r6, r25
branch_0x8021cdbc:
    lhz     r0, 0x6(r28)
    cmpwi   r6, 0x0
    lwz     r3, 0x10(r28)
    addi    r5, r31, 0x4
    slwi    r0, r0, 1
    sthx    r6, r3, r0
    li      r3, 0x0
    ble-    branch_0x8021ce3c
    cmpwi   r6, 0x8
    subi    r4, r6, 0x8
    ble-    branch_0x8021ce24
    addi    r0, r4, 0x7
    srwi    r0, r0, 3
    cmpwi   r4, 0x0
    mtctr   r0
    ble-    branch_0x8021ce24
branch_0x8021cdfc:
    lwz     r4, 0xc(r5)
    addi    r3, r3, 0x8
    lwz     r4, 0xc(r4)
    lwz     r4, 0xc(r4)
    lwz     r4, 0xc(r4)
    lwz     r4, 0xc(r4)
    lwz     r4, 0xc(r4)
    lwz     r4, 0xc(r4)
    lwz     r5, 0xc(r4)
    bdnz+      branch_0x8021cdfc
branch_0x8021ce24:
    subf    r0, r3, r6
    cmpw    r3, r6
    mtctr   r0
    bge-    branch_0x8021ce3c
branch_0x8021ce34:
    lwz     r5, 0xc(r5)
    bdnz+      branch_0x8021ce34
branch_0x8021ce3c:
    lwz     r25, 0x0(r5)
    li      r3, 0xac
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x8021ce64
    addi    r3, r26, 0x0
    addi    r4, r25, 0x0
    addi    r5, r30, 0x0
    li      r6, 0x1
    bl      __ct__8SDLModelFP12SDLModelDataUlUl
branch_0x8021ce64:
    addi    r25, r26, 0x0
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x8021ce84
    mr      r3, r26
    lwz     r4, 0xc(r28)
    bl      __ct__6MActorFP13MActorAnmData
branch_0x8021ce84:
    addi    r3, r26, 0x0
    addi    r4, r25, 0x0
    addi    r5, r30, 0x0
    bl      setModel__6MActorFP8J3DModelUl
    lhz     r0, 0x6(r28)
    mr      r3, r26
    lwz     r4, 0x8(r28)
    slwi    r0, r0, 2
    stwx    r26, r4, r0
    lhz     r4, 0x6(r28)
    addi    r0, r4, 0x1
    sth     r0, 0x6(r28)
    lwz     r0, 0xa4(sp)
    lmw     r25, 0x84(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl createMActorFromNthData__13TMActorKeeperFiUl
createMActorFromNthData__13TMActorKeeperFiUl: # 0x8021cec8
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x38(sp)
    mr      r30, r3
    stw     r29, 0x34(sp)
    stw     r28, 0x30(sp)
    lhz     r0, 0x6(r3)
    lwz     r6, 0x0(r3)
    lwz     r3, 0x10(r3)
    slwi    r0, r0, 1
    addi    r6, r6, 0x4
    sthx    r4, r3, r0
    li      r3, 0x0
    ble-    branch_0x8021cf70
    cmpwi   r4, 0x8
    subi    r5, r4, 0x8
    ble-    branch_0x8021cf58
    addi    r0, r5, 0x7
    srwi    r0, r0, 3
    cmpwi   r5, 0x0
    mtctr   r0
    ble-    branch_0x8021cf58
branch_0x8021cf30:
    lwz     r5, 0xc(r6)
    addi    r3, r3, 0x8
    lwz     r5, 0xc(r5)
    lwz     r5, 0xc(r5)
    lwz     r5, 0xc(r5)
    lwz     r5, 0xc(r5)
    lwz     r5, 0xc(r5)
    lwz     r5, 0xc(r5)
    lwz     r6, 0xc(r5)
    bdnz+      branch_0x8021cf30
branch_0x8021cf58:
    subf    r0, r3, r4
    cmpw    r3, r4
    mtctr   r0
    bge-    branch_0x8021cf70
branch_0x8021cf68:
    lwz     r6, 0xc(r6)
    bdnz+      branch_0x8021cf68
branch_0x8021cf70:
    lwz     r29, 0x0(r6)
    li      r3, 0xac
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x8021cf98
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r31, 0x0
    li      r6, 0x1
    bl      __ct__8SDLModelFP12SDLModelDataUlUl
branch_0x8021cf98:
    addi    r29, r28, 0x0
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x8021cfb8
    mr      r3, r28
    lwz     r4, 0xc(r30)
    bl      __ct__6MActorFP13MActorAnmData
branch_0x8021cfb8:
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r31, 0x0
    bl      setModel__6MActorFP8J3DModelUl
    lhz     r0, 0x6(r30)
    mr      r3, r28
    lwz     r4, 0x8(r30)
    slwi    r0, r0, 2
    stwx    r28, r4, r0
    lhz     r4, 0x6(r30)
    addi    r0, r4, 0x1
    sth     r0, 0x6(r30)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl createMActorFromDefaultBmd__13TMActorKeeperFPCcUl
createMActorFromDefaultBmd__13TMActorKeeperFPCcUl: # 0x8021d008
    mflr    r0
    stw     r0, 0x4(sp)
    crxor   6, 6, 6
    stwu    sp, -0x138(sp)
    stmw    r27, 0x124(sp)
    addi    r31, r3, 0x0
    lis     r3, 0x803a
    addi    r28, r4, 0x0
    subi    r6, r3, 0x2cf0
    addi    r29, r5, 0x0
    addi    r5, r28, 0x0
    addi    r3, sp, 0x14
    lwz     r30, 0x14(r31)
    subi    r4, rtoc, 0x18b0
    bl      sprintf
    addi    r3, sp, 0x14
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r30
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r30, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8021d074
    addi    r3, r27, 0x0
    addi    r4, r30, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x8021d074:
    addi    r30, r27, 0x0
    li      r3, 0x4c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8021d090
    mr      r3, r27
    bl      __ct__13MActorAnmDataFv
branch_0x8021d090:
    stw     r27, 0xc(r31)
    addi    r4, r28, 0x0
    li      r5, 0x0
    lwz     r3, 0xc(r31)
    bl      init__13MActorAnmDataFPCcPPCc
    li      r3, 0xac
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8021d0c8
    addi    r3, r27, 0x0
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    li      r6, 0x1
    bl      __ct__8SDLModelFP12SDLModelDataUlUl
branch_0x8021d0c8:
    addi    r30, r27, 0x0
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8021d0e8
    mr      r3, r27
    lwz     r4, 0xc(r31)
    bl      __ct__6MActorFP13MActorAnmData
branch_0x8021d0e8:
    addi    r3, r27, 0x0
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    bl      setModel__6MActorFP8J3DModelUl
    lhz     r0, 0x6(r31)
    mr      r3, r27
    lwz     r4, 0x8(r31)
    slwi    r0, r0, 2
    stwx    r27, r4, r0
    lhz     r4, 0x6(r31)
    addi    r0, r4, 0x1
    sth     r0, 0x6(r31)
    lwz     r0, 0x13c(sp)
    lmw     r27, 0x124(sp)
    addi    sp, sp, 0x138
    mtlr    r0
    blr


.globl getMActor__13TMActorKeeperCFPCc
getMActor__13TMActorKeeperCFPCc: # 0x8021d12c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r27, 0x3c(sp)
    mr      r27, r3
    addi    r28, r4, 0x0
    lwz     r29, 0x0(r3)
    cmplwi  r29, 0x0
    bne-    branch_0x8021d15c
    lwz     r3, 0x8(r27)
    lwz     r3, 0x0(r3)
    b       branch_0x8021d214

branch_0x8021d15c:
    mr      r3, r28
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r29, r29, 0x4
    clrlwi  r31, r3, 16
    li      r30, 0x0
    b       branch_0x8021d1b4

branch_0x8021d174:
    lhz     r0, 0x8(r29)
    cmplw   r31, r0
    bne-    branch_0x8021d19c
    mr      r3, r28
    lwz     r4, 0x4(r29)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8021d19c
    li      r0, 0x1
    b       branch_0x8021d1a0

branch_0x8021d19c:
    li      r0, 0x0
branch_0x8021d1a0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8021d1ac
    b       branch_0x8021d1cc

branch_0x8021d1ac:
    lwz     r29, 0xc(r29)
    addi    r30, r30, 0x1
branch_0x8021d1b4:
    cmplwi  r29, 0x0
    beq-    branch_0x8021d1c8
    lwz     r0, 0x0(r29)
    cmplwi  r0, 0x0
    bne+    branch_0x8021d174
branch_0x8021d1c8:
    li      r30, -0x1
branch_0x8021d1cc:
    lhz     r0, 0x6(r27)
    li      r5, 0x0
    li      r3, 0x0
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x8021d210
branch_0x8021d1e4:
    lwz     r4, 0x10(r27)
    lhzx    r0, r4, r3
    cmpw    r30, r0
    bne-    branch_0x8021d204
    lwz     r3, 0x8(r27)
    slwi    r0, r5, 2
    lwzx    r3, r3, r0
    b       branch_0x8021d214

branch_0x8021d204:
    addi    r5, r5, 0x1
    addi    r3, r3, 0x2
    bdnz+      branch_0x8021d1e4
branch_0x8021d210:
    li      r3, 0x0
branch_0x8021d214:
    lmw     r27, 0x3c(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl createAndRegister__13TMActorKeeperFP12SDLModelDataUl
createAndRegister__13TMActorKeeperFP12SDLModelDataUl: # 0x8021d228
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    li      r3, 0xac
    stw     r28, 0x18(sp)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x8021d274
    addi    r3, r28, 0x0
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    li      r6, 0x1
    bl      __ct__8SDLModelFP12SDLModelDataUlUl
branch_0x8021d274:
    addi    r31, r28, 0x0
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x8021d294
    mr      r3, r28
    lwz     r4, 0xc(r29)
    bl      __ct__6MActorFP13MActorAnmData
branch_0x8021d294:
    addi    r3, r28, 0x0
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    bl      setModel__6MActorFP8J3DModelUl
    lhz     r0, 0x6(r29)
    mr      r3, r28
    lwz     r4, 0x8(r29)
    slwi    r0, r0, 2
    stwx    r28, r4, r0
    lhz     r4, 0x6(r29)
    addi    r0, r4, 0x1
    sth     r0, 0x6(r29)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__16TModelDataKeeperFPCc
__ct__16TModelDataKeeperFPCc: # 0x8021d2e4
    stw     r4, 0x0(r3)
    li      r0, 0x0
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    sth     r0, 0xc(r3)
    stw     r0, 0x10(r3)
    blr


.globl getModelDataNum__16TModelDataKeeperCFv
getModelDataNum__16TModelDataKeeperCFv: # 0x8021d300
    addi    r4, r3, 0x4
    li      r3, 0x0
    b       branch_0x8021d314

branch_0x8021d30c:
    lwz     r4, 0xc(r4)
    addi    r3, r3, 0x1
branch_0x8021d314:
    cmplwi  r4, 0x0
    beqlr-    

    lwz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    bne+    branch_0x8021d30c
    blr


.globl getDataByName__16TModelDataKeeperCFPCc
getDataByName__16TModelDataKeeperCFPCc: # 0x8021d32c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r27, 0x44(sp)
    addi    r28, r4, 0x0
    addi    r27, r3, 0x0
    addi    r3, r28, 0x0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r29, r27, 0x4
    clrlwi  r31, r3, 16
    li      r30, 0x0
    b       branch_0x8021d39c

branch_0x8021d35c:
    lhz     r0, 0x8(r29)
    cmplw   r31, r0
    bne-    branch_0x8021d384
    mr      r3, r28
    lwz     r4, 0x4(r29)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8021d384
    li      r0, 0x1
    b       branch_0x8021d388

branch_0x8021d384:
    li      r0, 0x0
branch_0x8021d388:
    clrlwi. r0, r0, 24
    beq-    branch_0x8021d394
    b       branch_0x8021d3b4

branch_0x8021d394:
    lwz     r29, 0xc(r29)
    addi    r30, r30, 0x1
branch_0x8021d39c:
    cmplwi  r29, 0x0
    beq-    branch_0x8021d3b0
    lwz     r0, 0x0(r29)
    cmplwi  r0, 0x0
    bne+    branch_0x8021d35c
branch_0x8021d3b0:
    li      r30, -0x1
branch_0x8021d3b4:
    cmpwi   r30, 0x0
    bge-    branch_0x8021d3c4
    li      r3, 0x0
    b       branch_0x8021d434

branch_0x8021d3c4:
    addi    r5, r27, 0x4
    li      r3, 0x0
    ble-    branch_0x8021d430
    cmpwi   r30, 0x8
    subi    r4, r30, 0x8
    ble-    branch_0x8021d418
    addi    r0, r4, 0x7
    srwi    r0, r0, 3
    cmpwi   r4, 0x0
    mtctr   r0
    ble-    branch_0x8021d418
branch_0x8021d3f0:
    lwz     r4, 0xc(r5)
    addi    r3, r3, 0x8
    lwz     r4, 0xc(r4)
    lwz     r4, 0xc(r4)
    lwz     r4, 0xc(r4)
    lwz     r4, 0xc(r4)
    lwz     r4, 0xc(r4)
    lwz     r4, 0xc(r4)
    lwz     r5, 0xc(r4)
    bdnz+      branch_0x8021d3f0
branch_0x8021d418:
    subf    r0, r3, r30
    cmpw    r3, r30
    mtctr   r0
    bge-    branch_0x8021d430
branch_0x8021d428:
    lwz     r5, 0xc(r5)
    bdnz+      branch_0x8021d428
branch_0x8021d430:
    lwz     r3, 0x0(r5)
branch_0x8021d434:
    lmw     r27, 0x44(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl getNthData__16TModelDataKeeperCFi
getNthData__16TModelDataKeeperCFi: # 0x8021d448
    cmpwi   r4, 0x0
    addi    r5, r3, 0x4
    li      r6, 0x0
    ble-    branch_0x8021d4b8
    cmpwi   r4, 0x8
    subi    r3, r4, 0x8
    ble-    branch_0x8021d4a0
    addi    r0, r3, 0x7
    srwi    r0, r0, 3
    cmpwi   r3, 0x0
    mtctr   r0
    ble-    branch_0x8021d4a0
branch_0x8021d478:
    lwz     r3, 0xc(r5)
    addi    r6, r6, 0x8
    lwz     r3, 0xc(r3)
    lwz     r3, 0xc(r3)
    lwz     r3, 0xc(r3)
    lwz     r3, 0xc(r3)
    lwz     r3, 0xc(r3)
    lwz     r3, 0xc(r3)
    lwz     r5, 0xc(r3)
    bdnz+      branch_0x8021d478
branch_0x8021d4a0:
    subf    r0, r6, r4
    cmpw    r6, r4
    mtctr   r0
    bge-    branch_0x8021d4b8
branch_0x8021d4b0:
    lwz     r5, 0xc(r5)
    bdnz+      branch_0x8021d4b0
branch_0x8021d4b8:
    lwz     r3, 0x0(r5)
    blr


.globl createAndKeepData__16TModelDataKeeperFPCcUl
createAndKeepData__16TModelDataKeeperFPCcUl: # 0x8021d4c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x140(sp)
    stw     r31, 0x13c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x138(sp)
    addi    r30, r3, 0x4
    stw     r29, 0x134(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x130(sp)
    b       branch_0x8021d4f0

branch_0x8021d4ec:
    mr      r30, r0
branch_0x8021d4f0:
    lwz     r0, 0xc(r30)
    cmplwi  r0, 0x0
    bne+    branch_0x8021d4ec
    lwz     r5, 0x0(r3)
    addi    r6, r29, 0x0
    addi    r3, sp, 0x20
    crxor   6, 6, 6
    subi    r4, rtoc, 0x18b0
    bl      sprintf
    addi    r3, sp, 0x20
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r31
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r31, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x8021d544
    addi    r3, r28, 0x0
    addi    r4, r31, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x8021d544:
    stw     r28, 0x0(r30)
    mr      r3, r29
    stw     r29, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r30)
    li      r3, 0x10
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x8021d57c
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    sth     r0, 0x8(r3)
    stw     r0, 0xc(r3)
branch_0x8021d57c:
    stw     r3, 0xc(r30)
    mr      r3, r28
    lwz     r0, 0x144(sp)
    lwz     r31, 0x13c(sp)
    lwz     r30, 0x138(sp)
    mtlr    r0
    lwz     r29, 0x134(sp)
    lwz     r28, 0x130(sp)
    addi    sp, sp, 0x140
    blr


.globl loadModelData__16TModelDataKeeperFPCcUlPCc
loadModelData__16TModelDataKeeperFPCcUlPCc: # 0x8021d5a4
    mflr    r0
    addi    r6, r3, 0x0
    stw     r0, 0x4(sp)
    crxor   6, 6, 6
    stwu    sp, -0x120(sp)
    stw     r31, 0x11c(sp)
    addi    r31, r4, 0x0
    addi    r3, sp, 0x18
    stw     r30, 0x118(sp)
    subi    r4, rtoc, 0x18b0
    bl      sprintf
    addi    r3, sp, 0x18
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r31
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r31, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8021d600
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x8021d600:
    lwz     r0, 0x124(sp)
    mr      r3, r30
    lwz     r31, 0x11c(sp)
    lwz     r30, 0x118(sp)
    mtlr    r0
    addi    sp, sp, 0x120
    blr


.globl registerDataAndJoinNewNode__14TModelDataNodeFP12SDLModelDataPCc
registerDataAndJoinNewNode__14TModelDataNodeFP12SDLModelDataPCc: # 0x8021d61c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    stw     r4, 0x0(r3)
    mr      r3, r5
    stw     r5, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    li      r3, 0x10
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x8021d668
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    sth     r0, 0x8(r3)
    stw     r0, 0xc(r3)
branch_0x8021d668:
    stw     r3, 0xc(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

