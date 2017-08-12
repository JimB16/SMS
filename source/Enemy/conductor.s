
.globl perform__10TConductorFUlPQ26JDrama9TGraphics
perform__10TConductorFUlPQ26JDrama9TGraphics: # 0x80033ed8
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x240(sp)
    stmw    r24, 0x220(sp)
    addi    r26, r4, 0x0
    addi    r25, r3, 0x0
    addi    r27, r5, 0x0
    beq-    branch_0x80033f14
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x124(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80033f14
    mr      r3, r25
    bl      genEnemyFromPollution__10TConductorFv
branch_0x80033f14:
    addi    r31, r25, 0x18
    rlwinm  r30, r26, 0, 30, 30
    addi    r29, r25, 0x38
    li      r28, 0x1
branch_0x80033f24:
    lwz     r0, 0x18(r25)
    cmpwi   r28, 0x0
    stw     r0, 0x21c(sp)
    beq-    branch_0x80033ff4
    b       branch_0x80033f80

branch_0x80033f38:
    lwz     r3, 0x21c(sp)
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80033f74
    lwz     r3, 0x21c(sp)
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x80033f74:
    lwz     r3, 0x21c(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x21c(sp)
branch_0x80033f80:
    stw     r31, 0x1e4(sp)
    lwz     r0, 0x21c(sp)
    lwz     r3, 0x1e4(sp)
    stw     r0, 0x178(sp)
    stw     r3, 0x17c(sp)
    lwz     r3, 0x178(sp)
    lwz     r0, 0x17c(sp)
    cmplw   r3, r0
    bne+    branch_0x80033f38
    b       branch_0x80034018

branch_0x80033fa8:
    b       branch_0x80033ff4

branch_0x80033fac:
    lwz     r3, 0x21c(sp)
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    bne-    branch_0x80033fe8
    lwz     r3, 0x21c(sp)
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x80033fe8:
    lwz     r3, 0x21c(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x21c(sp)
branch_0x80033ff4:
    stw     r31, 0x1d8(sp)
    lwz     r0, 0x21c(sp)
    lwz     r3, 0x1d8(sp)
    stw     r0, 0x170(sp)
    stw     r3, 0x174(sp)
    lwz     r3, 0x170(sp)
    lwz     r0, 0x174(sp)
    cmplw   r3, r0
    bne+    branch_0x80033fac
branch_0x80034018:
    cmplwi  r30, 0x0
    beq-    branch_0x800340cc
    lwz     r0, 0x38(r25)
    lwz     r3, R13Off_m0x7118(r13)
    stw     r0, 0x158(sp)
    stw     r29, 0x15c(sp)
    lfs     f4, 0x9c(r25)
    lfs     f3, 0xe8(r27)
    lfs     f2, 0x4c(r3)
    lfs     f1, 0x48(r3)
    bl      SetViewFrustumClipCheckPerspective__Fffff
    b       branch_0x800340ac

branch_0x80034048:
    lwz     r3, 0x158(sp)
    lwz     r24, 0x8(r3)
    lwz     r0, 0xf0(r24)
    rlwinm. r0, r0, 0, 23, 23
    bne-    branch_0x8003406c
    lwz     r0, 0xf0(r24)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r24)
    b       branch_0x800340a0

branch_0x8003406c:
    lfs     f1, -0x7510(r2)
    addi    r3, r27, 0x0
    addi    r4, r24, 0x10
    bl      ViewFrustumClipCheck__FPQ26JDrama9TGraphicsP3Vecf
    cmpwi   r3, 0x0
    beq-    branch_0x80034094
    lwz     r0, 0xf0(r24)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r24)
    b       branch_0x800340a0

branch_0x80034094:
    lwz     r0, 0xf0(r24)
    ori     r0, r0, 0x4
    stw     r0, 0xf0(r24)
branch_0x800340a0:
    lwz     r3, 0x158(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x158(sp)
branch_0x800340ac:
    lwz     r3, 0x15c(sp)
    lwz     r0, 0x158(sp)
    stw     r3, 0x108(sp)
    stw     r0, 0x104(sp)
    lwz     r0, 0x108(sp)
    lwz     r3, 0x104(sp)
    cmplw   r3, r0
    bne+    branch_0x80034048
branch_0x800340cc:
    lwz     r0, 0x38(r25)
    cmpwi   r28, 0x0
    stw     r0, 0x218(sp)
    stw     r29, 0x214(sp)
    beq-    branch_0x8003419c
    b       branch_0x8003412c

branch_0x800340e4:
    lwz     r3, 0x218(sp)
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xec(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80034120
    lwz     r3, 0x218(sp)
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x80034120:
    lwz     r3, 0x218(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x218(sp)
branch_0x8003412c:
    lwz     r3, 0x214(sp)
    lwz     r0, 0x218(sp)
    stw     r3, 0x154(sp)
    stw     r0, 0x150(sp)
    lwz     r0, 0x154(sp)
    lwz     r3, 0x150(sp)
    cmplw   r3, r0
    bne+    branch_0x800340e4
    b       branch_0x800341bc

branch_0x80034150:
    b       branch_0x8003419c

branch_0x80034154:
    lwz     r3, 0x218(sp)
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xec(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    bne-    branch_0x80034190
    lwz     r3, 0x218(sp)
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x80034190:
    lwz     r3, 0x218(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x218(sp)
branch_0x8003419c:
    lwz     r3, 0x214(sp)
    lwz     r0, 0x218(sp)
    stw     r3, 0x14c(sp)
    stw     r0, 0x148(sp)
    lwz     r0, 0x14c(sp)
    lwz     r3, 0x148(sp)
    cmplw   r3, r0
    bne+    branch_0x80034154
branch_0x800341bc:
    subic.  r28, r28, 0x1
    bge+    branch_0x80033f24
    lwz     r3, 0x68(r25)
    addi    r0, r25, 0x68
    stw     r3, 0x210(sp)
    stw     r0, 0x20c(sp)
    b       branch_0x800341fc

branch_0x800341d8:
    lwz     r3, 0x210(sp)
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    lwz     r3, 0x210(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x210(sp)
branch_0x800341fc:
    lwz     r3, 0x20c(sp)
    lwz     r0, 0x210(sp)
    stw     r3, 0x144(sp)
    stw     r0, 0x140(sp)
    lwz     r0, 0x144(sp)
    lwz     r3, 0x140(sp)
    cmplw   r3, r0
    bne+    branch_0x800341d8
    lwz     r3, 0x48(r25)
    addi    r0, r25, 0x48
    stw     r3, 0x208(sp)
    stw     r0, 0x204(sp)
    b       branch_0x80034254

branch_0x80034230:
    lwz     r3, 0x208(sp)
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    lwz     r3, 0x208(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x208(sp)
branch_0x80034254:
    lwz     r3, 0x204(sp)
    lwz     r0, 0x208(sp)
    stw     r3, 0x13c(sp)
    stw     r0, 0x138(sp)
    lwz     r0, 0x13c(sp)
    lwz     r3, 0x138(sp)
    cmplw   r3, r0
    bne+    branch_0x80034230
    lwz     r3, 0x58(r25)
    addi    r0, r25, 0x58
    stw     r3, 0x200(sp)
    stw     r0, 0x1fc(sp)
    b       branch_0x800342ac

branch_0x80034288:
    lwz     r3, 0x200(sp)
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    lwz     r3, 0x200(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x200(sp)
branch_0x800342ac:
    lwz     r3, 0x1fc(sp)
    lwz     r0, 0x200(sp)
    stw     r3, 0x134(sp)
    stw     r0, 0x130(sp)
    lwz     r0, 0x134(sp)
    lwz     r3, 0x130(sp)
    cmplw   r3, r0
    bne+    branch_0x80034288
    rlwinm. r0, r26, 0, 22, 22
    beq-    branch_0x80034324
    lwz     r3, 0x78(r25)
    addi    r0, r25, 0x78
    stw     r3, 0x1f8(sp)
    stw     r0, 0x1f4(sp)
    b       branch_0x80034304

branch_0x800342e8:
    lwz     r3, 0x1f8(sp)
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    bl      entrySDLModels__12SDLModelDataFv
    lwz     r3, 0x1f8(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x1f8(sp)
branch_0x80034304:
    lwz     r3, 0x1f4(sp)
    lwz     r0, 0x1f8(sp)
    stw     r3, 0x12c(sp)
    stw     r0, 0x128(sp)
    lwz     r0, 0x12c(sp)
    lwz     r3, 0x128(sp)
    cmplw   r3, r0
    bne+    branch_0x800342e8
branch_0x80034324:
    lwz     r3, 0x80(r25)
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    bl      perform__11TGraphGroupFUlPQ26JDrama9TGraphics
    lmw     r24, 0x220(sp)
    lwz     r0, 0x244(sp)
    addi    sp, sp, 0x240
    mtlr    r0
    blr


.globl searchF__10TConductorFUsPCc
searchF__10TConductorFUsPCc: # 0x80034348
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x108(sp)
    stw     r31, 0x104(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x100(sp)
    addi    r30, r4, 0x0
    stw     r29, 0xfc(sp)
    addi    r29, r3, 0x0
    bl      searchF__Q26JDrama8TNameRefFUsPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8003437c
    b       branch_0x80034540

branch_0x8003437c:
    lwz     r3, 0x18(r29)
    addi    r0, r29, 0x18
    stw     r3, 0xf0(sp)
    stw     r0, 0xec(sp)
    b       branch_0x800343cc

branch_0x80034390:
    lwz     r3, 0xf0(sp)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x800343c0
    b       branch_0x80034540

branch_0x800343c0:
    lwz     r3, 0xf0(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0xf0(sp)
branch_0x800343cc:
    lwz     r3, 0xec(sp)
    lwz     r0, 0xf0(sp)
    stw     r3, 0x90(sp)
    stw     r0, 0x8c(sp)
    lwz     r0, 0x90(sp)
    lwz     r3, 0x8c(sp)
    cmplw   r3, r0
    bne+    branch_0x80034390
    lwz     r3, 0x38(r29)
    addi    r0, r29, 0x38
    stw     r3, 0xe8(sp)
    stw     r0, 0xe4(sp)
    b       branch_0x8003443c

branch_0x80034400:
    lwz     r3, 0xe8(sp)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80034430
    b       branch_0x80034540

branch_0x80034430:
    lwz     r3, 0xe8(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0xe8(sp)
branch_0x8003443c:
    lwz     r3, 0xe4(sp)
    lwz     r0, 0xe8(sp)
    stw     r3, 0x88(sp)
    stw     r0, 0x84(sp)
    lwz     r0, 0x88(sp)
    lwz     r3, 0x84(sp)
    cmplw   r3, r0
    bne+    branch_0x80034400
    lwz     r3, 0x58(r29)
    addi    r0, r29, 0x58
    stw     r3, 0xe0(sp)
    stw     r0, 0xdc(sp)
    b       branch_0x800344ac

branch_0x80034470:
    lwz     r3, 0xe0(sp)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x800344a0
    b       branch_0x80034540

branch_0x800344a0:
    lwz     r3, 0xe0(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0xe0(sp)
branch_0x800344ac:
    lwz     r3, 0xdc(sp)
    lwz     r0, 0xe0(sp)
    stw     r3, 0x80(sp)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x80(sp)
    lwz     r3, 0x7c(sp)
    cmplw   r3, r0
    bne+    branch_0x80034470
    lwz     r3, 0x48(r29)
    addi    r0, r29, 0x48
    stw     r3, 0xd8(sp)
    stw     r0, 0xd4(sp)
    b       branch_0x8003451c

branch_0x800344e0:
    lwz     r3, 0xd8(sp)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80034510
    b       branch_0x80034540

branch_0x80034510:
    lwz     r3, 0xd8(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0xd8(sp)
branch_0x8003451c:
    lwz     r3, 0xd4(sp)
    lwz     r0, 0xd8(sp)
    stw     r3, 0x78(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x78(sp)
    lwz     r3, 0x74(sp)
    cmplw   r3, r0
    bne+    branch_0x800344e0
    li      r3, 0x0
branch_0x80034540:
    lwz     r0, 0x10c(sp)
    lwz     r31, 0x104(sp)
    lwz     r30, 0x100(sp)
    mtlr    r0
    lwz     r29, 0xfc(sp)
    addi    sp, sp, 0x108
    blr


.globl genEnemyFromPollution__10TConductorFv
genEnemyFromPollution__10TConductorFv: # 0x8003455c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stfd    f31, 0xd8(sp)
    stfd    f30, 0xd0(sp)
    stw     r31, 0xcc(sp)
    stw     r30, 0xc8(sp)
    mr      r30, r3
    stw     r29, 0xc4(sp)
    stw     r28, 0xc0(sp)
    lwz     r0, 0xfc(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x80034880
    lwz     r3, 0xf0(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80034880
    lwz     r5, R13Off_m0x6048(r13)
    lwz     r4, 0xd8(r30)
    lwz     r5, 0x58(r5)
    divw    r0, r5, r4
    mullw   r0, r0, r4
    subf    r0, r0, r5
    cmpwi   r0, 0x1
    bne-    branch_0x80034880
    li      r4, 0x1
    bl      getMatchedInfo__20TStageEnemyInfoTableFl
    cmplwi  r3, 0x0
    beq-    branch_0x80034880
    lwz     r29, 0xc(r3)
    mr      r3, r29
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r4, 0x18(r30)
    addi    r0, r30, 0x18
    mr      r28, r3
    stw     r4, 0x70(sp)
    stw     r0, 0x74(sp)
    b       branch_0x80034634

branch_0x800345f0:
    lwz     r3, 0x70(sp)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80034628
    lwz     r3, 0x70(sp)
    lwz     r0, 0x8(r3)
    b       branch_0x80034658

branch_0x80034628:
    lwz     r3, 0x70(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x70(sp)
branch_0x80034634:
    lwz     r3, 0x74(sp)
    lwz     r0, 0x70(sp)
    stw     r3, 0x68(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x68(sp)
    lwz     r3, 0x64(sp)
    cmplw   r3, r0
    bne+    branch_0x800345f0
    li      r0, 0x0
branch_0x80034658:
    cmplwi  r0, 0x0
    mr      r31, r0
    beq-    branch_0x80034880
    lwz     r4, R13Off_m0x60b4(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x94(sp)
    stw     r0, 0x98(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x9c(sp)
    lfs     f31, 0xc4(r30)
    lfs     f30, 0xb0(r30)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x74f8(r2)
    stw     r0, 0xbc(sp)
    lis     r28, 0x4330
    lfs     f1, -0x750c(r2)
    fsubs   f0, f30, f31
    stw     r28, 0xb8(sp)
    lfd     f2, 0xb8(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmadds  f31, f0, f1, f31
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x74f8(r2)
    stw     r0, 0xb4(sp)
    addi    r4, sp, 0x94
    lfs     f3, -0x750c(r2)
    addi    r5, sp, 0x8c
    stw     r28, 0xb0(sp)
    lfs     f1, -0x7504(r2)
    lfd     f0, 0xb0(sp)
    lfs     f2, -0x7508(r2)
    fsubs   f4, f0, f4
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r7, R13Off_m0x5ea8(r13)
    lfs     f0, 0x94(sp)
    fmuls   f3, f3, f4
    lwz     r3, R13Off_m0x5ea4(r13)
    fmuls   f1, f1, f3
    fmuls   f1, f2, f1
    fctiwz  f1, f1
    stfd    f1, 0xa8(sp)
    lwz     r6, 0xac(sp)
    clrlwi  r6, r6, 16
    sraw    r0, r6, r0
    slwi    r0, r0, 2
    lfsx    f1, r7, r0
    fmadds  f0, f31, f1, f0
    stfs    f0, 0x94(sp)
    lfsx    f1, r3, r0
    lfs     f0, 0x9c(sp)
    fmadds  f0, f31, f1, f0
    stfs    f0, 0x9c(sp)
    lwz     r3, R13Off_m0x6328(r13)
    bl      checkGround__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
    lfs     f0, -0x7500(r2)
    fadds   f0, f0, f1
    stfs    f0, 0x98(sp)
    lwz     r3, R13Off_m0x62f0(r13)
    lfs     f1, 0x94(sp)
    lfs     f2, 0x98(sp)
    lfs     f3, 0x9c(sp)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    beq-    branch_0x80034880
    lwz     r3, 0xf8(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x800347ec
    addi    r4, sp, 0x94
    bl      getCylinderContains__20TAreaCylinderManagerFRCQ29JGeometry8TVec3_f_
    mr.     r29, r3
    bne-    branch_0x800347b8
    lfs     f30, 0xec(r30)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f2, -0x74f8(r2)
    stw     r0, 0xac(sp)
    lfs     f0, -0x750c(r2)
    stw     r28, 0xa8(sp)
    lfd     f1, 0xa8(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    fcmpo   cr0, f0, f30
    ble-    branch_0x8003481c
    b       branch_0x80034880

branch_0x800347b8:
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x74f8(r2)
    stw     r0, 0xac(sp)
    lfs     f1, -0x750c(r2)
    stw     r28, 0xa8(sp)
    lfs     f0, 0x24(r29)
    lfd     f2, 0xa8(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fcmpo   cr0, f1, f0
    ble-    branch_0x8003481c
    b       branch_0x80034880

branch_0x800347ec:
    lfs     f30, 0xec(r30)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f2, -0x74f8(r2)
    stw     r0, 0xac(sp)
    lfs     f0, -0x750c(r2)
    stw     r28, 0xa8(sp)
    lfd     f1, 0xa8(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    fcmpo   cr0, f0, f30
    bgt-    branch_0x80034880
branch_0x8003481c:
    mr      r3, r31
    bl      getFarOutEnemy__13TEnemyManagerFv
    mr.     r28, r3
    beq-    branch_0x80034880
    mr      r3, r28
    lwz     r12, 0x0(r28)
    addi    r4, sp, 0x94
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    mr      r3, r28
    bl      getModel__10TLiveActorCFv
    cmplwi  r3, 0x0
    beq-    branch_0x80034880
    mr      r3, r28
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x80034880:
    lwz     r0, 0xe4(sp)
    lfd     f31, 0xd8(sp)
    lfd     f30, 0xd0(sp)
    mtlr    r0
    lwz     r31, 0xcc(sp)
    lwz     r30, 0xc8(sp)
    lwz     r29, 0xc4(sp)
    lwz     r28, 0xc0(sp)
    addi    sp, sp, 0xe0
    blr


.globl killEnemiesWithin__10TConductorFRCQ29JGeometry8TVec3_f_f
killEnemiesWithin__10TConductorFRCQ29JGeometry8TVec3_f_f: # 0x800348a8
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r3, 0x28
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    fmr     f31, f1
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    mr      r29, r4
    lwz     r5, 0x28(r3)
    lis     r3, unk_80376848@h
    addi    r31, r3, unk_80376848@l
    stw     r5, 0x50(sp)
    stw     r0, 0x4c(sp)
    b       branch_0x80034940

branch_0x800348e8:
    lwz     r4, 0x50(sp)
    mr      r3, r31
    lwz     r30, 0x8(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r31
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80034934
    lwz     r3, 0x50(sp)
    fmr     f1, f31
    addi    r4, r29, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    bl      killChildrenWithin__13TEnemyManagerFRCQ29JGeometry8TVec3_f_f
branch_0x80034934:
    lwz     r3, 0x50(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x50(sp)
branch_0x80034940:
    lwz     r3, 0x4c(sp)
    lwz     r0, 0x50(sp)
    stw     r3, 0x38(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0x38(sp)
    lwz     r3, 0x34(sp)
    cmplw   r3, r0
    bne+    branch_0x800348e8
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lwz     r31, 0x64(sp)
    mtlr    r0
    lwz     r30, 0x60(sp)
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x70
    blr


.globl makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci: # 0x80034980
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x68(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x64(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x60(sp)
    addi    r28, r5, 0x0
    addi    r3, r28, 0x0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r4, 0x18(r29)
    addi    r0, r29, 0x18
    mr      r29, r3
    stw     r4, 0x44(sp)
    stw     r0, 0x48(sp)
    b       branch_0x80034a10

branch_0x800349cc:
    lwz     r3, 0x44(sp)
    addi    r4, r29, 0x0
    addi    r5, r28, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80034a04
    lwz     r3, 0x44(sp)
    lwz     r0, 0x8(r3)
    b       branch_0x80034a34

branch_0x80034a04:
    lwz     r3, 0x44(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x44(sp)
branch_0x80034a10:
    lwz     r3, 0x48(sp)
    lwz     r0, 0x44(sp)
    stw     r3, 0x40(sp)
    stw     r0, 0x3c(sp)
    lwz     r0, 0x40(sp)
    lwz     r3, 0x3c(sp)
    cmplw   r3, r0
    bne+    branch_0x800349cc
    li      r0, 0x0
branch_0x80034a34:
    cmplwi  r0, 0x0
    mr      r28, r0
    bne-    branch_0x80034a48
    li      r3, 0x0
    b       branch_0x80034af4

branch_0x80034a48:
    addi    r3, r28, 0x0
    li      r4, 0x1
    bl      getActorByFlag__12TLiveManagerCFUl
    mr.     r29, r3
    beq-    branch_0x80034a7c
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r30
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    b       branch_0x80034af4

branch_0x80034a7c:
    cmpwi   r31, 0x0
    bne-    branch_0x80034a8c
    li      r3, 0x0
    b       branch_0x80034af4

branch_0x80034a8c:
    addi    r3, r28, 0x0
    li      r4, 0x804
    bl      getActorByFlag__12TLiveManagerCFUl
    mr.     r29, r3
    beq-    branch_0x80034ac0
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r30
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    b       branch_0x80034af4

branch_0x80034ac0:
    cmpwi   r31, 0x1
    bne-    branch_0x80034ad0
    li      r3, 0x0
    b       branch_0x80034af4

branch_0x80034ad0:
    lwz     r3, 0x18(r28)
    mr      r4, r30
    lwz     r29, 0x0(r3)
    lwz     r12, 0x0(r29)
    mr      r3, r29
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    mr      r3, r29
branch_0x80034af4:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    lwz     r28, 0x60(sp)
    addi    sp, sp, 0x70
    blr


.globl makeEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCcii
makeEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCcii: # 0x80034b14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r25, 0x7c(sp)
    addi    r25, r5, 0x0
    addi    r26, r3, 0x0
    addi    r27, r4, 0x0
    addi    r28, r6, 0x0
    addi    r29, r7, 0x0
    addi    r3, r25, 0x0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r4, 0x18(r26)
    addi    r0, r26, 0x18
    mr      r26, r3
    stw     r4, 0x5c(sp)
    stw     r0, 0x60(sp)
    b       branch_0x80034b9c

branch_0x80034b58:
    lwz     r3, 0x5c(sp)
    addi    r4, r26, 0x0
    addi    r5, r25, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80034b90
    lwz     r3, 0x5c(sp)
    lwz     r31, 0x8(r3)
    b       branch_0x80034bc0

branch_0x80034b90:
    lwz     r3, 0x5c(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x5c(sp)
branch_0x80034b9c:
    lwz     r3, 0x60(sp)
    lwz     r0, 0x5c(sp)
    stw     r3, 0x58(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0x58(sp)
    lwz     r3, 0x54(sp)
    cmplw   r3, r0
    bne+    branch_0x80034b58
    li      r31, 0x0
branch_0x80034bc0:
    cmplwi  r31, 0x0
    bne-    branch_0x80034bd0
    li      r3, 0x0
    b       branch_0x80034d2c

branch_0x80034bd0:
    li      r30, 0x0
    li      r25, 0x0
    li      r26, 0x0
    b       branch_0x80034c24

branch_0x80034be0:
    lwz     r3, 0x18(r31)
    lwzx    r3, r3, r26
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x80034c1c
    lwz     r12, 0x0(r3)
    mr      r4, r27
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    cmpw    r30, r28
    blt-    branch_0x80034c1c
    mr      r3, r30
    b       branch_0x80034d2c

branch_0x80034c1c:
    addi    r25, r25, 0x1
    addi    r26, r26, 0x4
branch_0x80034c24:
    lwz     r0, 0x14(r31)
    cmpw    r25, r0
    blt+    branch_0x80034be0
    cmpwi   r29, 0x0
    bne-    branch_0x80034c40
    mr      r3, r30
    b       branch_0x80034d2c

branch_0x80034c40:
    li      r25, 0x0
    li      r26, 0x0
    b       branch_0x80034ca0

branch_0x80034c4c:
    lwz     r3, 0x18(r31)
    lwzx    r3, r3, r26
    lwz     r4, 0xf0(r3)
    clrlwi. r0, r4, 31
    bne-    branch_0x80034c98
    rlwinm. r0, r4, 0, 20, 20
    beq-    branch_0x80034c98
    rlwinm. r0, r4, 0, 29, 29
    beq-    branch_0x80034c98
    lwz     r12, 0x0(r3)
    mr      r4, r27
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    cmpw    r30, r28
    blt-    branch_0x80034c98
    mr      r3, r30
    b       branch_0x80034d2c

branch_0x80034c98:
    addi    r25, r25, 0x1
    addi    r26, r26, 0x4
branch_0x80034ca0:
    lwz     r0, 0x14(r31)
    cmpw    r25, r0
    blt+    branch_0x80034c4c
    cmpwi   r29, 0x1
    bne-    branch_0x80034cbc
    mr      r3, r30
    b       branch_0x80034d2c

branch_0x80034cbc:
    li      r25, 0x0
    li      r29, 0x0
    b       branch_0x80034d1c

branch_0x80034cc8:
    lwz     r3, 0x18(r31)
    lwzx    r3, r3, r29
    lwz     r4, 0xf0(r3)
    clrlwi. r0, r4, 31
    bne-    branch_0x80034d14
    rlwinm. r0, r4, 0, 29, 29
    bne-    branch_0x80034d14
    rlwinm. r0, r4, 0, 20, 20
    beq-    branch_0x80034d14
    lwz     r12, 0x0(r3)
    mr      r4, r27
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    cmpw    r30, r28
    blt-    branch_0x80034d14
    mr      r3, r30
    b       branch_0x80034d2c

branch_0x80034d14:
    addi    r25, r25, 0x1
    addi    r29, r29, 0x4
branch_0x80034d1c:
    lwz     r0, 0x14(r31)
    cmpw    r25, r0
    blt+    branch_0x80034cc8
    mr      r3, r30
branch_0x80034d2c:
    lmw     r25, 0x7c(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl isBossDefeated__10TConductorFv
isBossDefeated__10TConductorFv: # 0x80034d40
    mflr    r0
    lis     r5, unk_80376768@h
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    addi    r31, r5, unk_80376768@l
    stw     r30, 0xb0(sp)
    addi    r30, r3, 0x0
    lwz     r4, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r4)
    cmpwi   r0, 0x2
    beq-    branch_0x80034d84
    bge-    branch_0x80034d78
    b       branch_0x80034d84

branch_0x80034d78:
    cmpwi   r0, 0x4
    bge-    branch_0x80034d84
    b       branch_0x80034e5c

branch_0x80034d84:
    addi    r3, r31, 0xfc
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r4, 0x18(r30)
    addi    r0, r30, 0x18
    mr      r30, r3
    stw     r4, 0x8c(sp)
    stw     r0, 0x90(sp)
    b       branch_0x80034de8

branch_0x80034da4:
    lwz     r3, 0x8c(sp)
    addi    r4, r30, 0x0
    addi    r5, r31, 0xfc
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80034ddc
    lwz     r3, 0x8c(sp)
    lwz     r5, 0x8(r3)
    b       branch_0x80034e0c

branch_0x80034ddc:
    lwz     r3, 0x8c(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x8c(sp)
branch_0x80034de8:
    lwz     r3, 0x90(sp)
    lwz     r0, 0x8c(sp)
    stw     r3, 0x70(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x70(sp)
    lwz     r3, 0x6c(sp)
    cmplw   r3, r0
    bne+    branch_0x80034da4
    li      r5, 0x0
branch_0x80034e0c:
    cmplwi  r5, 0x0
    bne-    branch_0x80034e1c
    li      r3, 0x1
    b       branch_0x80034f08

branch_0x80034e1c:
    lwz     r0, 0x14(r5)
    li      r3, 0x0
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x80034e54
branch_0x80034e30:
    lwz     r4, 0x18(r5)
    lwzx    r4, r4, r3
    lwz     r0, 0xf0(r4)
    rlwinm. r0, r0, 0, 25, 25
    bne-    branch_0x80034e4c
    li      r3, 0x0
    b       branch_0x80034f08

branch_0x80034e4c:
    addi    r3, r3, 0x4
    bdnz+      branch_0x80034e30
branch_0x80034e54:
    li      r3, 0x1
    b       branch_0x80034f08

branch_0x80034e5c:
    addi    r3, r31, 0x114
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r4, 0x18(r30)
    addi    r0, r30, 0x18
    mr      r30, r3
    stw     r4, 0x74(sp)
    stw     r0, 0x78(sp)
    b       branch_0x80034ec0

branch_0x80034e7c:
    lwz     r3, 0x74(sp)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x114
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80034eb4
    lwz     r3, 0x74(sp)
    lwz     r0, 0x8(r3)
    b       branch_0x80034ee4

branch_0x80034eb4:
    lwz     r3, 0x74(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x74(sp)
branch_0x80034ec0:
    lwz     r3, 0x78(sp)
    lwz     r0, 0x74(sp)
    stw     r3, 0x68(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x68(sp)
    lwz     r3, 0x64(sp)
    cmplw   r3, r0
    bne+    branch_0x80034e7c
    li      r0, 0x0
branch_0x80034ee4:
    cmplwi  r0, 0x0
    mr      r3, r0
    beq-    branch_0x80034efc
    bl      countLivingEnemy__13TEnemyManagerCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80034f04
branch_0x80034efc:
    li      r3, 0x1
    b       branch_0x80034f08

branch_0x80034f04:
    li      r3, 0x0
branch_0x80034f08:
    lwz     r0, 0xbc(sp)
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    mtlr    r0
    addi    sp, sp, 0xb8
    blr


.globl getManagerByName__10TConductorFPCc
getManagerByName__10TConductorFPCc: # 0x80034f20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x50(sp)
    addi    r30, r4, 0x0
    addi    r3, r30, 0x0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r4, 0x18(r31)
    addi    r0, r31, 0x18
    mr      r31, r3
    stw     r4, 0x4c(sp)
    stw     r0, 0x48(sp)
    b       branch_0x80034fa0

branch_0x80034f5c:
    lwz     r3, 0x4c(sp)
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80034f94
    lwz     r3, 0x4c(sp)
    lwz     r3, 0x8(r3)
    b       branch_0x80034fc4

branch_0x80034f94:
    lwz     r3, 0x4c(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x4c(sp)
branch_0x80034fa0:
    lwz     r3, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stw     r3, 0x34(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0x34(sp)
    lwz     r3, 0x30(sp)
    cmplw   r3, r0
    bne+    branch_0x80034f5c
    li      r3, 0x0
branch_0x80034fc4:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl getGraphByName__10TConductorFPCc
getGraphByName__10TConductorFPCc: # 0x80034fdc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x80(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x80034ffc
    li      r3, 0x0
    b       branch_0x80035000

branch_0x80034ffc:
    bl      getGraphByName__11TGraphGroupFPCc
branch_0x80035000:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl init__10TConductorFv
init__10TConductorFv: # 0x80035010
    mflr    r0
    lis     r4, unk_80376768@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    addi    r0, r31, 0x28
    stw     r30, 0x78(sp)
    addi    r30, r4, unk_80376768@l
    stw     r29, 0x74(sp)
    lwz     r3, 0x28(r3)
    stw     r3, 0x68(sp)
    stw     r0, 0x64(sp)
    b       branch_0x800350dc

branch_0x80035048:
    lwz     r4, 0x68(sp)
    addi    r3, r30, 0xfc
    lwz     r29, 0x8(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0xfc
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800350d0
    lwz     r4, 0x68(sp)
    addi    r3, r30, 0x114
    lwz     r29, 0x8(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x114
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800350d0
    lwz     r3, 0x68(sp)
    lwz     r4, 0x8(r3)
    lwz     r3, 0x8(r3)
    lwz     r4, 0x10(r4)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x4c(r12)
    mtlr    r12
    blrl
branch_0x800350d0:
    lwz     r3, 0x68(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x68(sp)
branch_0x800350dc:
    lwz     r3, 0x64(sp)
    lwz     r0, 0x68(sp)
    stw     r3, 0x4c(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x4c(sp)
    lwz     r3, 0x48(sp)
    cmplw   r3, r0
    bne+    branch_0x80035048
    addi    r3, r30, 0x148
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r31)
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x148
    mtlr    r12
    blrl
    stw     r3, 0xf8(r31)
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl registerEnemyInfoTable__10TConductorFP20TStageEnemyInfoTable
registerEnemyInfoTable__10TConductorFP20TStageEnemyInfoTable: # 0x80035140
    stw     r4, 0xf0(r3)
    blr


.globl registerSDLModelData__10TConductorFP12SDLModelData
registerSDLModelData__10TConductorFP12SDLModelData: # 0x80035148
    mflr    r0
    mr      r6, r3
    stw     r0, 0x4(sp)
    addi    r0, r6, 0x78
    stwu    sp, -0x20(sp)
    stw     r0, 0x1c(sp)
    addi    r5, sp, 0x18
    addi    r3, sp, 0x14
    lwz     r0, 0x1c(sp)
    stw     r4, 0xc(sp)
    addi    r4, r6, 0x70
    addi    r6, sp, 0xc
    stw     r0, 0x18(sp)
    bl      insert__Q27JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__FQ37JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__8iteratorRCP12SDLModelData
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl insert__Q27JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__FQ37JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__8iteratorRCP12SDLModelData
insert__Q27JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__FQ37JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__8iteratorRCP12SDLModelData: # 0x80035190
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x38(sp)
    addi    r28, r4, 0x0
    stw     r3, 0x8(sp)
    li      r3, 0xc
    lwz     r31, 0x0(r5)
    lwz     r30, 0x4(r31)
    bl      __nw__FUl
    cmplwi  r3, 0x0
    bne-    branch_0x800351d8
    li      r3, 0x0
    b       branch_0x800351f4

branch_0x800351d8:
    stw     r31, 0x0(r3)
    addic.  r4, r3, 0x8
    stw     r30, 0x4(r3)
    stw     r4, 0x2c(sp)
    beq-    branch_0x800351f4
    lwz     r0, 0x0(r29)
    stw     r0, 0x0(r4)
branch_0x800351f4:
    cmplwi  r3, 0x0
    bne-    branch_0x8003520c
    lwz     r3, 0x8(sp)
    addi    r0, r28, 0x8
    stw     r0, 0x0(r3)
    b       branch_0x80035228

branch_0x8003520c:
    stw     r3, 0x4(r31)
    stw     r3, 0x0(r30)
    lwz     r4, 0x4(r28)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r28)
    lwz     r4, 0x8(sp)
    stw     r3, 0x0(r4)
branch_0x80035228:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl registerAreaCylinderManager__10TConductorFP20TAreaCylinderManager
registerAreaCylinderManager__10TConductorFP20TAreaCylinderManager: # 0x80035248
    mflr    r0
    mr      r6, r3
    stw     r0, 0x4(sp)
    addi    r0, r6, 0x58
    stwu    sp, -0x20(sp)
    stw     r0, 0x1c(sp)
    addi    r5, sp, 0x18
    addi    r3, sp, 0x14
    lwz     r0, 0x1c(sp)
    stw     r4, 0xc(sp)
    addi    r4, r6, 0x50
    addi    r6, sp, 0xc
    stw     r0, 0x18(sp)
    bl      insert__Q27JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__FQ37JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__8iteratorRCP20TAreaCylinderManager
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl insert__Q27JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__FQ37JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__8iteratorRCP20TAreaCylinderManager
insert__Q27JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__FQ37JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__8iteratorRCP20TAreaCylinderManager: # 0x80035290
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x38(sp)
    addi    r28, r4, 0x0
    stw     r3, 0x8(sp)
    li      r3, 0xc
    lwz     r31, 0x0(r5)
    lwz     r30, 0x4(r31)
    bl      __nw__FUl
    cmplwi  r3, 0x0
    bne-    branch_0x800352d8
    li      r3, 0x0
    b       branch_0x800352f4

branch_0x800352d8:
    stw     r31, 0x0(r3)
    addic.  r4, r3, 0x8
    stw     r30, 0x4(r3)
    stw     r4, 0x2c(sp)
    beq-    branch_0x800352f4
    lwz     r0, 0x0(r29)
    stw     r0, 0x0(r4)
branch_0x800352f4:
    cmplwi  r3, 0x0
    bne-    branch_0x8003530c
    lwz     r3, 0x8(sp)
    addi    r0, r28, 0x8
    stw     r0, 0x0(r3)
    b       branch_0x80035328

branch_0x8003530c:
    stw     r3, 0x4(r31)
    stw     r3, 0x0(r30)
    lwz     r4, 0x4(r28)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r28)
    lwz     r4, 0x8(sp)
    stw     r3, 0x0(r4)
branch_0x80035328:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl registerGenerator__10TConductorFP10TGenerator
registerGenerator__10TConductorFP10TGenerator: # 0x80035348
    mflr    r0
    mr      r6, r3
    stw     r0, 0x4(sp)
    addi    r0, r6, 0x68
    stwu    sp, -0x20(sp)
    stw     r0, 0x1c(sp)
    addi    r5, sp, 0x18
    addi    r3, sp, 0x14
    lwz     r0, 0x1c(sp)
    stw     r4, 0xc(sp)
    addi    r4, r6, 0x60
    addi    r6, sp, 0xc
    stw     r0, 0x18(sp)
    bl      insert__Q27JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__FQ37JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__8iteratorRCP10TGenerator
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl insert__Q27JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__FQ37JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__8iteratorRCP10TGenerator
insert__Q27JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__FQ37JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__8iteratorRCP10TGenerator: # 0x80035390
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x38(sp)
    addi    r28, r4, 0x0
    stw     r3, 0x8(sp)
    li      r3, 0xc
    lwz     r31, 0x0(r5)
    lwz     r30, 0x4(r31)
    bl      __nw__FUl
    cmplwi  r3, 0x0
    bne-    branch_0x800353d8
    li      r3, 0x0
    b       branch_0x800353f4

branch_0x800353d8:
    stw     r31, 0x0(r3)
    addic.  r4, r3, 0x8
    stw     r30, 0x4(r3)
    stw     r4, 0x2c(sp)
    beq-    branch_0x800353f4
    lwz     r0, 0x0(r29)
    stw     r0, 0x0(r4)
branch_0x800353f4:
    cmplwi  r3, 0x0
    bne-    branch_0x8003540c
    lwz     r3, 0x8(sp)
    addi    r0, r28, 0x8
    stw     r0, 0x0(r3)
    b       branch_0x80035428

branch_0x8003540c:
    stw     r3, 0x4(r31)
    stw     r3, 0x0(r30)
    lwz     r4, 0x4(r28)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r28)
    lwz     r4, 0x8(sp)
    stw     r3, 0x0(r4)
branch_0x80035428:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl registerOtherObj__10TConductorFPQ26JDrama8TViewObj
registerOtherObj__10TConductorFPQ26JDrama8TViewObj: # 0x80035448
    mflr    r0
    mr      r6, r3
    stw     r0, 0x4(sp)
    addi    r0, r6, 0x48
    stwu    sp, -0x20(sp)
    stw     r0, 0x1c(sp)
    addi    r5, sp, 0x18
    addi    r3, sp, 0x14
    lwz     r0, 0x1c(sp)
    stw     r4, 0xc(sp)
    addi    r4, r6, 0x40
    addi    r6, sp, 0xc
    stw     r0, 0x18(sp)
    bl      insert__Q27JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__FQ37JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__8iteratorRCPQ26JDrama8TViewObj
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl insert__Q27JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__FQ37JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__8iteratorRCPQ26JDrama8TViewObj
insert__Q27JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__FQ37JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__8iteratorRCPQ26JDrama8TViewObj: # 0x80035490
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x38(sp)
    addi    r28, r4, 0x0
    stw     r3, 0x8(sp)
    li      r3, 0xc
    lwz     r31, 0x0(r5)
    lwz     r30, 0x4(r31)
    bl      __nw__FUl
    cmplwi  r3, 0x0
    bne-    branch_0x800354d8
    li      r3, 0x0
    b       branch_0x800354f4

branch_0x800354d8:
    stw     r31, 0x0(r3)
    addic.  r4, r3, 0x8
    stw     r30, 0x4(r3)
    stw     r4, 0x2c(sp)
    beq-    branch_0x800354f4
    lwz     r0, 0x0(r29)
    stw     r0, 0x0(r4)
branch_0x800354f4:
    cmplwi  r3, 0x0
    bne-    branch_0x8003550c
    lwz     r3, 0x8(sp)
    addi    r0, r28, 0x8
    stw     r0, 0x0(r3)
    b       branch_0x80035528

branch_0x8003550c:
    stw     r3, 0x4(r31)
    stw     r3, 0x0(r30)
    lwz     r4, 0x4(r28)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r28)
    lwz     r4, 0x8(sp)
    stw     r3, 0x0(r4)
branch_0x80035528:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl registerAloneActor__10TConductorFP10TLiveActor
registerAloneActor__10TConductorFP10TLiveActor: # 0x80035548
    mflr    r0
    mr      r6, r3
    stw     r0, 0x4(sp)
    addi    r0, r6, 0x38
    stwu    sp, -0x20(sp)
    stw     r0, 0x1c(sp)
    addi    r5, sp, 0x18
    addi    r3, sp, 0x14
    lwz     r0, 0x1c(sp)
    stw     r4, 0xc(sp)
    addi    r4, r6, 0x30
    addi    r6, sp, 0xc
    stw     r0, 0x18(sp)
    bl      insert__Q27JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__FQ37JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__8iteratorRCP10TLiveActor
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl insert__Q27JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__FQ37JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__8iteratorRCP10TLiveActor
insert__Q27JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__FQ37JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__8iteratorRCP10TLiveActor: # 0x80035590
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x38(sp)
    addi    r28, r4, 0x0
    stw     r3, 0x8(sp)
    li      r3, 0xc
    lwz     r31, 0x0(r5)
    lwz     r30, 0x4(r31)
    bl      __nw__FUl
    cmplwi  r3, 0x0
    bne-    branch_0x800355d8
    li      r3, 0x0
    b       branch_0x800355f4

branch_0x800355d8:
    stw     r31, 0x0(r3)
    addic.  r4, r3, 0x8
    stw     r30, 0x4(r3)
    stw     r4, 0x2c(sp)
    beq-    branch_0x800355f4
    lwz     r0, 0x0(r29)
    stw     r0, 0x0(r4)
branch_0x800355f4:
    cmplwi  r3, 0x0
    bne-    branch_0x8003560c
    lwz     r3, 0x8(sp)
    addi    r0, r28, 0x8
    stw     r0, 0x0(r3)
    b       branch_0x80035628

branch_0x8003560c:
    stw     r3, 0x4(r31)
    stw     r3, 0x0(r30)
    lwz     r4, 0x4(r28)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r28)
    lwz     r4, 0x8(sp)
    stw     r3, 0x0(r4)
branch_0x80035628:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl registerEnemyManager__10TConductorFP13TEnemyManager
registerEnemyManager__10TConductorFP13TEnemyManager: # 0x80035648
    mflr    r0
    mr      r6, r3
    stw     r0, 0x4(sp)
    addi    r0, r6, 0x28
    stwu    sp, -0x20(sp)
    stw     r0, 0x1c(sp)
    addi    r5, sp, 0x18
    addi    r3, sp, 0x14
    lwz     r0, 0x1c(sp)
    stw     r4, 0xc(sp)
    addi    r4, r6, 0x20
    addi    r6, sp, 0xc
    stw     r0, 0x18(sp)
    bl      insert__Q27JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__FQ37JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__8iteratorRCP13TEnemyManager
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl insert__Q27JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__FQ37JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__8iteratorRCP13TEnemyManager
insert__Q27JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__FQ37JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__8iteratorRCP13TEnemyManager: # 0x80035690
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x38(sp)
    addi    r28, r4, 0x0
    stw     r3, 0x8(sp)
    li      r3, 0xc
    lwz     r31, 0x0(r5)
    lwz     r30, 0x4(r31)
    bl      __nw__FUl
    cmplwi  r3, 0x0
    bne-    branch_0x800356d8
    li      r3, 0x0
    b       branch_0x800356f4

branch_0x800356d8:
    stw     r31, 0x0(r3)
    addic.  r4, r3, 0x8
    stw     r30, 0x4(r3)
    stw     r4, 0x2c(sp)
    beq-    branch_0x800356f4
    lwz     r0, 0x0(r29)
    stw     r0, 0x0(r4)
branch_0x800356f4:
    cmplwi  r3, 0x0
    bne-    branch_0x8003570c
    lwz     r3, 0x8(sp)
    addi    r0, r28, 0x8
    stw     r0, 0x0(r3)
    b       branch_0x80035728

branch_0x8003570c:
    stw     r3, 0x4(r31)
    stw     r3, 0x0(r30)
    lwz     r4, 0x4(r28)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r28)
    lwz     r4, 0x8(sp)
    stw     r3, 0x0(r4)
branch_0x80035728:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl registerManager__10TConductorFP12TLiveManager
registerManager__10TConductorFP12TLiveManager: # 0x80035748
    mflr    r0
    mr      r6, r3
    stw     r0, 0x4(sp)
    addi    r0, r6, 0x18
    stwu    sp, -0x20(sp)
    stw     r0, 0x1c(sp)
    addi    r5, sp, 0x18
    addi    r3, sp, 0x14
    lwz     r0, 0x1c(sp)
    stw     r4, 0xc(sp)
    addi    r4, r6, 0x10
    addi    r6, sp, 0xc
    stw     r0, 0x18(sp)
    bl      insert__Q27JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__FQ37JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__8iteratorRCP12TLiveManager
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl insert__Q27JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__FQ37JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__8iteratorRCP12TLiveManager
insert__Q27JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__FQ37JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__8iteratorRCP12TLiveManager: # 0x80035790
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x38(sp)
    addi    r28, r4, 0x0
    stw     r3, 0x8(sp)
    li      r3, 0xc
    lwz     r31, 0x0(r5)
    lwz     r30, 0x4(r31)
    bl      __nw__FUl
    cmplwi  r3, 0x0
    bne-    branch_0x800357d8
    li      r3, 0x0
    b       branch_0x800357f4

branch_0x800357d8:
    stw     r31, 0x0(r3)
    addic.  r4, r3, 0x8
    stw     r30, 0x4(r3)
    stw     r4, 0x2c(sp)
    beq-    branch_0x800357f4
    lwz     r0, 0x0(r29)
    stw     r0, 0x0(r4)
branch_0x800357f4:
    cmplwi  r3, 0x0
    bne-    branch_0x8003580c
    lwz     r3, 0x8(sp)
    addi    r0, r28, 0x8
    stw     r0, 0x0(r3)
    b       branch_0x80035828

branch_0x8003580c:
    stw     r3, 0x4(r31)
    stw     r3, 0x0(r30)
    lwz     r4, 0x4(r28)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r28)
    lwz     r4, 0x8(sp)
    stw     r3, 0x0(r4)
branch_0x80035828:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl initGraphGroup__10TConductorFv
initGraphGroup__10TConductorFv: # 0x80035848
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x80(r3)
    bl      initGraphGroup__11TGraphGroupFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl makeGraphGroup__10TConductorFPv
makeGraphGroup__10TConductorFPv: # 0x8003586c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    li      r3, 0x10
    stw     r29, 0x14(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800358a8
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      __ct__11TGraphGroupFPv
branch_0x800358a8:
    stw     r29, 0x80(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __dt__10TConductorFv
__dt__10TConductorFv: # 0x800358c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1e8(sp)
    stmw    r27, 0x1d4(sp)
    mr.     r30, r3
    addi    r31, r4, 0x0
    beq-    branch_0x80035cbc
    lis     r3, __vvt__10TConductor@ha
    addi    r3, r3, __vvt__10TConductor@l
    addic.  r0, r30, 0x70
    stw     r3, 0x0(r30)
    beq-    branch_0x80035974
    addi    r3, sp, 0x1cc
    addi    r4, r30, 0x78
    bl      __ct__Q37JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__8iteratorFPQ37JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__6TNode_
    lwz     r0, 0x1cc(sp)
    addi    r3, sp, 0x1c4
    stw     r0, 0x1c8(sp)
    lwz     r4, 0x78(r30)
    bl      __ct__Q37JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__8iteratorFPQ37JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__6TNode_
    lwz     r0, 0x1c4(sp)
    addi    r29, sp, 0x138
    addi    r28, sp, 0xd0
    stw     r0, 0x1c0(sp)
    addi    r27, sp, 0xcc
    b       branch_0x80035950

branch_0x80035930:
    lwz     r0, 0x1c0(sp)
    addi    r5, r29, 0x0
    addi    r3, sp, 0x134
    stw     r0, 0x138(sp)
    addi    r4, r30, 0x70
    bl      erase__Q27JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__FQ37JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__8iterator
    lwz     r0, 0x134(sp)
    stw     r0, 0x1c0(sp)
branch_0x80035950:
    lwz     r5, 0x1c8(sp)
    mr      r3, r27
    lwz     r0, 0x1c0(sp)
    mr      r4, r28
    stw     r5, 0xd0(sp)
    stw     r0, 0xcc(sp)
    bl      __eq__7JGadgetFQ37JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__8iteratorQ37JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__8iterator
    clrlwi. r0, r3, 24
    beq+    branch_0x80035930
branch_0x80035974:
    addic.  r0, r30, 0x60
    beq-    branch_0x800359f8
    addi    r3, sp, 0x1b8
    addi    r4, r30, 0x68
    bl      __ct__Q37JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__8iteratorFPQ37JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__6TNode_
    lwz     r0, 0x1b8(sp)
    addi    r3, sp, 0x1b0
    stw     r0, 0x1b4(sp)
    lwz     r4, 0x68(r30)
    bl      __ct__Q37JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__8iteratorFPQ37JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__6TNode_
    lwz     r0, 0x1b0(sp)
    addi    r27, sp, 0x128
    addi    r28, sp, 0xc8
    stw     r0, 0x1ac(sp)
    addi    r29, sp, 0xc4
    b       branch_0x800359d4

branch_0x800359b4:
    lwz     r0, 0x1ac(sp)
    addi    r5, r27, 0x0
    addi    r3, sp, 0x124
    stw     r0, 0x128(sp)
    addi    r4, r30, 0x60
    bl      erase__Q27JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__FQ37JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__8iterator
    lwz     r0, 0x124(sp)
    stw     r0, 0x1ac(sp)
branch_0x800359d4:
    lwz     r5, 0x1b4(sp)
    mr      r3, r29
    lwz     r0, 0x1ac(sp)
    mr      r4, r28
    stw     r5, 0xc8(sp)
    stw     r0, 0xc4(sp)
    bl      __eq__7JGadgetFQ37JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__8iteratorQ37JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__8iterator
    clrlwi. r0, r3, 24
    beq+    branch_0x800359b4
branch_0x800359f8:
    addic.  r0, r30, 0x50
    beq-    branch_0x80035a7c
    addi    r3, sp, 0x1a4
    addi    r4, r30, 0x58
    bl      __ct__Q37JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__8iteratorFPQ37JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__6TNode_
    lwz     r0, 0x1a4(sp)
    addi    r3, sp, 0x19c
    stw     r0, 0x1a0(sp)
    lwz     r4, 0x58(r30)
    bl      __ct__Q37JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__8iteratorFPQ37JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__6TNode_
    lwz     r0, 0x19c(sp)
    addi    r27, sp, 0x118
    addi    r28, sp, 0xc0
    stw     r0, 0x198(sp)
    addi    r29, sp, 0xbc
    b       branch_0x80035a58

branch_0x80035a38:
    lwz     r0, 0x198(sp)
    addi    r5, r27, 0x0
    addi    r3, sp, 0x114
    stw     r0, 0x118(sp)
    addi    r4, r30, 0x50
    bl      erase__Q27JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__FQ37JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__8iterator
    lwz     r0, 0x114(sp)
    stw     r0, 0x198(sp)
branch_0x80035a58:
    lwz     r5, 0x1a0(sp)
    mr      r3, r29
    lwz     r0, 0x198(sp)
    mr      r4, r28
    stw     r5, 0xc0(sp)
    stw     r0, 0xbc(sp)
    bl      __eq__7JGadgetFQ37JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__8iteratorQ37JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__8iterator
    clrlwi. r0, r3, 24
    beq+    branch_0x80035a38
branch_0x80035a7c:
    addic.  r0, r30, 0x40
    beq-    branch_0x80035b00
    addi    r3, sp, 0x190
    addi    r4, r30, 0x48
    bl      __ct__Q37JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__8iteratorFPQ37JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__6TNode_
    lwz     r0, 0x190(sp)
    addi    r3, sp, 0x188
    stw     r0, 0x18c(sp)
    lwz     r4, 0x48(r30)
    bl      __ct__Q37JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__8iteratorFPQ37JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__6TNode_
    lwz     r0, 0x188(sp)
    addi    r27, sp, 0x108
    addi    r28, sp, 0xb8
    stw     r0, 0x184(sp)
    addi    r29, sp, 0xb4
    b       branch_0x80035adc

branch_0x80035abc:
    lwz     r0, 0x184(sp)
    addi    r5, r27, 0x0
    addi    r3, sp, 0x104
    stw     r0, 0x108(sp)
    addi    r4, r30, 0x40
    bl      erase__Q27JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__FQ37JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__8iterator
    lwz     r0, 0x104(sp)
    stw     r0, 0x184(sp)
branch_0x80035adc:
    lwz     r5, 0x18c(sp)
    mr      r3, r29
    lwz     r0, 0x184(sp)
    mr      r4, r28
    stw     r5, 0xb8(sp)
    stw     r0, 0xb4(sp)
    bl      __eq__7JGadgetFQ37JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__8iteratorQ37JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__8iterator
    clrlwi. r0, r3, 24
    beq+    branch_0x80035abc
branch_0x80035b00:
    addic.  r0, r30, 0x30
    beq-    branch_0x80035b84
    addi    r3, sp, 0x17c
    addi    r4, r30, 0x38
    bl      __ct__Q37JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__8iteratorFPQ37JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__6TNode_
    lwz     r0, 0x17c(sp)
    addi    r3, sp, 0x174
    stw     r0, 0x178(sp)
    lwz     r4, 0x38(r30)
    bl      __ct__Q37JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__8iteratorFPQ37JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__6TNode_
    lwz     r0, 0x174(sp)
    addi    r27, sp, 0xf8
    addi    r28, sp, 0xb0
    stw     r0, 0x170(sp)
    addi    r29, sp, 0xac
    b       branch_0x80035b60

branch_0x80035b40:
    lwz     r0, 0x170(sp)
    addi    r5, r27, 0x0
    addi    r3, sp, 0xf4
    stw     r0, 0xf8(sp)
    addi    r4, r30, 0x30
    bl      erase__Q27JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__FQ37JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__8iterator
    lwz     r0, 0xf4(sp)
    stw     r0, 0x170(sp)
branch_0x80035b60:
    lwz     r5, 0x178(sp)
    mr      r3, r29
    lwz     r0, 0x170(sp)
    mr      r4, r28
    stw     r5, 0xb0(sp)
    stw     r0, 0xac(sp)
    bl      __eq__7JGadgetFQ37JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__8iteratorQ37JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__8iterator
    clrlwi. r0, r3, 24
    beq+    branch_0x80035b40
branch_0x80035b84:
    addic.  r0, r30, 0x20
    beq-    branch_0x80035c08
    addi    r3, sp, 0x168
    addi    r4, r30, 0x28
    bl      __ct__Q37JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__8iteratorFPQ37JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__6TNode_
    lwz     r0, 0x168(sp)
    addi    r3, sp, 0x160
    stw     r0, 0x164(sp)
    lwz     r4, 0x28(r30)
    bl      __ct__Q37JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__8iteratorFPQ37JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__6TNode_
    lwz     r0, 0x160(sp)
    addi    r27, sp, 0xe8
    addi    r28, sp, 0xa8
    stw     r0, 0x15c(sp)
    addi    r29, sp, 0xa4
    b       branch_0x80035be4

branch_0x80035bc4:
    lwz     r0, 0x15c(sp)
    addi    r5, r27, 0x0
    addi    r3, sp, 0xe4
    stw     r0, 0xe8(sp)
    addi    r4, r30, 0x20
    bl      erase__Q27JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__FQ37JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__8iterator
    lwz     r0, 0xe4(sp)
    stw     r0, 0x15c(sp)
branch_0x80035be4:
    lwz     r5, 0x164(sp)
    mr      r3, r29
    lwz     r0, 0x15c(sp)
    mr      r4, r28
    stw     r5, 0xa8(sp)
    stw     r0, 0xa4(sp)
    bl      __eq__7JGadgetFQ37JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__8iteratorQ37JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__8iterator
    clrlwi. r0, r3, 24
    beq+    branch_0x80035bc4
branch_0x80035c08:
    addic.  r0, r30, 0x10
    beq-    branch_0x80035c8c
    addi    r3, sp, 0x154
    addi    r4, r30, 0x18
    bl      __ct__Q37JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__8iteratorFPQ37JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__6TNode_
    lwz     r0, 0x154(sp)
    addi    r3, sp, 0x14c
    stw     r0, 0x150(sp)
    lwz     r4, 0x18(r30)
    bl      __ct__Q37JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__8iteratorFPQ37JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__6TNode_
    lwz     r0, 0x14c(sp)
    addi    r27, sp, 0xd8
    addi    r28, sp, 0xa0
    stw     r0, 0x148(sp)
    addi    r29, sp, 0x9c
    b       branch_0x80035c68

branch_0x80035c48:
    lwz     r0, 0x148(sp)
    addi    r5, r27, 0x0
    addi    r3, sp, 0xd4
    stw     r0, 0xd8(sp)
    addi    r4, r30, 0x10
    bl      erase__Q27JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__FQ37JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__8iterator
    lwz     r0, 0xd4(sp)
    stw     r0, 0x148(sp)
branch_0x80035c68:
    lwz     r5, 0x150(sp)
    mr      r3, r29
    lwz     r0, 0x148(sp)
    mr      r4, r28
    stw     r5, 0xa0(sp)
    stw     r0, 0x9c(sp)
    bl      __eq__7JGadgetFQ37JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__8iteratorQ37JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__8iterator
    clrlwi. r0, r3, 24
    beq+    branch_0x80035c48
branch_0x80035c8c:
    cmplwi  r30, 0x0
    beq-    branch_0x80035cac
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80035cac:
    extsh.  r0, r31
    ble-    branch_0x80035cbc
    mr      r3, r30
    bl      __dl__FPv
branch_0x80035cbc:
    mr      r3, r30
    lmw     r27, 0x1d4(sp)
    lwz     r0, 0x1ec(sp)
    addi    sp, sp, 0x1e8
    mtlr    r0
    blr


.globl __eq__7JGadgetFQ37JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__8iteratorQ37JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__8iterator
__eq__7JGadgetFQ37JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__8iteratorQ37JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__8iterator: # 0x80035cd4
    lwz     r3, 0x0(r3)
    lwz     r0, 0x0(r4)
    subf    r0, r3, r0
    cntlzw  r0, r0
    srwi    r3, r0, 5
    blr


.globl erase__Q27JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__FQ37JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__8iterator
erase__Q27JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__FQ37JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__8iterator: # 0x80035cec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    lwz     r5, 0x0(r5)
    lwz     r31, 0x0(r5)
    mr      r3, r5
    lwz     r4, 0x4(r5)
    stw     r31, 0x0(r4)
    lwz     r0, 0x4(r5)
    stw     r0, 0x4(r31)
    bl      __dl__FPv
    lwz     r3, 0x4(r30)
    addi    r0, r3, -0x1
    stw     r0, 0x4(r30)
    stw     r31, 0x0(r29)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__Q37JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__8iteratorFPQ37JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__6TNode_
__ct__Q37JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__8iteratorFPQ37JGadget62TList_P12TLiveManager_Q27JGadget27TAllocator_P12TLiveManager__6TNode_: # 0x80035d58
    stw     r4, 0x0(r3)
    blr


.globl __eq__7JGadgetFQ37JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__8iteratorQ37JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__8iterator
__eq__7JGadgetFQ37JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__8iteratorQ37JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__8iterator: # 0x80035d60
    lwz     r3, 0x0(r3)
    lwz     r0, 0x0(r4)
    subf    r0, r3, r0
    cntlzw  r0, r0
    srwi    r3, r0, 5
    blr


.globl erase__Q27JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__FQ37JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__8iterator
erase__Q27JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__FQ37JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__8iterator: # 0x80035d78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    lwz     r5, 0x0(r5)
    lwz     r31, 0x0(r5)
    mr      r3, r5
    lwz     r4, 0x4(r5)
    stw     r31, 0x0(r4)
    lwz     r0, 0x4(r5)
    stw     r0, 0x4(r31)
    bl      __dl__FPv
    lwz     r3, 0x4(r30)
    addi    r0, r3, -0x1
    stw     r0, 0x4(r30)
    stw     r31, 0x0(r29)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__Q37JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__8iteratorFPQ37JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__6TNode_
__ct__Q37JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__8iteratorFPQ37JGadget64TList_P13TEnemyManager_Q27JGadget28TAllocator_P13TEnemyManager__6TNode_: # 0x80035de4
    stw     r4, 0x0(r3)
    blr


.globl __eq__7JGadgetFQ37JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__8iteratorQ37JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__8iterator
__eq__7JGadgetFQ37JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__8iteratorQ37JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__8iterator: # 0x80035dec
    lwz     r3, 0x0(r3)
    lwz     r0, 0x0(r4)
    subf    r0, r3, r0
    cntlzw  r0, r0
    srwi    r3, r0, 5
    blr


.globl erase__Q27JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__FQ37JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__8iterator
erase__Q27JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__FQ37JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__8iterator: # 0x80035e04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    lwz     r5, 0x0(r5)
    lwz     r31, 0x0(r5)
    mr      r3, r5
    lwz     r4, 0x4(r5)
    stw     r31, 0x0(r4)
    lwz     r0, 0x4(r5)
    stw     r0, 0x4(r31)
    bl      __dl__FPv
    lwz     r3, 0x4(r30)
    addi    r0, r3, -0x1
    stw     r0, 0x4(r30)
    stw     r31, 0x0(r29)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__Q37JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__8iteratorFPQ37JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__6TNode_
__ct__Q37JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__8iteratorFPQ37JGadget58TList_P10TLiveActor_Q27JGadget25TAllocator_P10TLiveActor__6TNode_: # 0x80035e70
    stw     r4, 0x0(r3)
    blr


.globl __eq__7JGadgetFQ37JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__8iteratorQ37JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__8iterator
__eq__7JGadgetFQ37JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__8iteratorQ37JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__8iterator: # 0x80035e78
    lwz     r3, 0x0(r3)
    lwz     r0, 0x0(r4)
    subf    r0, r3, r0
    cntlzw  r0, r0
    srwi    r3, r0, 5
    blr


.globl erase__Q27JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__FQ37JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__8iterator
erase__Q27JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__FQ37JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__8iterator: # 0x80035e90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    lwz     r5, 0x0(r5)
    lwz     r31, 0x0(r5)
    mr      r3, r5
    lwz     r4, 0x4(r5)
    stw     r31, 0x0(r4)
    lwz     r0, 0x4(r5)
    stw     r0, 0x4(r31)
    bl      __dl__FPv
    lwz     r3, 0x4(r30)
    addi    r0, r3, -0x1
    stw     r0, 0x4(r30)
    stw     r31, 0x0(r29)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__Q37JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__8iteratorFPQ37JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__6TNode_
__ct__Q37JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__8iteratorFPQ37JGadget70TList_PQ26JDrama8TViewObj_Q27JGadget31TAllocator_PQ26JDrama8TViewObj__6TNode_: # 0x80035efc
    stw     r4, 0x0(r3)
    blr


.globl __eq__7JGadgetFQ37JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__8iteratorQ37JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__8iterator
__eq__7JGadgetFQ37JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__8iteratorQ37JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__8iterator: # 0x80035f04
    lwz     r3, 0x0(r3)
    lwz     r0, 0x0(r4)
    subf    r0, r3, r0
    cntlzw  r0, r0
    srwi    r3, r0, 5
    blr


.globl erase__Q27JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__FQ37JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__8iterator
erase__Q27JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__FQ37JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__8iterator: # 0x80035f1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    lwz     r5, 0x0(r5)
    lwz     r31, 0x0(r5)
    mr      r3, r5
    lwz     r4, 0x4(r5)
    stw     r31, 0x0(r4)
    lwz     r0, 0x4(r5)
    stw     r0, 0x4(r31)
    bl      __dl__FPv
    lwz     r3, 0x4(r30)
    addi    r0, r3, -0x1
    stw     r0, 0x4(r30)
    stw     r31, 0x0(r29)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__Q37JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__8iteratorFPQ37JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__6TNode_
__ct__Q37JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__8iteratorFPQ37JGadget78TList_P20TAreaCylinderManager_Q27JGadget35TAllocator_P20TAreaCylinderManager__6TNode_: # 0x80035f88
    stw     r4, 0x0(r3)
    blr


.globl __eq__7JGadgetFQ37JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__8iteratorQ37JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__8iterator
__eq__7JGadgetFQ37JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__8iteratorQ37JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__8iterator: # 0x80035f90
    lwz     r3, 0x0(r3)
    lwz     r0, 0x0(r4)
    subf    r0, r3, r0
    cntlzw  r0, r0
    srwi    r3, r0, 5
    blr


.globl erase__Q27JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__FQ37JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__8iterator
erase__Q27JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__FQ37JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__8iterator: # 0x80035fa8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    lwz     r5, 0x0(r5)
    lwz     r31, 0x0(r5)
    mr      r3, r5
    lwz     r4, 0x4(r5)
    stw     r31, 0x0(r4)
    lwz     r0, 0x4(r5)
    stw     r0, 0x4(r31)
    bl      __dl__FPv
    lwz     r3, 0x4(r30)
    addi    r0, r3, -0x1
    stw     r0, 0x4(r30)
    stw     r31, 0x0(r29)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__Q37JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__8iteratorFPQ37JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__6TNode_
__ct__Q37JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__8iteratorFPQ37JGadget58TList_P10TGenerator_Q27JGadget25TAllocator_P10TGenerator__6TNode_: # 0x80036014
    stw     r4, 0x0(r3)
    blr


.globl __eq__7JGadgetFQ37JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__8iteratorQ37JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__8iterator
__eq__7JGadgetFQ37JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__8iteratorQ37JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__8iterator: # 0x8003601c
    lwz     r3, 0x0(r3)
    lwz     r0, 0x0(r4)
    subf    r0, r3, r0
    cntlzw  r0, r0
    srwi    r3, r0, 5
    blr


.globl erase__Q27JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__FQ37JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__8iterator
erase__Q27JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__FQ37JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__8iterator: # 0x80036034
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    lwz     r5, 0x0(r5)
    lwz     r31, 0x0(r5)
    mr      r3, r5
    lwz     r4, 0x4(r5)
    stw     r31, 0x0(r4)
    lwz     r0, 0x4(r5)
    stw     r0, 0x4(r31)
    bl      __dl__FPv
    lwz     r3, 0x4(r30)
    addi    r0, r3, -0x1
    stw     r0, 0x4(r30)
    stw     r31, 0x0(r29)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__Q37JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__8iteratorFPQ37JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__6TNode_
__ct__Q37JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__8iteratorFPQ37JGadget62TList_P12SDLModelData_Q27JGadget27TAllocator_P12SDLModelData__6TNode_: # 0x800360a0
    stw     r4, 0x0(r3)
    blr


.globl __ct__10TConductorFv
__ct__10TConductorFv: # 0x800360a8
    mflr    r0
    lis     r4, unk_80376768@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r27, 0x2c(sp)
    addi    r28, r4, unk_80376768@l
    stw     r3, 0x8(sp)
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    lwz     r27, 0x8(sp)
    addi    r3, r28, 0x168
    stw     r0, 0x0(r27)
    stw     r3, 0x4(r27)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r27)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r27)
    li      r29, 0x0
    lis     r3, __vvt__10TConductor@ha
    sth     r29, 0xc(r27)
    addi    r0, r3, __vvt__10TConductor@l
    addi    r10, r27, 0x18
    stw     r0, 0x0(r27)
    addi    r9, r27, 0x28
    addi    r8, r27, 0x38
    lbz     r0, 0x24(sp)
    addi    r7, r27, 0x48
    addi    r6, r27, 0x58
    stb     r0, 0x10(r27)
    addi    r5, r27, 0x68
    addi    r4, r27, 0x78
    stw     r29, 0x14(r27)
    addi    r0, r28, 0x178
    addi    r3, r28, 0x188
    stw     r10, 0x18(r27)
    stw     r10, 0x1c(r27)
    lbz     r10, 0x20(sp)
    stb     r10, 0x20(r27)
    stw     r29, 0x24(r27)
    stw     r9, 0x28(r27)
    stw     r9, 0x2c(r27)
    lbz     r9, 0x1c(sp)
    stb     r9, 0x30(r27)
    stw     r29, 0x34(r27)
    stw     r8, 0x38(r27)
    stw     r8, 0x3c(r27)
    lbz     r8, 0x18(sp)
    stb     r8, 0x40(r27)
    stw     r29, 0x44(r27)
    stw     r7, 0x48(r27)
    stw     r7, 0x4c(r27)
    lbz     r7, 0x14(sp)
    stb     r7, 0x50(r27)
    stw     r29, 0x54(r27)
    stw     r6, 0x58(r27)
    stw     r6, 0x5c(r27)
    lbz     r6, 0x10(sp)
    stb     r6, 0x60(r27)
    stw     r29, 0x64(r27)
    stw     r5, 0x68(r27)
    stw     r5, 0x6c(r27)
    lbz     r5, 0xc(sp)
    stb     r5, 0x70(r27)
    stw     r29, 0x74(r27)
    stw     r4, 0x78(r27)
    stw     r4, 0x7c(r27)
    stw     r29, 0x80(r27)
    stw     r0, 0x84(r27)
    stw     r29, 0x88(r27)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r27, 0x8c
    addi    r4, r27, 0x84
    addi    r6, r28, 0x188
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r30, r3, __vvt__10TParamT_f_@l
    stw     r30, 0x8c(r27)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r31, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x74f0(r2)
    addi    r3, r28, 0x198
    stfs    f0, 0x9c(r27)
    stw     r31, 0x8c(r27)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r27, 0xa0
    addi    r4, r27, 0x84
    addi    r6, r28, 0x198
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r30, 0xa0(r27)
    addi    r3, r28, 0x1ac
    lfs     f0, -0x74ec(r2)
    stfs    f0, 0xb0(r27)
    stw     r31, 0xa0(r27)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r27, 0xb4
    addi    r4, r27, 0x84
    addi    r6, r28, 0x1ac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r30, 0xb4(r27)
    addi    r3, r28, 0x1c0
    lfs     f0, -0x74e8(r2)
    stfs    f0, 0xc4(r27)
    stw     r31, 0xb4(r27)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r27, 0xc8
    addi    r4, r27, 0x84
    addi    r6, r28, 0x1c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r0, r3, __vvt__10TParamT_l_@l
    stw     r0, 0xc8(r27)
    li      r0, 0x12c
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r0, 0xd8(r27)
    addi    r0, r3, __vvt__11TParamRT_l_@l
    addi    r3, r28, 0x1d0
    stw     r0, 0xc8(r27)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r27, 0xdc
    addi    r4, r27, 0x84
    addi    r6, r28, 0x1d0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r30, 0xdc(r27)
    addi    r3, r27, 0x84
    lfs     f0, -0x74e4(r2)
    stfs    f0, 0xec(r27)
    stw     r31, 0xdc(r27)
    lwz     r4, 0x84(r27)
    bl      load__7TParamsFPCc
    stw     r29, 0xf0(r27)
    li      r0, 0x1
    li      r3, 0x7c
    stw     r29, 0xf4(r27)
    stw     r29, 0xf8(r27)
    stw     r0, 0xfc(r27)
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x800362f0
    mr      r3, r27
    bl      __ct__10TNpcParamsFv
branch_0x800362f0:
    lwz     r3, 0x8(sp)
    stw     r27, 0xf4(r3)
    lmw     r27, 0x2c(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr

