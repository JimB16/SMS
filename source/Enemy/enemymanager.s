
.globl copyAnmMtx__13TEnemyManagerFP11TSpineEnemy
copyAnmMtx__13TEnemyManagerFP11TSpineEnemy: # 0x8003dbf0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stmw    r25, 0xa4(sp)
    mr      r31, r4
    addi    r30, r3, 0x0
    lwz     r0, 0x74(r4)
    li      r4, 0x0
    mr      r3, r0
    bl      getCurAnmIdx__6MActorCFi
    lwz     r0, 0x4c(r30)
    cmpw    r0, r3
    beq-    branch_0x8003dc2c
    li      r3, 0x0
    b       branch_0x8003dd90

branch_0x8003dc2c:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      getCurAnmFrameNo__11TSpineEnemyCFi
    mr      r3, r31
    fctiwz  f0, f1
    lwz     r12, 0x0(r31)
    stfd    f0, 0x98(sp)
    lwz     r12, 0xc0(r12)
    lwz     r27, 0x9c(sp)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf4(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    bl      frameUpdate__6MActorFv
    lwz     r3, 0x74(r31)
    slwi    r27, r27, 2
    lfs     f0, 0x24(r31)
    addi    r28, sp, 0x64
    lwz     r3, 0x4(r3)
    lfsu    f1, 0x20(r3)
    li      r25, 0x0
    li      r29, 0x0
    fmuls   f0, f1, f0
    addi    r26, r3, 0x0
    stfs    f0, 0x0(r3)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x28(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x4(r3)
    lfs     f1, 0x8(r3)
    lfs     f0, 0x2c(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x8(r3)
    lfs     f1, 0x10(r3)
    lfs     f0, 0x24(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x10(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x28(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x14(r3)
    lfs     f1, 0x18(r3)
    lfs     f0, 0x2c(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x18(r3)
    lfs     f1, 0x20(r3)
    lfs     f0, 0x24(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x20(r3)
    lfs     f1, 0x24(r3)
    lfs     f0, 0x28(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x24(r3)
    lfs     f1, 0x28(r3)
    lfs     f0, 0x2c(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x28(r3)
    b       branch_0x8003dd5c

branch_0x8003dd24:
    lwz     r0, 0x48(r30)
    addi    r3, r26, 0x0
    addi    r5, sp, 0x64
    lwzx    r0, r27, r0
    add     r4, r0, r29
    bl      PSMTXConcat
    lwz     r4, 0x74(r31)
    mr      r3, r28
    lwz     r4, 0x4(r4)
    lwz     r0, 0x58(r4)
    add     r4, r0, r29
    bl      PSMTXCopy
    addi    r25, r25, 0x1
    addi    r29, r29, 0x30
branch_0x8003dd5c:
    lwz     r0, 0x50(r30)
    cmpw    r25, r0
    blt+    branch_0x8003dd24
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lhz     r0, 0x84(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8003dd8c
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    bl      calcWeightEnvelopeMtx__8J3DModelFv
branch_0x8003dd8c:
    li      r3, 0x1
branch_0x8003dd90:
    lmw     r25, 0xa4(sp)
    lwz     r0, 0xc4(sp)
    addi    sp, sp, 0xc0
    mtlr    r0
    blr


.globl countLivingEnemy__13TEnemyManagerCFv
countLivingEnemy__13TEnemyManagerCFv: # 0x8003dda4
    lwz     r4, 0x38(r3)
    cmplwi  r4, 0x0
    bne-    branch_0x8003ddb8
    lwz     r4, 0x14(r3)
    b       branch_0x8003ddd0

branch_0x8003ddb8:
    lbz     r0, 0xa4(r4)
    lwz     r4, 0x14(r3)
    cmpw    r0, r4
    ble-    branch_0x8003ddcc
    b       branch_0x8003ddd0

branch_0x8003ddcc:
    mr      r4, r0
branch_0x8003ddd0:
    cmpwi   r4, 0x0
    mtctr   r4
    li      r6, 0x0
    li      r4, 0x0
    ble-    branch_0x8003de04
branch_0x8003dde4:
    lwz     r5, 0x18(r3)
    lwzx    r5, r5, r4
    lwz     r0, 0xf0(r5)
    clrlwi. r0, r0, 31
    bne-    branch_0x8003ddfc
    addi    r6, r6, 0x1
branch_0x8003ddfc:
    addi    r4, r4, 0x4
    bdnz+      branch_0x8003dde4
branch_0x8003de04:
    mr      r3, r6
    blr


.globl killChildrenWithin__13TEnemyManagerFRCQ29JGeometry8TVec3_f_f
killChildrenWithin__13TEnemyManagerFRCQ29JGeometry8TVec3_f_f: # 0x8003de0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    stmw    r27, 0x3c(sp)
    mr      r30, r3
    addi    r31, r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x8003decc
    lwz     r3, 0x18(r30)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x4c(r3)
    rlwinm. r0, r0, 0, 3, 3
    beq-    branch_0x8003de50
    li      r0, 0x1
    b       branch_0x8003de54

branch_0x8003de50:
    li      r0, 0x0
branch_0x8003de54:
    clrlwi. r0, r0, 24
    bne-    branch_0x8003de7c
    lwz     r0, 0x4c(r3)
    rlwinm. r0, r0, 0, 4, 4
    beq-    branch_0x8003de70
    li      r0, 0x1
    b       branch_0x8003de74

branch_0x8003de70:
    li      r0, 0x0
branch_0x8003de74:
    clrlwi. r0, r0, 24
    beq-    branch_0x8003decc
branch_0x8003de7c:
    fmuls   f31, f1, f1
    li      r27, 0x0
    li      r29, 0x0
    b       branch_0x8003dec0

branch_0x8003de8c:
    lwz     r4, 0x18(r30)
    mr      r3, r31
    lwzx    r28, r4, r29
    addi    r4, r28, 0x10
    bl      PSVECSquareDistance
    fcmpo   cr0, f1, f31
    cror    2, 0, 2
    bne-    branch_0x8003deb8
    lwz     r0, 0xf0(r28)
    ori     r0, r0, 0x41
    stw     r0, 0xf0(r28)
branch_0x8003deb8:
    addi    r27, r27, 0x1
    addi    r29, r29, 0x4
branch_0x8003dec0:
    lwz     r0, 0x14(r30)
    cmpw    r27, r0
    blt+    branch_0x8003de8c
branch_0x8003decc:
    lmw     r27, 0x3c(sp)
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl killChildren__13TEnemyManagerFv
killChildren__13TEnemyManagerFv: # 0x8003dee4
    li      r6, 0x0
    li      r4, 0x0
    b       branch_0x8003df0c

branch_0x8003def0:
    lwz     r5, 0x18(r3)
    addi    r6, r6, 0x1
    lwzx    r5, r5, r4
    addi    r4, r4, 0x4
    lwz     r0, 0xf0(r5)
    ori     r0, r0, 0x41
    stw     r0, 0xf0(r5)
branch_0x8003df0c:
    lwz     r0, 0x14(r3)
    cmpw    r6, r0
    blt+    branch_0x8003def0
    blr


.globl getFarOutEnemy__13TEnemyManagerFv
getFarOutEnemy__13TEnemyManagerFv: # 0x8003df1c
    lfs     f1, -0x7418(rtoc)
    li      r8, 0x0
    lwz     r6, 0x38(r3)
    li      r9, 0x0
    li      r4, 0x0
    b       branch_0x8003df84

branch_0x8003df34:
    lwz     r5, 0x18(r3)
    lwzx    r7, r5, r4
    lwz     r5, 0xf0(r7)
    clrlwi. r0, r5, 31
    beq-    branch_0x8003df50
    mr      r8, r7
    b       branch_0x8003dfb4

branch_0x8003df50:
    rlwinm. r0, r5, 0, 29, 29
    beq-    branch_0x8003df7c
    rlwinm. r0, r5, 0, 20, 20
    beq-    branch_0x8003df7c
    cmplwi  r8, 0x0
    beq-    branch_0x8003df74
    lfs     f0, 0x134(r7)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8003df7c
branch_0x8003df74:
    mr      r8, r7
    lfs     f1, 0x134(r7)
branch_0x8003df7c:
    addi    r9, r9, 0x1
    addi    r4, r4, 0x4
branch_0x8003df84:
    cmplwi  r6, 0x0
    bne-    branch_0x8003df94
    lwz     r5, 0x14(r3)
    b       branch_0x8003dfac

branch_0x8003df94:
    lbz     r0, 0xa4(r6)
    lwz     r5, 0x14(r3)
    cmpw    r0, r5
    ble-    branch_0x8003dfa8
    b       branch_0x8003dfac

branch_0x8003dfa8:
    mr      r5, r0
branch_0x8003dfac:
    cmpw    r9, r5
    blt+    branch_0x8003df34
branch_0x8003dfb4:
    mr      r3, r8
    blr


.globl getDeadEnemy__13TEnemyManagerFv
getDeadEnemy__13TEnemyManagerFv: # 0x8003dfbc
    lwz     r4, 0x38(r3)
    cmplwi  r4, 0x0
    bne-    branch_0x8003dfd0
    lwz     r4, 0x14(r3)
    b       branch_0x8003dfe8

branch_0x8003dfd0:
    lbz     r0, 0xa4(r4)
    lwz     r4, 0x14(r3)
    cmpw    r0, r4
    ble-    branch_0x8003dfe4
    b       branch_0x8003dfe8

branch_0x8003dfe4:
    mr      r4, r0
branch_0x8003dfe8:
    cmpwi   r4, 0x0
    mtctr   r4
    li      r4, 0x0
    ble-    branch_0x8003e01c
branch_0x8003dff8:
    lwz     r5, 0x18(r3)
    lwzx    r5, r5, r4
    lwz     r0, 0xf0(r5)
    clrlwi. r0, r0, 31
    beq-    branch_0x8003e014
    mr      r3, r5
    blr

branch_0x8003e014:
    addi    r4, r4, 0x4
    bdnz+      branch_0x8003dff8
branch_0x8003e01c:
    li      r3, 0x0
    blr


.globl getNearestEnemy__13TEnemyManagerFRCQ29JGeometry8TVec3_f_
getNearestEnemy__13TEnemyManagerFRCQ29JGeometry8TVec3_f_: # 0x8003e024
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stmw    r26, 0x30(sp)
    addi    r26, r3, 0x0
    addi    r27, r4, 0x0
    li      r29, 0x0
    li      r28, 0x0
    li      r31, 0x0
    lfs     f31, -0x7414(rtoc)
    b       branch_0x8003e094

branch_0x8003e054:
    lwz     r3, 0x18(r26)
    lwzx    r30, r3, r31
    lwz     r0, 0xf0(r30)
    clrlwi. r0, r0, 31
    bne-    branch_0x8003e08c
    addi    r3, r27, 0x0
    addi    r4, r30, 0x10
    bl      PSVECDistance
    cmplwi  r29, 0x0
    beq-    branch_0x8003e084
    fcmpo   cr0, f31, f1
    ble-    branch_0x8003e08c
branch_0x8003e084:
    mr      r29, r30
    fmr     f31, f1
branch_0x8003e08c:
    addi    r28, r28, 0x1
    addi    r31, r31, 0x4
branch_0x8003e094:
    lwz     r3, 0x38(r26)
    cmplwi  r3, 0x0
    bne-    branch_0x8003e0a8
    lwz     r3, 0x14(r26)
    b       branch_0x8003e0c0

branch_0x8003e0a8:
    lbz     r0, 0xa4(r3)
    lwz     r3, 0x14(r26)
    cmpw    r0, r3
    ble-    branch_0x8003e0bc
    b       branch_0x8003e0c0

branch_0x8003e0bc:
    mr      r3, r0
branch_0x8003e0c0:
    cmpw    r28, r3
    blt+    branch_0x8003e054
    mr      r3, r29
    lmw     r26, 0x30(sp)
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl perform__13TEnemyManagerFUlPQ26JDrama9TGraphics
perform__13TEnemyManagerFUlPQ26JDrama9TGraphics: # 0x8003e0e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stmw    r26, 0x88(sp)
    mr      r29, r3
    addi    r30, r4, 0x0
    addi    r31, r5, 0x0
    lwz     r12, 0x0(r29)
    lwz     r12, 0x50(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x40(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x8003e148
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      performShared__13TEnemyManagerFUlPQ26JDrama9TGraphics
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r30
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    b       branch_0x8003e354

branch_0x8003e148:
    lwz     r0, 0x30(r29)
    clrlwi. r0, r0, 31
    beq-    branch_0x8003e198
    li      r0, 0xff
    lwz     r27, -0x5ff8(r13)
    stb     r0, 0x7c(sp)
    cmplwi  r27, 0x0
    stb     r0, 0x7d(sp)
    stb     r0, 0x7e(sp)
    stb     r0, 0x7f(sp)
    lwz     r28, 0x7c(sp)
    beq-    branch_0x8003e198
    bl      OSGetTick
    lwz     r0, 0x814(r27)
    addi    r4, r3, 0x0
    addi    r5, r28, 0x0
    mulli   r3, r0, 0x408
    addi    r3, r3, 0x4
    add     r3, r27, r3
    bl      append__10TTimeArrayFUlUl
branch_0x8003e198:
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x8003e1cc
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r31
    lwz     r12, 0x44(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
branch_0x8003e1cc:
    lwz     r0, 0x30(r29)
    clrlwi. r0, r0, 31
    beq-    branch_0x8003e24c
    lwz     r27, -0x5ff8(r13)
    cmplwi  r27, 0x0
    beq-    branch_0x8003e204
    bl      OSGetTick
    lwz     r0, 0x814(r27)
    addi    r4, r3, 0x0
    li      r5, 0x0
    mulli   r3, r0, 0x408
    addi    r3, r3, 0x4
    add     r3, r27, r3
    bl      append__10TTimeArrayFUlUl
branch_0x8003e204:
    li      r3, 0xff
    lwz     r27, -0x5ff8(r13)
    stb     r3, 0x78(sp)
    li      r0, 0x0
    cmplwi  r27, 0x0
    stb     r0, 0x79(sp)
    stb     r0, 0x7a(sp)
    stb     r3, 0x7b(sp)
    lwz     r28, 0x78(sp)
    beq-    branch_0x8003e24c
    bl      OSGetTick
    lwz     r0, 0x814(r27)
    addi    r4, r3, 0x0
    addi    r5, r28, 0x0
    mulli   r3, r0, 0x408
    addi    r3, r3, 0x4
    add     r3, r27, r3
    bl      append__10TTimeArrayFUlUl
branch_0x8003e24c:
    lwz     r3, 0x38(r29)
    cmplwi  r3, 0x0
    bne-    branch_0x8003e260
    lwz     r27, 0x14(r29)
    b       branch_0x8003e278

branch_0x8003e260:
    lbz     r0, 0xa4(r3)
    lwz     r27, 0x14(r29)
    cmpw    r0, r27
    ble-    branch_0x8003e274
    b       branch_0x8003e278

branch_0x8003e274:
    mr      r27, r0
branch_0x8003e278:
    clrlwi. r0, r30, 31
    addi    r5, r27, 0x0
    beq-    branch_0x8003e2b8
    slwi    r3, r5, 2
    b       branch_0x8003e2a8

branch_0x8003e28c:
    lwz     r4, 0x18(r29)
    addi    r5, r5, 0x1
    lwzx    r4, r4, r3
    addi    r3, r3, 0x4
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
branch_0x8003e2a8:
    lwz     r0, 0x14(r29)
    cmpw    r5, r0
    blt+    branch_0x8003e28c
    b       branch_0x8003e2d4

branch_0x8003e2b8:
    slwi    r3, r5, 2
    b       branch_0x8003e2c8

branch_0x8003e2c0:
    addi    r3, r3, 0x4
    addi    r5, r5, 0x1
branch_0x8003e2c8:
    lwz     r0, 0x14(r29)
    cmpw    r5, r0
    blt+    branch_0x8003e2c0
branch_0x8003e2d4:
    li      r26, 0x0
    li      r28, 0x0
    b       branch_0x8003e2fc

branch_0x8003e2e0:
    lwz     r3, 0x18(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwzx    r3, r3, r28
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    addi    r26, r26, 0x1
    addi    r28, r28, 0x4
branch_0x8003e2fc:
    cmpw    r26, r27
    blt+    branch_0x8003e2e0
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r30
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x30(r29)
    clrlwi. r0, r0, 31
    beq-    branch_0x8003e354
    lwz     r27, -0x5ff8(r13)
    cmplwi  r27, 0x0
    beq-    branch_0x8003e354
    bl      OSGetTick
    lwz     r0, 0x814(r27)
    addi    r4, r3, 0x0
    li      r5, 0x0
    mulli   r3, r0, 0x408
    addi    r3, r3, 0x4
    add     r3, r27, r3
    bl      append__10TTimeArrayFUlUl
branch_0x8003e354:
    lmw     r26, 0x88(sp)
    lwz     r0, 0xa4(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl performShared__13TEnemyManagerFUlPQ26JDrama9TGraphics
performShared__13TEnemyManagerFUlPQ26JDrama9TGraphics: # 0x8003e368
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stmw    r23, 0xcc(sp)
    mr      r31, r3
    addi    r28, r4, 0x0
    addi    r24, r5, 0x0
    lwz     r0, 0x30(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8003e3d4
    li      r0, 0xff
    lwz     r25, -0x5ff8(r13)
    stb     r0, 0xbc(sp)
    cmplwi  r25, 0x0
    stb     r0, 0xbd(sp)
    stb     r0, 0xbe(sp)
    stb     r0, 0xbf(sp)
    lwz     r23, 0xbc(sp)
    beq-    branch_0x8003e3d4
    bl      OSGetTick
    lwz     r0, 0x814(r25)
    addi    r4, r3, 0x0
    addi    r5, r23, 0x0
    mulli   r3, r0, 0x408
    addi    r3, r3, 0x4
    add     r3, r25, r3
    bl      append__10TTimeArrayFUlUl
branch_0x8003e3d4:
    lwz     r3, 0x38(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x8003e3e8
    lwz     r3, 0x14(r31)
    b       branch_0x8003e400

branch_0x8003e3e8:
    lbz     r0, 0xa4(r3)
    lwz     r3, 0x14(r31)
    cmpw    r0, r3
    ble-    branch_0x8003e3fc
    b       branch_0x8003e400

branch_0x8003e3fc:
    mr      r3, r0
branch_0x8003e400:
    cmpwi   r3, 0x0
    mtctr   r3
    li      r5, 0x0
    addi    r3, r5, 0x0
    ble-    branch_0x8003e434
branch_0x8003e414:
    lwz     r4, 0x18(r31)
    lwzx    r4, r4, r3
    lwz     r0, 0xf0(r4)
    clrlwi. r0, r0, 31
    bne-    branch_0x8003e42c
    addi    r5, r5, 0x1
branch_0x8003e42c:
    addi    r3, r3, 0x4
    bdnz+      branch_0x8003e414
branch_0x8003e434:
    cmpwi   r5, 0x0
    bgt-    branch_0x8003e478
    lwz     r0, 0x30(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x8003e748
    lwz     r23, -0x5ff8(r13)
    cmplwi  r23, 0x0
    beq-    branch_0x8003e748
    bl      OSGetTick
    lwz     r0, 0x814(r23)
    addi    r4, r3, 0x0
    li      r5, 0x0
    mulli   r3, r0, 0x408
    addi    r3, r3, 0x4
    add     r3, r23, r3
    bl      append__10TTimeArrayFUlUl
    b       branch_0x8003e748

branch_0x8003e478:
    rlwinm. r29, r28, 0, 30, 30
    beq-    branch_0x8003e4fc
    mr      r3, r31
    lwz     r12, 0x0(r31)
    mr      r4, r24
    lwz     r12, 0x44(r12)
    mtlr    r12
    blrl
    li      r27, 0x0
    li      r23, 0x0
    b       branch_0x8003e4e0

branch_0x8003e4a4:
    lwz     r0, 0x40(r31)
    li      r25, 0x0
    li      r24, 0x0
    add     r26, r0, r23
    b       branch_0x8003e4cc

branch_0x8003e4b8:
    lwz     r3, 0x0(r26)
    lwzx    r3, r3, r24
    bl      calcAnm__6MActorFv
    addi    r25, r25, 0x1
    addi    r24, r24, 0x4
branch_0x8003e4cc:
    lwz     r0, 0x4(r26)
    cmpw    r25, r0
    blt+    branch_0x8003e4b8
    addi    r27, r27, 0x1
    addi    r23, r23, 0xc
branch_0x8003e4e0:
    lwz     r0, 0x44(r31)
    cmpw    r27, r0
    blt+    branch_0x8003e4a4
    mr      r3, r31
    bl      setSharedFlags__13TEnemyManagerFv
    mr      r3, r31
    bl      updateAnmSoundShared__13TEnemyManagerFv
branch_0x8003e4fc:
    rlwinm. r30, r28, 0, 29, 29
    beq-    branch_0x8003e50c
    mr      r3, r31
    bl      copyFromShared__13TEnemyManagerFv
branch_0x8003e50c:
    lwz     r0, 0x30(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x8003e58c
    lwz     r23, -0x5ff8(r13)
    cmplwi  r23, 0x0
    beq-    branch_0x8003e544
    bl      OSGetTick
    lwz     r0, 0x814(r23)
    addi    r4, r3, 0x0
    li      r5, 0x0
    mulli   r3, r0, 0x408
    addi    r3, r3, 0x4
    add     r3, r23, r3
    bl      append__10TTimeArrayFUlUl
branch_0x8003e544:
    li      r3, 0xff
    lwz     r24, -0x5ff8(r13)
    stb     r3, 0xb8(sp)
    li      r0, 0x0
    cmplwi  r24, 0x0
    stb     r0, 0xb9(sp)
    stb     r0, 0xba(sp)
    stb     r3, 0xbb(sp)
    lwz     r23, 0xb8(sp)
    beq-    branch_0x8003e58c
    bl      OSGetTick
    lwz     r0, 0x814(r24)
    addi    r4, r3, 0x0
    addi    r5, r23, 0x0
    mulli   r3, r0, 0x408
    addi    r3, r3, 0x4
    add     r3, r24, r3
    bl      append__10TTimeArrayFUlUl
branch_0x8003e58c:
    lwz     r3, 0x38(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x8003e5a0
    lwz     r26, 0x14(r31)
    b       branch_0x8003e5b8

branch_0x8003e5a0:
    lbz     r0, 0xa4(r3)
    lwz     r26, 0x14(r31)
    cmpw    r0, r26
    ble-    branch_0x8003e5b4
    b       branch_0x8003e5b8

branch_0x8003e5b4:
    mr      r26, r0
branch_0x8003e5b8:
    clrlwi. r25, r28, 31
    beq-    branch_0x8003e5f4
    addi    r5, r26, 0x0
    slwi    r3, r26, 2
    b       branch_0x8003e5e8

branch_0x8003e5cc:
    lwz     r4, 0x18(r31)
    addi    r5, r5, 0x1
    lwzx    r4, r4, r3
    addi    r3, r3, 0x4
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
branch_0x8003e5e8:
    lwz     r0, 0x14(r31)
    cmpw    r5, r0
    blt+    branch_0x8003e5cc
branch_0x8003e5f4:
    rlwinm  r27, r28, 0, 22, 22
    li      r24, 0x0
    li      r23, 0x0
    b       branch_0x8003e708

branch_0x8003e604:
    lwz     r3, 0x18(r31)
    lwzx    r28, r3, r23
    lwz     r0, 0xf0(r28)
    clrlwi. r0, r0, 31
    bne-    branch_0x8003e700
    cmplwi  r25, 0x0
    beq-    branch_0x8003e634
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0xd0(r12)
    mtlr    r12
    blrl
branch_0x8003e634:
    cmplwi  r29, 0x0
    beq-    branch_0x8003e6a0
    mr      r3, r28
    bl      updateSquareToMario__11TSpineEnemyFv
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r28)
    rlwinm. r0, r0, 0, 17, 17
    bne-    branch_0x8003e698
    lwz     r3, 0x74(r28)
    bl      frameUpdate__6MActorFv
    lwz     r0, 0xf0(r28)
    rlwinm. r0, r0, 0, 29, 30
    bne-    branch_0x8003e6a0
    lwz     r3, 0x74(r28)
    bl      calc__6MActorFv
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0xf4(r12)
    mtlr    r12
    blrl
    b       branch_0x8003e6a0

branch_0x8003e698:
    lwz     r3, 0x74(r28)
    bl      matAnmFrameUpdate__6MActorFv
branch_0x8003e6a0:
    cmplwi  r30, 0x0
    beq-    branch_0x8003e6bc
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0xd4(r12)
    mtlr    r12
    blrl
branch_0x8003e6bc:
    lwz     r3, 0xf0(r28)
    rlwinm. r0, r3, 0, 29, 30
    bne-    branch_0x8003e700
    cmplwi  r30, 0x0
    beq-    branch_0x8003e6e0
    rlwinm. r0, r3, 0, 17, 17
    bne-    branch_0x8003e6e0
    lwz     r3, 0x74(r28)
    bl      viewCalc__6MActorFv
branch_0x8003e6e0:
    cmplwi  r27, 0x0
    beq-    branch_0x8003e700
    lwz     r4, 0xc4(r28)
    addi    r5, r28, 0x10
    lwz     r3, 0x74(r28)
    bl      setLightData__6MActorFPC12TBGCheckDataRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x74(r28)
    bl      entry__6MActorFv
branch_0x8003e700:
    addi    r24, r24, 0x1
    addi    r23, r23, 0x4
branch_0x8003e708:
    cmpw    r24, r26
    blt+    branch_0x8003e604
    lwz     r0, 0x30(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x8003e748
    lwz     r23, -0x5ff8(r13)
    cmplwi  r23, 0x0
    beq-    branch_0x8003e748
    bl      OSGetTick
    lwz     r0, 0x814(r23)
    addi    r4, r3, 0x0
    li      r5, 0x0
    mulli   r3, r0, 0x408
    addi    r3, r3, 0x4
    add     r3, r23, r3
    bl      append__10TTimeArrayFUlUl
branch_0x8003e748:
    lmw     r23, 0xcc(sp)
    lwz     r0, 0xf4(sp)
    addi    sp, sp, 0xf0
    mtlr    r0
    blr


.globl copyFromShared__13TEnemyManagerFv
copyFromShared__13TEnemyManagerFv: # 0x8003e75c
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x45dc
    stwu    sp, -0x100(sp)
    stmw    r23, 0xdc(sp)
    addi    r26, r3, 0x0
    mr      r3, r0
    addi    r4, sp, 0x78
    bl      PSMTXCopy
    lwz     r3, 0x38(r26)
    cmplwi  r3, 0x0
    bne-    branch_0x8003e798
    lwz     r29, 0x14(r26)
    b       branch_0x8003e7b0

branch_0x8003e798:
    lbz     r0, 0xa4(r3)
    lwz     r29, 0x14(r26)
    cmpw    r0, r29
    ble-    branch_0x8003e7ac
    b       branch_0x8003e7b0

branch_0x8003e7ac:
    mr      r29, r0
branch_0x8003e7b0:
    lis     r3, 0x8040
    addi    r31, r3, 0x45dc
    li      r28, 0x0
    li      r25, 0x0
    b       branch_0x8003e9a0

branch_0x8003e7c4:
    lwz     r3, 0x18(r26)
    lwzx    r27, r3, r25
    lwz     r3, 0xf0(r27)
    rlwinm. r0, r3, 0, 17, 17
    beq-    branch_0x8003e998
    rlwinm. r0, r3, 0, 29, 30
    bne-    branch_0x8003e998
    lwz     r3, 0x74(r27)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    lwz     r0, 0x44(r26)
    li      r6, 0x0
    li      r4, 0x0
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x8003e998
branch_0x8003e804:
    cmpwi   r3, 0x0
    blt-    branch_0x8003e820
    lwz     r5, 0x40(r26)
    addi    r0, r4, 0x8
    lwzx    r0, r5, r0
    cmpw    r3, r0
    bne-    branch_0x8003e98c
branch_0x8003e820:
    mulli   r0, r6, 0xc
    lwz     r3, 0x40(r26)
    lha     r5, 0x7c(r27)
    add     r6, r3, r0
    lwz     r4, 0x4(r6)
    mr      r3, r27
    lwz     r6, 0x0(r6)
    divw    r0, r5, r4
    mullw   r0, r0, r4
    subf    r0, r0, r5
    slwi    r0, r0, 2
    lwzx    r4, r6, r0
    lwz     r30, 0x4(r4)
    mr      r24, r30
    bl      getModel__10TLiveActorCFv
    addi    r23, r3, 0x20
    lfs     f1, 0x24(r27)
    lfs     f2, 0x28(r27)
    mr      r3, r23
    lfs     f3, 0x2c(r27)
    mr      r4, r23
    bl      PSMTXScaleApply
    addi    r4, r23, 0x0
    addi    r3, sp, 0x78
    addi    r5, sp, 0xa8
    bl      PSMTXConcat
    addi    r3, sp, 0xa8
    addi    r4, r31, 0x0
    bl      PSMTXCopy
    mr      r3, r24
    lwz     r12, 0x0(r24)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    mr      r3, r27
    bl      getModel__10TLiveActorCFv
    lwz     r0, 0x7c(r3)
    lwz     r5, 0x60(r3)
    slwi    r0, r0, 2
    lwz     r4, 0x64(r3)
    add     r6, r5, r0
    lwz     r5, 0x0(r6)
    lwzx    r0, r4, r0
    stw     r0, 0x0(r6)
    lwz     r0, 0x7c(r3)
    lwz     r4, 0x64(r3)
    slwi    r0, r0, 2
    stwx    r5, r4, r0
    lwz     r0, 0x7c(r3)
    lwz     r5, 0x68(r3)
    slwi    r0, r0, 2
    lwz     r4, 0x6c(r3)
    add     r6, r5, r0
    lwz     r5, 0x0(r6)
    lwzx    r0, r4, r0
    stw     r0, 0x0(r6)
    lwz     r0, 0x7c(r3)
    lwz     r4, 0x6c(r3)
    addi    r3, r27, 0x0
    slwi    r0, r0, 2
    stwx    r5, r4, r0
    bl      getModel__10TLiveActorCFv
    bl      calcNrmMtx__8J3DModelFv
    mr      r3, r27
    bl      getModel__10TLiveActorCFv
    bl      prepareShapePackets__8J3DModelFv
    lwz     r4, 0x4(r30)
    mr      r3, r27
    lhz     r24, 0x98(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x7c(r3)
    mr      r5, r24
    lwz     r0, 0x7c(r30)
    lwz     r6, 0x64(r3)
    slwi    r4, r4, 2
    lwz     r3, 0x64(r30)
    slwi    r0, r0, 2
    lwzx    r4, r6, r4
    lwzx    r3, r3, r0
    bl      J3DPSMtxArrayCopy__FPA4_fPA4_fUl
    lwz     r4, 0x4(r30)
    mr      r3, r27
    lhz     r24, 0x98(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r0, 0x7c(r3)
    mulli   r4, r24, 0x30
    lwz     r3, 0x64(r3)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      DCStoreRange
    b       branch_0x8003e998

branch_0x8003e98c:
    addi    r6, r6, 0x1
    addi    r4, r4, 0xc
    bdnz+      branch_0x8003e804
branch_0x8003e998:
    addi    r28, r28, 0x1
    addi    r25, r25, 0x4
branch_0x8003e9a0:
    cmpw    r28, r29
    blt+    branch_0x8003e7c4
    lis     r3, 0x8040
    addi    r4, r3, 0x45dc
    addi    r3, sp, 0x78
    bl      PSMTXCopy
    lmw     r23, 0xdc(sp)
    lwz     r0, 0x104(sp)
    addi    sp, sp, 0x100
    mtlr    r0
    blr


.globl updateAnmSoundShared__13TEnemyManagerFv
updateAnmSoundShared__13TEnemyManagerFv: # 0x8003e9cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r27, 0x5c(sp)
    mr      r29, r3
    lwz     r0, 0x40(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8003eb10
    lwz     r3, 0x18(r29)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x80(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8003eb10
    li      r30, 0x0
    li      r28, 0x0
    b       branch_0x8003eb04

branch_0x8003ea0c:
    lwz     r3, 0x18(r29)
    lwzx    r31, r3, r28
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 29, 30
    bne-    branch_0x8003eafc
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    lwz     r0, 0x44(r29)
    li      r6, 0x0
    li      r4, 0x0
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x8003eafc
branch_0x8003ea44:
    cmpwi   r3, 0x0
    blt-    branch_0x8003ea60
    lwz     r5, 0x40(r29)
    addi    r0, r4, 0x8
    lwzx    r0, r5, r0
    cmpw    r3, r0
    bne-    branch_0x8003eaf0
branch_0x8003ea60:
    mulli   r27, r6, 0xc
    lwz     r0, 0x40(r29)
    lha     r5, 0x7c(r31)
    add     r6, r0, r27
    lwz     r3, 0x4(r6)
    li      r4, 0x0
    lwz     r6, 0x0(r6)
    divw    r0, r5, r3
    mullw   r0, r0, r3
    subf    r0, r0, r5
    slwi    r0, r0, 2
    lwzx    r3, r6, r0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x84(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8003eafc
    lwz     r0, 0x40(r29)
    li      r4, 0x0
    lha     r5, 0x7c(r31)
    add     r6, r0, r27
    lwz     r3, 0x4(r6)
    lwz     r6, 0x0(r6)
    divw    r0, r5, r3
    mullw   r0, r0, r3
    subf    r0, r0, r5
    slwi    r0, r0, 2
    lwzx    r3, r6, r0
    bl      getFrameCtrl__6MActorFi
    lfs     f2, 0xc(r3)
    addi    r4, r31, 0x10
    lfs     f1, 0x10(r3)
    li      r5, 0x0
    lwz     r3, 0x80(r31)
    li      r6, 0x4
    bl      animeLoop__9MAnmSoundFP3VecffUlUc
    b       branch_0x8003eafc

branch_0x8003eaf0:
    addi    r6, r6, 0x1
    addi    r4, r4, 0xc
    bdnz+      branch_0x8003ea44
branch_0x8003eafc:
    addi    r30, r30, 0x1
    addi    r28, r28, 0x4
branch_0x8003eb04:
    lwz     r0, 0x14(r29)
    cmpw    r30, r0
    blt+    branch_0x8003ea0c
branch_0x8003eb10:
    lmw     r27, 0x5c(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl setSharedFlags__13TEnemyManagerFv
setSharedFlags__13TEnemyManagerFv: # 0x8003eb24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    stw     r28, 0x28(sp)
    lwz     r0, 0x40(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8003ebe4
    li      r28, 0x0
    li      r30, 0x0
    b       branch_0x8003ebd8

branch_0x8003eb5c:
    lwz     r3, 0x18(r31)
    lwzx    r29, r3, r30
    lwz     r0, 0xf0(r29)
    rlwinm  r0, r0, 0, 18, 16
    stw     r0, 0xf0(r29)
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 29, 30
    bne-    branch_0x8003ebd0
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    lwz     r0, 0x44(r31)
    li      r4, 0x0
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x8003ebd0
branch_0x8003eb9c:
    cmpwi   r3, 0x0
    blt-    branch_0x8003ebb8
    lwz     r5, 0x40(r31)
    addi    r0, r4, 0x8
    lwzx    r0, r5, r0
    cmpw    r3, r0
    bne-    branch_0x8003ebc8
branch_0x8003ebb8:
    lwz     r0, 0xf0(r29)
    ori     r0, r0, 0x4000
    stw     r0, 0xf0(r29)
    b       branch_0x8003ebd0

branch_0x8003ebc8:
    addi    r4, r4, 0xc
    bdnz+      branch_0x8003eb9c
branch_0x8003ebd0:
    addi    r28, r28, 0x1
    addi    r30, r30, 0x4
branch_0x8003ebd8:
    lwz     r0, 0x14(r31)
    cmpw    r28, r0
    blt+    branch_0x8003eb5c
branch_0x8003ebe4:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl clipEnemies__13TEnemyManagerFPQ26JDrama9TGraphics
clipEnemies__13TEnemyManagerFPQ26JDrama9TGraphics: # 0x8003ec04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x38(r3)
    cmplwi  r5, 0x0
    bne-    branch_0x8003ec2c
    lwz     r5, -0x70b0(r13)
    lfs     f2, -0x7410(rtoc)
    lfs     f1, 0x9c(r5)
    b       branch_0x8003ec34

branch_0x8003ec2c:
    lfs     f1, 0x68(r5)
    lfs     f2, 0x54(r5)
branch_0x8003ec34:
    bl      clipActorsAux__12TLiveManagerFPQ26JDrama9TGraphicsff
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemies__13TEnemyManagerFi
createEnemies__13TEnemyManagerFi: # 0x8003ec48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stmw    r25, 0x94(sp)
    mr      r30, r3
    mr      r31, r4
    lwz     r3, 0x14(r3)
    lwz     r4, 0x10(r30)
    add     r0, r31, r3
    cmpw    r0, r4
    ble-    branch_0x8003ec78
    subf    r31, r3, r4
branch_0x8003ec78:
    lwz     r4, 0x38(r30)
    cmplwi  r4, 0x0
    beq-    branch_0x8003ec98
    lbz     r4, 0x90(r4)
    add     r0, r31, r3
    cmpw    r0, r4
    ble-    branch_0x8003ec98
    subf    r31, r3, r4
branch_0x8003ec98:
    cmpwi   r31, 0x0
    blt-    branch_0x8003ed88
    lis     r3, 0x8037
    addi    r29, r3, 0x6fd8
    addi    r27, sp, 0x5c
    addi    r26, sp, 0x6c
    li      r25, 0x0
    b       branch_0x8003ed80

branch_0x8003ecb8:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    stw     r3, 0x84(sp)
    lwz     r0, 0x84(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x8003ed7c
    lwz     r4, -0x5db8(r13)
    mr      r3, r29
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r29
    mtlr    r12
    blrl
    addi    r28, r3, 0x10
    addi    r4, r28, 0x0
    addi    r3, sp, 0x60
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x60(sp)
    addi    r4, r27, 0x0
    addi    r3, sp, 0x80
    stw     r0, 0x5c(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x80(sp)
    addi    r4, r28, 0x0
    addi    r5, r26, 0x0
    stw     r0, 0x7c(sp)
    addi    r3, sp, 0x68
    addi    r6, sp, 0x84
    lwz     r0, 0x7c(sp)
    stw     r0, 0x6c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x68(sp)
    addi    r3, sp, 0x78
    addi    r4, sp, 0x64
    stw     r0, 0x64(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r3, 0x84(sp)
    mr      r4, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0xbc(r12)
    mtlr    r12
    blrl
branch_0x8003ed7c:
    addi    r25, r25, 0x1
branch_0x8003ed80:
    cmpw    r25, r31
    blt+    branch_0x8003ecb8
branch_0x8003ed88:
    lmw     r25, 0x94(sp)
    lwz     r0, 0xb4(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
__ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator: # 0x8003ed9c
    lwz     r0, 0x0(r4)
    stw     r0, 0x0(r3)
    blr


.globl end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv: # 0x8003eda8
    addi    r0, r4, 0x8
    stw     r0, 0x0(r3)
    blr


.globl createEnemyInstance__13TEnemyManagerFv
createEnemyInstance__13TEnemyManagerFv: # 0x8003edb4
    li      r3, 0x0
    blr


.globl load__13TEnemyManagerFR20JSUMemoryInputStream
load__13TEnemyManagerFR20JSUMemoryInputStream: # 0x8003edbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      load__12TLiveManagerFR20JSUMemoryInputStream
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x44
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getSharedMActorSet__13TEnemyManagerFi
getSharedMActorSet__13TEnemyManagerFi: # 0x8003ee18
    lwz     r6, 0x40(r3)
    cmplwi  r6, 0x0
    bne-    branch_0x8003ee2c
    li      r3, 0x0
    blr

branch_0x8003ee2c:
    lwz     r0, 0x44(r3)
    li      r5, 0x0
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x8003ee58
branch_0x8003ee40:
    add     r3, r6, r5
    lwz     r0, 0x8(r3)
    cmpw    r4, r0
    beqlr-    

    addi    r5, r5, 0xc
    bdnz+      branch_0x8003ee40
branch_0x8003ee58:
    li      r3, 0x0
    blr


.globl createSharedMActorSet__13TEnemyManagerFPPCc
createSharedMActorSet__13TEnemyManagerFPPCc: # 0x8003ee60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r25, 0x24(sp)
    mr      r30, r3
    addi    r31, r4, 0x0
    lwz     r0, 0x44(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x8003ef38
    li      r4, 0x0
    li      r3, 0x0
    b       branch_0x8003ee98

branch_0x8003ee90:
    addi    r4, r4, 0x1
    addi    r3, r3, 0x4
branch_0x8003ee98:
    lwzx    r0, r31, r3
    cmplwi  r0, 0x0
    bne+    branch_0x8003ee90
    lwz     r26, 0x44(r30)
    stw     r4, 0x44(r30)
    lwz     r28, 0x44(r30)
    mulli   r3, r28, 0xc
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x8004
    subi    r4, r4, 0x10b4
    addi    r7, r28, 0x0
    li      r5, 0x0
    li      r6, 0xc
    bl      __construct_new_array
    stw     r3, 0x40(r30)
    li      r25, 0x0
    li      r29, 0x0
    li      r28, 0x0
    b       branch_0x8003ef2c

branch_0x8003eee8:
    mr      r3, r30
    bl      getModelDataKeeper__11TObjManagerFv
    li      r4, 0x0
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r27, 0x0(r3)
    mr      r3, r30
    bl      getMActorAnmData__11TObjManagerFv
    lwz     r0, 0x40(r30)
    addi    r4, r3, 0x0
    lwzx    r6, r31, r29
    addi    r5, r27, 0x0
    addi    r7, r26, 0x0
    add     r3, r0, r28
    bl      init__16TSharedMActorSetFP13MActorAnmDataP12J3DModelDataPCci
    addi    r25, r25, 0x1
    addi    r29, r29, 0x4
    addi    r28, r28, 0xc
branch_0x8003ef2c:
    lwz     r0, 0x44(r30)
    cmpw    r25, r0
    blt+    branch_0x8003eee8
branch_0x8003ef38:
    lmw     r25, 0x24(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __ct__16TSharedMActorSetFv
__ct__16TSharedMActorSetFv: # 0x8003ef4c
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    blr


.globl __dt__13TEnemyManagerFv
__dt__13TEnemyManagerFv: # 0x8003ef60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8003efd8
    lis     r3, 0x803b
    subi    r0, r3, 0x1800
    stw     r0, 0x0(r30)
    beq-    branch_0x8003efc8
    lis     r3, 0x803e
    subi    r0, r3, 0x6098
    stw     r0, 0x0(r30)
    beq-    branch_0x8003efc8
    lis     r3, 0x803e
    subi    r0, r3, 0x6058
    stw     r0, 0x0(r30)
    beq-    branch_0x8003efc8
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8003efc8:
    extsh.  r0, r31
    ble-    branch_0x8003efd8
    mr      r3, r30
    bl      __dl__FPv
branch_0x8003efd8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__13TEnemyManagerFPCc
__ct__13TEnemyManagerFPCc: # 0x8003eff4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__12TLiveManagerFPCc
    lwz     r31, 0x8(sp)
    lis     r3, 0x803b
    subi    r0, r3, 0x1800
    stw     r0, 0x0(r31)
    li      r3, 0x0
    li      r0, -0x1
    stw     r3, 0x38(r31)
    mr      r4, r31
    lfs     f0, -0x740c(rtoc)
    stfs    f0, 0x3c(r31)
    stw     r3, 0x40(r31)
    stw     r3, 0x44(r31)
    stw     r3, 0x48(r31)
    stw     r0, 0x4c(r31)
    stw     r3, 0x50(r31)
    lwz     r3, -0x70b0(r13)
    bl      registerEnemyManager__10TConductorFP13TEnemyManager
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__12TLiveManagerFv
__dt__12TLiveManagerFv: # 0x8003f06c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8003f0d4
    lis     r3, 0x803e
    subi    r0, r3, 0x6098
    stw     r0, 0x0(r30)
    beq-    branch_0x8003f0c4
    lis     r3, 0x803e
    subi    r0, r3, 0x6058
    stw     r0, 0x0(r30)
    beq-    branch_0x8003f0c4
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8003f0c4:
    extsh.  r0, r31
    ble-    branch_0x8003f0d4
    mr      r3, r30
    bl      __dl__FPv
branch_0x8003f0d4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl init__16TSharedMActorSetFP13MActorAnmDataP12J3DModelDataPCci
init__16TSharedMActorSetFP13MActorAnmDataP12J3DModelDataPCci: # 0x8003f0f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stfd    f30, 0x60(sp)
    stmw    r23, 0x3c(sp)
    mr      r27, r3
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r30, r6, 0x0
    stw     r7, 0x4(r3)
    lwz     r0, 0x4(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x0(r27)
    lis     r25, 0x4330
    li      r31, 0x0
    lwz     r0, 0x4(r27)
    li      r26, 0x0
    lfd     f31, -0x7420(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x740c(rtoc)
    stw     r0, 0x34(sp)
    stw     r25, 0x30(sp)
    lfd     f0, 0x30(sp)
    fsubs   f0, f0, f31
    fdivs   f30, f1, f0
    b       branch_0x8003f21c

branch_0x8003f160:
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8003f184
    addi    r3, r24, 0x0
    addi    r4, r29, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x8003f184:
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8003f1a0
    addi    r3, r23, 0x0
    addi    r4, r28, 0x0
    bl      __ct__6MActorFP13MActorAnmData
branch_0x8003f1a0:
    lwz     r3, 0x0(r27)
    addi    r4, r24, 0x0
    li      r5, 0x0
    stwx    r23, r3, r26
    lwz     r3, 0x0(r27)
    lwzx    r3, r3, r26
    bl      setModel__6MActorFP8J3DModelUl
    lwz     r3, 0x0(r27)
    mr      r4, r30
    lwzx    r3, r3, r26
    bl      setBck__6MActorFPCc
    lwz     r3, 0x0(r27)
    li      r4, 0x0
    lwzx    r3, r3, r26
    bl      getFrameCtrl__6MActorFi
    lha     r0, 0x8(r3)
    xoris   r4, r31, 0x8000
    stw     r4, 0x34(sp)
    addi    r31, r31, 0x1
    xoris   r0, r0, 0x8000
    stw     r0, 0x2c(sp)
    addi    r26, r26, 0x4
    stw     r25, 0x28(sp)
    lfd     f0, 0x28(sp)
    stw     r25, 0x30(sp)
    fsubs   f0, f0, f31
    lfd     f1, 0x30(sp)
    fsubs   f1, f1, f31
    fmuls   f0, f30, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x10(r3)
branch_0x8003f21c:
    lwz     r0, 0x4(r27)
    cmpw    r31, r0
    blt+    branch_0x8003f160
    lwz     r3, 0x0(r27)
    li      r4, 0x0
    lwz     r3, 0x0(r3)
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x8(r27)
    lmw     r23, 0x3c(sp)
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl __ct__17TSpineEnemyParamsFPCc
__ct__17TSpineEnemyParamsFPCc: # 0x8003f258
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    stw     r4, 0x0(r3)
    lis     r3, 0x8037
    addi    r31, r3, 0x6ef8
    stw     r0, 0x4(r30)
    addi    r3, r31, 0xec
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x8
    addi    r6, r31, 0xec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0x8(r30)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x7408(rtoc)
    addi    r3, r31, 0xfc
    stfs    f0, 0x18(r30)
    stw     r28, 0x8(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x1c
    addi    r6, r31, 0xfc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c(r30)
    addi    r3, r31, 0x10c
    lfs     f0, -0x7404(rtoc)
    stfs    f0, 0x2c(r30)
    stw     r28, 0x1c(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x30
    addi    r6, r31, 0x10c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x30(r30)
    addi    r3, r31, 0x11c
    lfs     f0, -0x7400(rtoc)
    stfs    f0, 0x40(r30)
    stw     r28, 0x30(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x44
    addi    r6, r31, 0x11c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x44(r30)
    addi    r3, r31, 0x12c
    lfs     f0, -0x7410(rtoc)
    stfs    f0, 0x54(r30)
    stw     r28, 0x44(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x58
    addi    r6, r31, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x58(r30)
    addi    r3, r31, 0x138
    lfs     f0, -0x73fc(rtoc)
    stfs    f0, 0x68(r30)
    stw     r28, 0x58(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x6c
    addi    r6, r31, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r28, r3, 0x2f1c
    stw     r28, 0x6c(r30)
    li      r0, 0x1
    lis     r3, 0x803b
    stb     r0, 0x7c(r30)
    subi    r29, r3, 0x2f28
    addi    r3, r31, 0x148
    stw     r29, 0x6c(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x80
    addi    r6, r31, 0x148
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x80(r30)
    li      r0, 0x64
    addi    r3, r31, 0x158
    stb     r0, 0x90(r30)
    stw     r29, 0x80(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x94
    addi    r6, r31, 0x158
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x94(r30)
    li      r0, 0xa
    addi    r3, r30, 0x0
    stb     r0, 0xa4(r30)
    stw     r29, 0x94(r30)
    lwz     r4, 0x0(r30)
    bl      load__7TParamsFPCc
    lwz     r0, 0x24(sp)
    mr      r3, r30
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl __sinit_enemymanager_cpp
__sinit_enemymanager_cpp: # 0x8003f43c
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x110
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8003f484
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8003f484:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8003f4b4
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8003f4b4:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8003f4e4
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8003f4e4:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8003f514
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8003f514:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8003f544
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8003f544:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8003f574
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8003f574:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8003f5a4
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8003f5a4:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8003f5d4
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8003f5d4:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8003f604
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8003f604:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8003f634
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8003f634:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8003f664
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8003f664:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8003f694
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8003f694:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8003f6c4
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8003f6c4:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8003f6f4
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8003f6f4:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8003f724
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8003f724:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

