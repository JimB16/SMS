
.globl traceSpline__12TGraphTracerFf
traceSpline__12TGraphTracerFf: # 0x8004b0b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    mr      r31, r3
    stw     r30, 0xa0(sp)
    lwz     r4, 0x0(r3)
    lwz     r5, 0x14(r4)
    cmplwi  r5, 0x0
    bne-    branch_0x8004b0e0
    li      r3, 0x0
    b       branch_0x8004b214

branch_0x8004b0e0:
    lfs     f2, 0x14(r31)
    lwz     r7, 0x4(r5)
    fadds   f3, f2, f1
    cmpwi   r7, 0x0
    beq-    branch_0x8004b12c
    lwz     r6, 0x8(r4)
    lwz     r3, 0x8(r31)
    subi    r0, r6, 0x1
    cmpw    r3, r0
    bne-    branch_0x8004b12c
    lwz     r0, 0x4(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8004b12c
    lwz     r3, 0x0(r5)
    addi    r0, r6, 0x1
    slwi    r0, r0, 2
    lwz     r3, 0x1c(r3)
    lfsx    f4, r3, r0
    b       branch_0x8004b188

branch_0x8004b12c:
    cmpwi   r7, 0x0
    beq-    branch_0x8004b168
    lwz     r0, 0x8(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8004b168
    lwz     r4, 0x8(r4)
    lwz     r3, 0x4(r31)
    subi    r0, r4, 0x1
    cmpw    r3, r0
    bne-    branch_0x8004b168
    lwz     r3, 0x0(r5)
    slwi    r0, r4, 2
    lwz     r3, 0x1c(r3)
    lfsx    f4, r3, r0
    b       branch_0x8004b188

branch_0x8004b168:
    cmpwi   r7, 0x0
    lwz     r4, 0x4(r31)
    beq-    branch_0x8004b178
    addi    r4, r4, 0x1
branch_0x8004b178:
    lwz     r3, 0x0(r5)
    slwi    r0, r4, 2
    lwz     r3, 0x1c(r3)
    lfsx    f4, r3, r0
branch_0x8004b188:
    lfs     f0, -0x6f28(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8004b1b0
    fcmpo   cr0, f2, f4
    cror    2, 0, 2
    bne-    branch_0x8004b1b0
    fcmpo   cr0, f4, f3
    cror    2, 0, 2
    beq-    branch_0x8004b1d4
branch_0x8004b1b0:
    lfs     f0, -0x6f28(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8004b1dc
    fcmpo   cr0, f3, f4
    cror    2, 0, 2
    bne-    branch_0x8004b1dc
    fcmpo   cr0, f4, f2
    cror    2, 0, 2
    bne-    branch_0x8004b1dc
branch_0x8004b1d4:
    li      r30, 0x1
    b       branch_0x8004b1e0

branch_0x8004b1dc:
    li      r30, 0x0
branch_0x8004b1e0:
    fmr     f1, f3
    cmpwi   r7, 0x0
    beq-    branch_0x8004b20c
    lwz     r4, 0x0(r5)
    lwz     r3, 0x0(r4)
    lwz     r4, 0x1c(r4)
    subi    r0, r3, 0x2
    slwi    r0, r0, 2
    lfs     f2, 0x4(r4)
    lfsx    f3, r4, r0
    bl      MsWrap_f___Ffff_8004b22c
branch_0x8004b20c:
    stfs    f1, 0x14(r31)
    mr      r3, r30
branch_0x8004b214:
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    mtlr    r0
    addi    sp, sp, 0xa8
    blr


.globl MsWrap_f___Ffff_8004b22c
MsWrap_f___Ffff_8004b22c: # 0x8004b22c
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x8004b268
    fmr     f1, f2
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0x45c40, 0x8004b244 - 0x8004b240
branch_0x8004b244:
    fsubs   f1, f1, f0
branch_0x8004b248:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x8004b244
    b       branch_0x8004b25c

branch_0x8004b258:
    fadds   f1, f1, f0
branch_0x8004b25c:
    fcmpo   cr0, f1, f2
    blt+    branch_0x8004b258
    blr

branch_0x8004b268:
    fsubs   f0, f3, f2
    b       branch_0x8004b248


.incbin "./baserom/code/Text_0x80005600.bin", 0x45c70, 0x8004b274 - 0x8004b270

.globl calcSplineSpeed__12TGraphTracerFf
calcSplineSpeed__12TGraphTracerFf: # 0x8004b274
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x158(sp)
    stfd    f31, 0x150(sp)
    fmr     f31, f1
    stw     r31, 0x14c(sp)
    mr      r31, r3
    lwz     r3, 0x0(r3)
    lwz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8004b2a8
    lfs     f1, -0x6f24(rtoc)
    b       branch_0x8004b4cc

branch_0x8004b2a8:
    lwz     r0, 0x8(r31)
    cmpwi   r0, 0x0
    bge-    branch_0x8004b2bc
    lfs     f1, -0x6f24(rtoc)
    b       branch_0x8004b4cc

branch_0x8004b2bc:
    lwz     r0, 0x4(r31)
    lis     r5, 0x4330
    lwz     r4, 0x0(r3)
    addi    r3, sp, 0x10c
    slwi    r0, r0, 4
    lwzx    r4, r4, r0
    lfd     f1, -0x6f20(rtoc)
    lha     r0, 0x0(r4)
    xoris   r0, r0, 0x8000
    stw     r0, 0x144(sp)
    stw     r5, 0x140(sp)
    lfd     f0, 0x140(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x9c(sp)
    lha     r0, 0x2(r4)
    xoris   r0, r0, 0x8000
    stw     r0, 0x13c(sp)
    stw     r5, 0x138(sp)
    lfd     f0, 0x138(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xa0(sp)
    lha     r0, 0x4(r4)
    xoris   r0, r0, 0x8000
    stw     r0, 0x134(sp)
    stw     r5, 0x130(sp)
    lfd     f0, 0x130(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xa4(sp)
    lwz     r0, 0x9c(sp)
    lwz     r4, 0xa0(sp)
    stw     r0, 0x10c(sp)
    lwz     r0, 0xa4(sp)
    stw     r4, 0x110(sp)
    stw     r0, 0x114(sp)
    lwz     r4, 0x0(r31)
    lwz     r0, 0x8(r31)
    lwz     r4, 0x0(r4)
    slwi    r0, r0, 4
    lfs     f2, 0x10c(sp)
    lwzx    r4, r4, r0
    lha     r0, 0x0(r4)
    xoris   r0, r0, 0x8000
    stw     r0, 0x12c(sp)
    stw     r5, 0x128(sp)
    lfd     f0, 0x128(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x88(sp)
    lha     r0, 0x2(r4)
    xoris   r0, r0, 0x8000
    stw     r0, 0x124(sp)
    stw     r5, 0x120(sp)
    lfd     f0, 0x120(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x8c(sp)
    lha     r0, 0x4(r4)
    xoris   r0, r0, 0x8000
    stw     r0, 0x11c(sp)
    stw     r5, 0x118(sp)
    lfd     f0, 0x118(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x90(sp)
    lwz     r0, 0x88(sp)
    lwz     r4, 0x8c(sp)
    stw     r0, 0x100(sp)
    lwz     r0, 0x90(sp)
    stw     r4, 0x104(sp)
    stw     r0, 0x108(sp)
    lfs     f0, 0x100(sp)
    lfs     f1, 0x104(sp)
    fsubs   f2, f2, f0
    lfs     f0, 0x108(sp)
    stfs    f2, 0x10c(sp)
    lfs     f2, 0x110(sp)
    fsubs   f1, f2, f1
    stfs    f1, 0x110(sp)
    lfs     f1, 0x114(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x114(sp)
    bl      PSVECMag
    lwz     r6, 0x0(r31)
    lwz     r5, 0x14(r6)
    lwz     r7, 0x4(r5)
    cmpwi   r7, 0x0
    beq-    branch_0x8004b440
    lwz     r3, 0x8(r6)
    lwz     r4, 0x8(r31)
    subi    r0, r3, 0x1
    cmpw    r4, r0
    bne-    branch_0x8004b440
    lwz     r0, 0x4(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8004b440
    lwz     r3, 0x0(r5)
    lwz     r3, 0x1c(r3)
    lfs     f2, 0x0(r3)
    lfs     f0, 0x4(r3)
    b       branch_0x8004b4c0

branch_0x8004b440:
    cmpwi   r7, 0x0
    beq-    branch_0x8004b488
    lwz     r0, 0x8(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8004b488
    lwz     r6, 0x8(r6)
    lwz     r3, 0x4(r31)
    subi    r0, r6, 0x1
    cmpw    r3, r0
    bne-    branch_0x8004b488
    lwz     r4, 0x0(r5)
    addi    r0, r6, 0x1
    slwi    r3, r0, 2
    lwz     r4, 0x1c(r4)
    slwi    r0, r6, 2
    lfsx    f2, r4, r3
    lfsx    f0, r4, r0
    b       branch_0x8004b4c0

branch_0x8004b488:
    cmpwi   r7, 0x0
    lwz     r4, 0x8(r31)
    beq-    branch_0x8004b498
    addi    r4, r4, 0x1
branch_0x8004b498:
    lwz     r3, 0x0(r5)
    slwi    r0, r4, 2
    cmpwi   r7, 0x0
    lwz     r4, 0x4(r31)
    lwz     r3, 0x1c(r3)
    lfsx    f2, r3, r0
    beq-    branch_0x8004b4b8
    addi    r4, r4, 0x1
branch_0x8004b4b8:
    slwi    r0, r4, 2
    lfsx    f0, r3, r0
branch_0x8004b4c0:
    fsubs   f0, f0, f2
    fmuls   f0, f31, f0
    fdivs   f1, f0, f1
branch_0x8004b4cc:
    lwz     r0, 0x15c(sp)
    lfd     f31, 0x150(sp)
    lwz     r31, 0x14c(sp)
    mtlr    r0
    addi    sp, sp, 0x158
    blr


.globl moveTo__12TGraphTracerFi
moveTo__12TGraphTracerFi: # 0x8004b4e4
    cmpwi   r4, 0x0
    stwu    sp, -0x60(sp)
    bge-    branch_0x8004b4f8
    mr      r3, r4
    b       branch_0x8004b59c

branch_0x8004b4f8:
    lwz     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r4, 0x4(r3)
    lwz     r0, 0x4(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x8004b54c
    lwz     r6, 0x0(r3)
    slwi    r5, r0, 4
    lis     r0, 0x4330
    lfd     f1, -0x6f10(rtoc)
    lwz     r6, 0x0(r6)
    lfs     f2, -0x6f18(rtoc)
    lwzx    r5, r6, r5
    lhz     r5, 0xc(r5)
    stw     r5, 0x5c(sp)
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x10(r3)
    b       branch_0x8004b554

branch_0x8004b54c:
    lfs     f0, -0x6f28(rtoc)
    stfs    f0, 0x10(r3)
branch_0x8004b554:
    lwz     r0, 0x8(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x8004b598
    lwz     r6, 0x0(r3)
    slwi    r5, r0, 4
    lis     r0, 0x4330
    lfd     f1, -0x6f10(rtoc)
    lwz     r6, 0x0(r6)
    lfs     f2, -0x6f14(rtoc)
    lwzx    r5, r6, r5
    lhz     r5, 0xe(r5)
    stw     r5, 0x5c(sp)
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0xc(r3)
branch_0x8004b598:
    mr      r3, r4
branch_0x8004b59c:
    addi    sp, sp, 0x60
    blr


.globl setTo__12TGraphTracerFi
setTo__12TGraphTracerFi: # 0x8004b5a4
    stwu    sp, -0x60(sp)
    li      r0, -0x1
    stw     r0, 0x8(r3)
    stw     r4, 0x4(r3)
    lwz     r0, 0x4(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x8004b5fc
    lwz     r5, 0x0(r3)
    slwi    r4, r0, 4
    lis     r0, 0x4330
    lfd     f1, -0x6f10(rtoc)
    lwz     r5, 0x0(r5)
    lfs     f2, -0x6f18(rtoc)
    lwzx    r4, r5, r4
    lhz     r4, 0xc(r4)
    stw     r4, 0x5c(sp)
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x10(r3)
    b       branch_0x8004b604

branch_0x8004b5fc:
    lfs     f0, -0x6f28(rtoc)
    stfs    f0, 0x10(r3)
branch_0x8004b604:
    lwz     r0, 0x8(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x8004b648
    lwz     r5, 0x0(r3)
    slwi    r4, r0, 4
    lis     r0, 0x4330
    lfd     f1, -0x6f10(rtoc)
    lwz     r5, 0x0(r5)
    lfs     f2, -0x6f14(rtoc)
    lwzx    r4, r5, r4
    lhz     r4, 0xe(r4)
    stw     r4, 0x5c(sp)
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0xc(r3)
branch_0x8004b648:
    addi    sp, sp, 0x60
    blr


.globl __ct__12TGraphTracerFv
__ct__12TGraphTracerFv: # 0x8004b650
    li      r0, 0x0
    stw     r0, 0x0(r3)
    li      r0, -0x1
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    lfs     f0, -0x6f08(rtoc)
    stfs    f0, 0xc(r3)
    lfs     f0, -0x6f04(rtoc)
    stfs    f0, 0x10(r3)
    lfs     f0, -0x6f28(rtoc)
    stfs    f0, 0x14(r3)
    blr


.globl perform__11TGraphGroupFUlPQ26JDrama9TGraphics
perform__11TGraphGroupFUlPQ26JDrama9TGraphics: # 0x8004b680
    lwz     r6, 0x4(r3)
    li      r7, 0x0
    cmpwi   r6, 0x0
    blelr-    

    cmpwi   r6, 0x8
    subi    r5, r6, 0x8
    ble-    branch_0x8004b6b8
    addi    r0, r5, 0x7
    srwi    r0, r0, 3
    cmpwi   r5, 0x0
    mtctr   r0
    ble-    branch_0x8004b6b8
branch_0x8004b6b0:
    addi    r7, r7, 0x8
    bdnz+      branch_0x8004b6b0
branch_0x8004b6b8:
    subf    r0, r7, r6
    cmpw    r7, r6
    mtctr   r0
    bgelr-    

branch_0x8004b6c8:
    bdnz-      branch_0x8004b6c8
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0x460d0, 0x8004b6d8 - 0x8004b6d0

.globl getGraphByName__11TGraphGroupFPCc
getGraphByName__11TGraphGroupFPCc: # 0x8004b6d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr.     r29, r4
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    bne-    branch_0x8004b708
    lwz     r3, 0xc(r28)
    b       branch_0x8004b75c

branch_0x8004b708:
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x8004b74c

branch_0x8004b714:
    lwz     r4, 0x0(r28)
    addi    r0, r31, 0x4
    addi    r3, r29, 0x0
    lwzx    r0, r4, r0
    add     r4, r4, r0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8004b744
    lwz     r3, 0x8(r28)
    slwi    r0, r30, 2
    lwzx    r3, r3, r0
    b       branch_0x8004b75c

branch_0x8004b744:
    addi    r30, r30, 0x1
    addi    r31, r31, 0xc
branch_0x8004b74c:
    lwz     r0, 0x4(r28)
    cmpw    r30, r0
    blt+    branch_0x8004b714
    lwz     r3, 0xc(r28)
branch_0x8004b75c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl initGraphGroup__11TGraphGroupFv
initGraphGroup__11TGraphGroupFv: # 0x8004b77c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stfd    f31, 0xb8(sp)
    stfd    f30, 0xb0(sp)
    stmw    r23, 0x8c(sp)
    mr      r25, r3
    addi    r28, sp, 0x54
    li      r26, 0x0
    li      r24, 0x0
    lis     r31, 0x4330
    lfd     f31, -0x6f20(rtoc)
    lfs     f30, -0x6f28(rtoc)
    b       branch_0x8004b938

branch_0x8004b7b4:
    lwz     r3, 0x8(r25)
    lwzx    r29, r3, r24
    lwz     r0, 0x10(r29)
    cmpwi   r0, 0x0
    bge-    branch_0x8004b930
    stfs    f30, 0x54(sp)
    mr      r3, r29
    addi    r4, r28, 0x0
    stfs    f30, 0x58(sp)
    li      r5, -0x1
    stfs    f30, 0x5c(sp)
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    li      r6, 0x0
    stw     r3, 0x10(r29)
    addi    r3, r6, 0x0
    addi    r5, r6, 0x0
    b       branch_0x8004b80c

branch_0x8004b7f8:
    lwz     r4, 0x0(r29)
    addi    r0, r3, 0x4
    addi    r3, r3, 0x10
    stwx    r5, r4, r0
    addi    r6, r6, 0x1
branch_0x8004b80c:
    lwz     r0, 0x8(r29)
    cmpw    r6, r0
    blt+    branch_0x8004b7f8
    lwz     r0, 0x10(r29)
    mr      r3, r29
    lwz     r6, 0x0(r29)
    slwi    r4, r0, 4
    addi    r5, r4, 0x4
    lwzx    r4, r6, r5
    addi    r0, r4, 0x1
    stwx    r0, r6, r5
    lwz     r0, 0x10(r29)
    lwz     r5, 0x0(r29)
    slwi    r4, r0, 4
    addi    r0, r4, 0x8
    stfsx   f30, r5, r0
    lwz     r4, 0x10(r29)
    bl      calcGraphDirection__9TGraphWebFi
    lwz     r3, 0x8(r25)
    li      r30, 0x0
    li      r23, 0x0
    lwzx    r29, r3, r24
    b       branch_0x8004b924

branch_0x8004b868:
    lwz     r0, 0x4(r29)
    add     r27, r0, r23
    lwz     r0, 0x8(r27)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8004b91c
    lha     r0, 0x0(r27)
    addi    r4, sp, 0x44
    lha     r3, 0x2(r27)
    addi    r5, sp, 0x50
    xoris   r0, r0, 0x8000
    stw     r0, 0x84(sp)
    xoris   r3, r3, 0x8000
    lha     r0, 0x4(r27)
    stw     r31, 0x80(sp)
    xoris   r0, r0, 0x8000
    stw     r3, 0x7c(sp)
    lfd     f0, 0x80(sp)
    stw     r31, 0x78(sp)
    fsubs   f2, f0, f31
    stw     r0, 0x74(sp)
    lfd     f0, 0x78(sp)
    stw     r31, 0x70(sp)
    fsubs   f1, f0, f31
    lfd     f0, 0x70(sp)
    stfs    f2, 0x44(sp)
    fsubs   f0, f0, f31
    stfs    f1, 0x48(sp)
    stfs    f0, 0x4c(sp)
    lwz     r3, -0x6328(r13)
    bl      checkGround__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
    stfs    f1, 0x48(sp)
    lwz     r3, 0x50(sp)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8004b8fc
    li      r0, 0x1
    b       branch_0x8004b900

branch_0x8004b8fc:
    li      r0, 0x0
branch_0x8004b900:
    clrlwi. r0, r0, 24
    bne-    branch_0x8004b91c
    lfs     f0, 0x48(sp)
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r0, 0x74(sp)
    sth     r0, 0x2(r27)
branch_0x8004b91c:
    addi    r30, r30, 0x1
    addi    r23, r23, 0x44
branch_0x8004b924:
    lwz     r0, 0x8(r29)
    cmpw    r30, r0
    blt+    branch_0x8004b868
branch_0x8004b930:
    addi    r26, r26, 0x1
    addi    r24, r24, 0x4
branch_0x8004b938:
    lwz     r0, 0x4(r25)
    cmpw    r26, r0
    blt+    branch_0x8004b7b4
    lmw     r23, 0x8c(sp)
    lwz     r0, 0xc4(sp)
    lfd     f31, 0xb8(sp)
    lfd     f30, 0xb0(sp)
    mtlr    r0
    addi    sp, sp, 0xc0
    blr


.globl __ct__11TGraphGroupFPv
__ct__11TGraphGroupFPv: # 0x8004b960
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    mr      r31, r3
    stw     r4, 0x0(r3)
    li      r3, 0x0
    stw     r3, 0x4(r31)
    stw     r3, 0x8(r31)
    lwz     r0, 0x0(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8004b9c4
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x8004b9b8
    lis     r3, 0x8038
    subi    r5, r3, 0x7db0
    addi    r3, r28, 0x0
    li      r4, 0x0
    li      r6, -0x1
    bl      __ct__9TGraphWebFP9TRailNodePCci
branch_0x8004b9b8:
    stw     r28, 0xc(r31)
    mr      r3, r31
    b       branch_0x8004ba98

branch_0x8004b9c4:
    stw     r3, 0x4(r31)
    b       branch_0x8004b9d8

branch_0x8004b9cc:
    lwz     r3, 0x4(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r31)
branch_0x8004b9d8:
    lwz     r4, 0x4(r31)
    lwz     r3, 0x0(r31)
    mulli   r0, r4, 0xc
    lwzx    r0, r3, r0
    cmpwi   r0, 0x0
    bne+    branch_0x8004b9cc
    cmpwi   r4, 0x0
    ble-    branch_0x8004ba68
    slwi    r3, r4, 2
    bl      __nwa__FUl
    stw     r3, 0x8(r31)
    li      r28, 0x0
    li      r30, 0x0
    li      r29, 0x0
    b       branch_0x8004ba5c

branch_0x8004ba14:
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8004ba48
    lwz     r7, 0x0(r31)
    addi    r3, r27, 0x0
    add     r6, r7, r29
    lwz     r4, 0x4(r6)
    lwz     r0, 0x8(r6)
    add     r5, r7, r4
    lwz     r6, 0x0(r6)
    add     r4, r7, r0
    bl      __ct__9TGraphWebFP9TRailNodePCci
branch_0x8004ba48:
    lwz     r3, 0x8(r31)
    addi    r28, r28, 0x1
    addi    r29, r29, 0xc
    stwx    r27, r3, r30
    addi    r30, r30, 0x4
branch_0x8004ba5c:
    lwz     r0, 0x4(r31)
    cmpw    r28, r0
    blt+    branch_0x8004ba14
branch_0x8004ba68:
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8004ba90
    lis     r3, 0x8038
    subi    r5, r3, 0x7db0
    addi    r3, r27, 0x0
    li      r4, 0x0
    li      r6, -0x1
    bl      __ct__9TGraphWebFP9TRailNodePCci
branch_0x8004ba90:
    stw     r27, 0xc(r31)
    mr      r3, r31
branch_0x8004ba98:
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl getNeighborNodeIndexByFlag__9TGraphWebCFiiUl
getNeighborNodeIndexByFlag__9TGraphWebCFiiUl: # 0x8004baac
    mflr    r0
    stw     r0, 0x4(sp)
    slwi    r0, r4, 4
    li      r4, 0x0
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r7, sp, 0x30
    li      r31, 0x0
    lwz     r11, 0x0(r3)
    add     r3, r11, r0
    lwz     r9, 0x0(r3)
    li      r3, 0x0
    lha     r0, 0x6(r9)
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x8004bb24
branch_0x8004baec:
    addi    r0, r4, 0x14
    lhzx    r10, r9, r0
    cmpw    r10, r5
    beq-    branch_0x8004bb1c
    slwi    r0, r10, 4
    lwzx    r8, r11, r0
    lwz     r0, 0x8(r8)
    and.    r0, r0, r6
    beq-    branch_0x8004bb1c
    stwx    r10, r7, r3
    addi    r31, r31, 0x1
    addi    r3, r3, 0x4
branch_0x8004bb1c:
    addi    r4, r4, 0x2
    bdnz+      branch_0x8004baec
branch_0x8004bb24:
    cmpwi   r31, 0x0
    bne-    branch_0x8004bb34
    li      r3, -0x1
    b       branch_0x8004bb8c

branch_0x8004bb34:
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6f20(rtoc)
    stw     r0, 0x6c(sp)
    lis     r4, 0x4330
    xoris   r0, r31, 0x8000
    lfs     f1, -0x6f00(rtoc)
    stw     r4, 0x68(sp)
    addi    r3, sp, 0x30
    stw     r0, 0x64(sp)
    lfd     f0, 0x68(sp)
    stw     r4, 0x60(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x60(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r0, 0x5c(sp)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
branch_0x8004bb8c:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl getNearestPosOnGraphLink__9TGraphWebCFRCQ29JGeometry8TVec3_f_
getNearestPosOnGraphLink__9TGraphWebCFRCQ29JGeometry8TVec3_f_: # 0x8004bba0
    stwu    sp, -0xa0(sp)
    li      r8, 0x1
    li      r9, 0x0
    stfd    f31, 0x98(sp)
    li      r10, 0x0
    stfd    f30, 0x90(sp)
    stw     r31, 0x8c(sp)
    stw     r30, 0x88(sp)
    lis     r30, 0x4330
    stw     r29, 0x84(sp)
    lwz     r6, 0x0(r5)
    lwz     r0, 0x4(r5)
    lfd     f2, -0x6f20(rtoc)
    stw     r6, 0x58(sp)
    lfs     f1, -0x6f28(rtoc)
    stw     r0, 0x5c(sp)
    lfs     f0, -0x6f04(rtoc)
    lwz     r0, 0x8(r5)
    stw     r0, 0x60(sp)
    lwz     r0, 0x8(r4)
    b       branch_0x8004be2c

branch_0x8004bbf4:
    lwz     r7, 0x0(r4)
    li      r11, 0x0
    add     r6, r7, r10
    lwz     r6, 0x0(r6)
    lha     r29, 0x0(r6)
    lha     r31, 0x2(r6)
    lha     r12, 0x4(r6)
    xoris   r29, r29, 0x8000
    xoris   r31, r31, 0x8000
    stw     r29, 0x7c(sp)
    xoris   r12, r12, 0x8000
    stw     r31, 0x74(sp)
    lha     r29, 0x6(r6)
    stw     r12, 0x6c(sp)
    cmpwi   r29, 0x0
    mtctr   r29
    stw     r30, 0x78(sp)
    stw     r30, 0x70(sp)
    lfd     f3, 0x78(sp)
    stw     r30, 0x68(sp)
    lfd     f4, 0x70(sp)
    fsubs   f3, f3, f2
    lfd     f5, 0x68(sp)
    fsubs   f4, f4, f2
    fsubs   f5, f5, f2
    ble-    branch_0x8004be24
branch_0x8004bc5c:
    addi    r12, r11, 0x14
    lhzx    r12, r6, r12
    slwi    r12, r12, 4
    lwzx    r29, r7, r12
    lha     r12, 0x0(r29)
    xoris   r12, r12, 0x8000
    stw     r12, 0x6c(sp)
    stw     r30, 0x68(sp)
    lfd     f6, 0x68(sp)
    fsubs   f6, f6, f2
    stfs    f6, 0x38(sp)
    lha     r12, 0x2(r29)
    xoris   r12, r12, 0x8000
    stw     r12, 0x74(sp)
    stw     r30, 0x70(sp)
    lfd     f6, 0x70(sp)
    fsubs   f6, f6, f2
    stfs    f6, 0x3c(sp)
    lha     r12, 0x4(r29)
    xoris   r12, r12, 0x8000
    stw     r12, 0x7c(sp)
    stw     r30, 0x78(sp)
    lfd     f6, 0x78(sp)
    fsubs   f6, f6, f2
    stfs    f6, 0x40(sp)
    lfs     f6, 0x38(sp)
    fsubs   f6, f6, f3
    stfs    f6, 0x38(sp)
    lfs     f6, 0x3c(sp)
    fsubs   f6, f6, f4
    stfs    f6, 0x3c(sp)
    lfs     f6, 0x40(sp)
    fsubs   f6, f6, f5
    stfs    f6, 0x40(sp)
    lfs     f6, 0x3c(sp)
    lfs     f9, 0x4(r5)
    fmuls   f10, f4, f6
    lfs     f31, 0x38(sp)
    fmuls   f7, f9, f6
    lfs     f8, 0x0(r5)
    fmuls   f12, f6, f6
    fmadds  f30, f8, f31, f7
    lfs     f7, 0x40(sp)
    fmadds  f13, f3, f31, f10
    lfs     f10, 0x8(r5)
    fmadds  f12, f31, f31, f12
    fmadds  f30, f10, f7, f30
    fmadds  f31, f5, f7, f13
    fmadds  f13, f7, f7, f12
    fsubs   f12, f30, f31
    fdivs   f12, f12, f13
    fcmpo   cr0, f12, f1
    bge-    branch_0x8004bd38
    fmr     f12, f1
    b       branch_0x8004bd44

branch_0x8004bd38:
    fcmpo   cr0, f12, f0
    ble-    branch_0x8004bd44
    fmr     f12, f0
branch_0x8004bd44:
    lwz     r12, 0x38(sp)
    cmpwi   r8, 0x0
    lwz     r31, 0x3c(sp)
    stw     r12, 0x2c(sp)
    lwz     r12, 0x40(sp)
    stw     r31, 0x30(sp)
    stw     r12, 0x34(sp)
    lfs     f13, 0x2c(sp)
    fmuls   f13, f13, f12
    stfs    f13, 0x2c(sp)
    lfs     f13, 0x30(sp)
    fmuls   f13, f13, f12
    stfs    f13, 0x30(sp)
    lfs     f13, 0x34(sp)
    fmuls   f13, f13, f12
    stfs    f13, 0x34(sp)
    lfs     f13, 0x2c(sp)
    fadds   f13, f13, f3
    stfs    f13, 0x2c(sp)
    lfs     f13, 0x30(sp)
    fadds   f13, f13, f4
    stfs    f13, 0x30(sp)
    lfs     f13, 0x34(sp)
    fadds   f13, f13, f5
    stfs    f13, 0x34(sp)
    lfs     f13, 0x2c(sp)
    fsubs   f8, f13, f8
    stfs    f8, 0x2c(sp)
    lfs     f8, 0x30(sp)
    fsubs   f8, f8, f9
    stfs    f8, 0x30(sp)
    lfs     f8, 0x34(sp)
    fsubs   f8, f8, f10
    stfs    f8, 0x34(sp)
    lfs     f9, 0x2c(sp)
    lfs     f8, 0x30(sp)
    fmuls   f9, f9, f9
    lfs     f10, 0x34(sp)
    fmuls   f8, f8, f8
    fmuls   f10, f10, f10
    fadds   f8, f9, f8
    fadds   f10, f10, f8
    bne-    branch_0x8004bdf8
    fcmpo   cr0, f10, f11
    bge-    branch_0x8004be1c
branch_0x8004bdf8:
    lfs     f9, 0x38(sp)
    fmadds  f8, f6, f12, f4
    fmadds  f6, f7, f12, f5
    li      r8, 0x0
    fmadds  f7, f9, f12, f3
    fmr     f11, f10
    stfs    f7, 0x58(sp)
    stfs    f8, 0x5c(sp)
    stfs    f6, 0x60(sp)
branch_0x8004be1c:
    addi    r11, r11, 0x2
    bdnz+      branch_0x8004bc5c
branch_0x8004be24:
    addi    r9, r9, 0x1
    addi    r10, r10, 0x10
branch_0x8004be2c:
    cmpw    r9, r0
    blt+    branch_0x8004bbf4
    lwz     r4, 0x58(sp)
    lwz     r0, 0x5c(sp)
    stw     r4, 0x0(r3)
    stw     r0, 0x4(r3)
    lwz     r0, 0x60(sp)
    stw     r0, 0x8(r3)
    lfd     f31, 0x98(sp)
    lfd     f30, 0x90(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    lwz     r29, 0x84(sp)
    addi    sp, sp, 0xa0
    blr


.globl isDummy__9TGraphWebCFv
isDummy__9TGraphWebCFv: # 0x8004be68
    lis     r4, 0x803b
    lwz     r3, 0x4(r3)
    subi    r0, r4, 0x4b8
    cmplw   r3, r0
    bne-    branch_0x8004be84
    li      r3, 0x1
    blr

branch_0x8004be84:
    li      r3, 0x0
    blr


.globl indexToPoint__9TGraphWebCFi
indexToPoint__9TGraphWebCFi: # 0x8004be8c
    stwu    sp, -0x48(sp)
    slwi    r0, r5, 4
    lwz     r6, 0x0(r4)
    lis     r4, 0x4330
    lfd     f1, -0x6f20(rtoc)
    lwzx    r5, r6, r0
    lha     r0, 0x0(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0x44(sp)
    stw     r4, 0x40(sp)
    lfd     f0, 0x40(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x24(sp)
    lha     r0, 0x2(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0x3c(sp)
    stw     r4, 0x38(sp)
    lfd     f0, 0x38(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x28(sp)
    lha     r0, 0x4(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0x34(sp)
    stw     r4, 0x30(sp)
    lfd     f0, 0x30(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x2c(sp)
    lwz     r4, 0x24(sp)
    lwz     r0, 0x28(sp)
    stw     r4, 0x0(r3)
    stw     r0, 0x4(r3)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x48
    stw     r0, 0x8(r3)
    blr


.globl startIsEnd__9TGraphWebCFv
startIsEnd__9TGraphWebCFv: # 0x8004bf18
    lwz     r4, 0x0(r3)
    lwz     r5, 0x0(r4)
    lha     r0, 0x6(r5)
    cmpwi   r0, 0x2
    bgt-    branch_0x8004bf4c
    lwz     r3, 0x8(r3)
    lhz     r0, 0x14(r5)
    subi    r3, r3, 0x1
    cmpw    r0, r3
    beq-    branch_0x8004bf54
    lhz     r0, 0x16(r5)
    cmpw    r0, r3
    beq-    branch_0x8004bf54
branch_0x8004bf4c:
    li      r3, 0x0
    blr

branch_0x8004bf54:
    slwi    r0, r3, 4
    lwzx    r3, r4, r0
    lha     r0, 0x6(r3)
    cmpwi   r0, 0x2
    bgt-    branch_0x8004bf80
    lhz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8004bf88
    lhz     r0, 0x16(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8004bf88
branch_0x8004bf80:
    li      r3, 0x0
    blr

branch_0x8004bf88:
    li      r3, 0x1
    blr


.globl initGoalIndex__9TGraphWebFRC3Vec
initGoalIndex__9TGraphWebFRC3Vec: # 0x8004bf90
    mflr    r0
    li      r5, -0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r0, sp, 0x28
    mr      r31, r3
    lfs     f2, 0x8(r4)
    lfs     f1, 0x4(r4)
    lfs     f0, 0x0(r4)
    mr      r4, r0
    stfs    f0, 0x28(sp)
    stfs    f1, 0x2c(sp)
    stfs    f2, 0x30(sp)
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    li      r4, 0x0
    stw     r3, 0x10(r31)
    addi    r5, r4, 0x0
    li      r6, 0x0
    b       branch_0x8004bff4

branch_0x8004bfe0:
    lwz     r3, 0x0(r31)
    addi    r0, r4, 0x4
    addi    r4, r4, 0x10
    stwx    r5, r3, r0
    addi    r6, r6, 0x1
branch_0x8004bff4:
    lwz     r0, 0x8(r31)
    cmpw    r6, r0
    blt+    branch_0x8004bfe0
    lwz     r0, 0x10(r31)
    mr      r3, r31
    lwz     r6, 0x0(r31)
    slwi    r4, r0, 4
    addi    r5, r4, 0x4
    lwzx    r4, r6, r5
    addi    r0, r4, 0x1
    stwx    r0, r6, r5
    lwz     r0, 0x10(r31)
    lfs     f0, -0x6f28(rtoc)
    slwi    r4, r0, 4
    lwz     r5, 0x0(r31)
    addi    r0, r4, 0x8
    stfsx   f0, r5, r0
    lwz     r4, 0x10(r31)
    bl      calcGraphDirection__9TGraphWebFi
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl calcGraphDirection__9TGraphWebFi
calcGraphDirection__9TGraphWebFi: # 0x8004c054
    mflr    r0
    stw     r0, 0x4(sp)
    slwi    r0, r4, 4
    stwu    sp, -0x68(sp)
    stmw    r26, 0x50(sp)
    mr      r30, r3
    li      r31, 0x0
    li      r29, 0x0
    li      r28, 0x0
    lwz     r3, 0x0(r3)
    add     r26, r3, r0
    lwz     r27, 0x0(r26)
    b       branch_0x8004c0e8

branch_0x8004c088:
    addi    r0, r29, 0x14
    lwz     r3, 0x0(r30)
    lhzx    r4, r27, r0
    addi    r0, r28, 0x24
    lfsx    f1, r27, r0
    slwi    r0, r4, 4
    lfs     f0, 0x8(r26)
    add     r6, r3, r0
    lwz     r0, 0x4(r6)
    fadds   f1, f1, f0
    cmpwi   r0, 0x0
    beq-    branch_0x8004c0c4
    lfs     f0, 0x8(r6)
    fcmpo   cr0, f0, f1
    ble-    branch_0x8004c0dc
branch_0x8004c0c4:
    lwz     r5, 0x4(r6)
    addi    r3, r30, 0x0
    addi    r0, r5, 0x1
    stw     r0, 0x4(r6)
    stfs    f1, 0x8(r6)
    bl      calcGraphDirection__9TGraphWebFi
branch_0x8004c0dc:
    addi    r31, r31, 0x1
    addi    r29, r29, 0x2
    addi    r28, r28, 0x4
branch_0x8004c0e8:
    lha     r0, 0x6(r27)
    cmpw    r31, r0
    blt+    branch_0x8004c088
    lmw     r26, 0x50(sp)
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl findNearestVisibleIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_fffUl
findNearestVisibleIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_fffUl: # 0x8004c108
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stfd    f30, 0x98(sp)
    stfd    f29, 0x90(sp)
    fmr     f29, f3
    stfd    f28, 0x88(sp)
    fmr     f28, f2
    stfd    f27, 0x80(sp)
    fmr     f27, f1
    stfd    f26, 0x78(sp)
    stmw    r24, 0x58(sp)
    mr      r28, r5
    mr      r26, r3
    addi    r27, r4, 0x0
    addis   r31, r28, 0x1
    li      r29, -0x1
    li      r30, 0x0
    li      r25, 0x0
    lis     r24, 0x4330
    lfs     f30, -0x6efc(rtoc)
    lfs     f26, -0x6f28(rtoc)
    lfd     f31, -0x6f20(rtoc)
    b       branch_0x8004c284

branch_0x8004c16c:
    cmplwi  r31, 0xffff
    beq-    branch_0x8004c188
    lwz     r3, 0x0(r26)
    lwzx    r3, r3, r25
    lwz     r0, 0x8(r3)
    and.    r0, r0, r28
    bne-    branch_0x8004c27c
branch_0x8004c188:
    lwz     r0, 0x0(r26)
    fmr     f1, f27
    fmr     f2, f28
    addi    r3, r27, 0x0
    add     r6, r0, r25
    lwz     r4, 0x0(r6)
    fmr     f3, f29
    lha     r0, 0x0(r4)
    addi    r4, sp, 0x30
    xoris   r0, r0, 0x8000
    stw     r0, 0x54(sp)
    stw     r24, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f31
    stfs    f0, 0x30(sp)
    lwz     r5, 0x0(r6)
    lha     r0, 0x2(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0x4c(sp)
    stw     r24, 0x48(sp)
    lfd     f0, 0x48(sp)
    fsubs   f0, f0, f31
    stfs    f0, 0x34(sp)
    lwz     r5, 0x0(r6)
    lha     r0, 0x4(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0x44(sp)
    stw     r24, 0x40(sp)
    lfd     f0, 0x40(sp)
    fsubs   f0, f0, f31
    stfs    f0, 0x38(sp)
    lfs     f4, -0x6f28(rtoc)
    bl      MsIsInSight__FRCQ29JGeometry8TVec3_f_fRCQ29JGeometry8TVec3_f_fff
    cmpwi   r3, 0x0
    beq-    branch_0x8004c27c
    lfs     f1, 0x30(sp)
    fcmpo   cr0, f30, f26
    lfs     f0, 0x0(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x4(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x8(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x34(sp)
    lfs     f2, 0x38(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    blt-    branch_0x8004c274
    fcmpo   cr0, f0, f30
    bge-    branch_0x8004c27c
branch_0x8004c274:
    fmr     f30, f0
    mr      r29, r30
branch_0x8004c27c:
    addi    r30, r30, 0x1
    addi    r25, r25, 0x10
branch_0x8004c284:
    lwz     r0, 0x8(r26)
    cmpw    r30, r0
    blt+    branch_0x8004c16c
    mr      r3, r29
    lmw     r24, 0x58(sp)
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lfd     f30, 0x98(sp)
    mtlr    r0
    lfd     f29, 0x90(sp)
    lfd     f28, 0x88(sp)
    lfd     f27, 0x80(sp)
    lfd     f26, 0x78(sp)
    addi    sp, sp, 0xa8
    blr


.globl findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul: # 0x8004c2c0
    stwu    sp, -0x58(sp)
    addis   r10, r5, 0x1
    li      r12, 0x0
    stw     r31, 0x54(sp)
    li      r31, -0x1
    li      r6, 0x0
    lwz     r0, 0x8(r3)
    lis     r8, 0x4330
    lfs     f8, -0x6efc(rtoc)
    cmpwi   r0, 0x0
    mtctr   r0
    lfd     f5, -0x6f20(rtoc)
    lfs     f0, -0x6f28(rtoc)
    ble-    branch_0x8004c3ac
branch_0x8004c2f8:
    cmplwi  r10, 0xffff
    beq-    branch_0x8004c314
    lwz     r7, 0x0(r3)
    lwzx    r7, r7, r6
    lwz     r0, 0x8(r7)
    and.    r0, r0, r5
    bne-    branch_0x8004c3a0
branch_0x8004c314:
    lwz     r7, 0x0(r3)
    fcmpo   cr0, f8, f0
    lfs     f1, 0x4(r4)
    lwzx    r11, r7, r6
    lfs     f3, 0x0(r4)
    lha     r0, 0x2(r11)
    lha     r9, 0x0(r11)
    xoris   r7, r0, 0x8000
    lha     r0, 0x4(r11)
    stw     r7, 0x44(sp)
    xoris   r7, r9, 0x8000
    xoris   r0, r0, 0x8000
    lfs     f2, 0x8(r4)
    stw     r8, 0x40(sp)
    stw     r7, 0x4c(sp)
    lfd     f4, 0x40(sp)
    stw     r8, 0x48(sp)
    fsubs   f7, f4, f5
    stw     r0, 0x3c(sp)
    lfd     f4, 0x48(sp)
    stw     r8, 0x38(sp)
    fsubs   f7, f7, f1
    fsubs   f6, f4, f5
    lfd     f4, 0x38(sp)
    fmuls   f1, f7, f7
    fsubs   f4, f4, f5
    fsubs   f6, f6, f3
    fsubs   f4, f4, f2
    fmadds  f1, f6, f6, f1
    fmadds  f1, f4, f4, f1
    blt-    branch_0x8004c398
    fcmpo   cr0, f1, f8
    bge-    branch_0x8004c3a0
branch_0x8004c398:
    fmr     f8, f1
    mr      r31, r12
branch_0x8004c3a0:
    addi    r12, r12, 0x1
    addi    r6, r6, 0x10
    bdnz+      branch_0x8004c2f8
branch_0x8004c3ac:
    mr      r3, r31
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    blr


.globl getEscapeDirLimited__9TGraphWebCFiiRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fUl
getEscapeDirLimited__9TGraphWebCFiiRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fUl: # 0x8004c3bc
    mflr    r0
    stw     r0, 0x4(sp)
    addis   r0, r8, 0x1
    cmplwi  r0, 0xffff
    stwu    sp, -0x148(sp)
    stfd    f31, 0x140(sp)
    stfd    f30, 0x138(sp)
    stfd    f29, 0x130(sp)
    stfd    f28, 0x128(sp)
    fmr     f28, f1
    stfd    f27, 0x120(sp)
    stmw    r23, 0xfc(sp)
    addi    r24, r3, 0x0
    addi    r27, r4, 0x0
    addi    r25, r5, 0x0
    addi    r23, r6, 0x0
    addi    r26, r7, 0x0
    lwz     r9, 0x0(r3)
    slwi    r3, r4, 4
    add     r3, r9, r3
    bne-    branch_0x8004c418
    lwz     r29, 0x0(r3)
    b       branch_0x8004c434

branch_0x8004c418:
    lwz     r5, 0x0(r3)
    mr      r3, r24
    lwz     r6, 0x4(r24)
    addi    r4, r8, 0x0
    addi    r7, sp, 0x94
    bl      filterRailNode__9TGraphWebCFUlPC9TRailNodePC9TRailNodeP9TRailNode
    addi    r29, sp, 0x94
branch_0x8004c434:
    lha     r3, 0x6(r29)
    extsh.  r0, r3
    bne-    branch_0x8004c448
    mr      r3, r27
    b       branch_0x8004c810

branch_0x8004c448:
    cmpwi   r3, 0x1
    bne-    branch_0x8004c458
    lhz     r3, 0x14(r29)
    b       branch_0x8004c810

branch_0x8004c458:
    cmpwi   r3, 0x2
    bne-    branch_0x8004c480
    cmpwi   r25, 0x0
    blt-    branch_0x8004c480
    lhz     r3, 0x14(r29)
    cmpw    r3, r25
    beq-    branch_0x8004c478
    b       branch_0x8004c810

branch_0x8004c478:
    lhz     r3, 0x16(r29)
    b       branch_0x8004c810

branch_0x8004c480:
    lwz     r5, 0x0(r23)
    addi    r3, sp, 0x88
    lwz     r0, 0x4(r23)
    mr      r4, r3
    lwz     r6, -0x60b4(r13)
    stw     r5, 0x88(sp)
    stw     r0, 0x8c(sp)
    lwz     r0, 0x8(r23)
    stw     r0, 0x90(sp)
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x84(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f1, 0x7c(sp)
    addi    r3, sp, 0x7c
    lfs     f0, 0x0(r26)
    mr      r4, r3
    fsubs   f0, f1, f0
    stfs    f0, 0x7c(sp)
    lfs     f1, 0x80(sp)
    lfs     f0, 0x4(r26)
    fsubs   f0, f1, f0
    stfs    f0, 0x80(sp)
    lfs     f1, 0x84(sp)
    lfs     f0, 0x8(r26)
    fsubs   f0, f1, f0
    stfs    f0, 0x84(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfd     f30, -0x6f20(rtoc)
    li      r28, -0x1
    lfs     f31, -0x6ef8(rtoc)
    li      r27, 0x0
    li      r23, 0x0
    lis     r31, 0x4330
    b       branch_0x8004c6cc

branch_0x8004c518:
    addi    r30, r23, 0x14
    add     r30, r29, r30
    lhz     r0, 0x0(r30)
    cmpw    r25, r0
    beq-    branch_0x8004c6c4
    lwz     r4, 0x0(r24)
    slwi    r0, r0, 4
    addi    r3, sp, 0x70
    add     r6, r4, r0
    lwz     r5, 0x0(r6)
    mr      r4, r3
    lha     r0, 0x0(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0xf4(sp)
    stw     r31, 0xf0(sp)
    lfd     f0, 0xf0(sp)
    fsubs   f0, f0, f30
    stfs    f0, 0x70(sp)
    lwz     r5, 0x0(r6)
    lha     r0, 0x2(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0xec(sp)
    stw     r31, 0xe8(sp)
    lfd     f0, 0xe8(sp)
    fsubs   f0, f0, f30
    stfs    f0, 0x74(sp)
    lwz     r5, 0x0(r6)
    lha     r0, 0x4(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0xe4(sp)
    stw     r31, 0xe0(sp)
    lfd     f0, 0xe0(sp)
    fsubs   f0, f0, f30
    stfs    f0, 0x78(sp)
    lfs     f1, 0x70(sp)
    lfs     f0, 0x0(r26)
    fsubs   f0, f1, f0
    stfs    f0, 0x70(sp)
    lfs     f1, 0x74(sp)
    lfs     f0, 0x4(r26)
    fsubs   f0, f1, f0
    stfs    f0, 0x74(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0x8(r26)
    fsubs   f0, f1, f0
    stfs    f0, 0x78(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f5, 0x90(sp)
    addi    r3, sp, 0x4c
    lfs     f7, 0x74(sp)
    lfs     f4, 0x78(sp)
    lfs     f8, 0x88(sp)
    fmuls   f0, f5, f7
    lfs     f1, 0x8c(sp)
    lfs     f6, 0x70(sp)
    fmuls   f2, f8, f4
    fmsubs  f3, f1, f4, f0
    fmuls   f0, f1, f7
    fmuls   f1, f1, f6
    fmsubs  f2, f5, f6, f2
    stfs    f3, 0x4c(sp)
    fmadds  f0, f8, f6, f0
    fmsubs  f1, f8, f7, f1
    stfs    f2, 0x50(sp)
    fmadds  f27, f5, f4, f0
    stfs    f1, 0x54(sp)
    bl      MsVECMag2__FP3Vec
    fmr     f2, f1
    fmr     f1, f27
    bl      matan__Fff
    extsh   r0, r3
    xoris   r0, r0, 0x8000
    stw     r0, 0xdc(sp)
    stw     r31, 0xd8(sp)
    lfd     f0, 0xd8(sp)
    fsubs   f0, f0, f30
    fmuls   f0, f31, f0
    fabs    f0, f0
    fabs    f0, f0
    fcmpo   cr0, f0, f28
    bge-    branch_0x8004c6c4
    cmpwi   r28, 0x0
    bge-    branch_0x8004c690
    lfs     f1, 0x74(sp)
    lfs     f0, 0x80(sp)
    lfs     f2, 0x70(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0x7c(sp)
    lfs     f4, 0x78(sp)
    lfs     f3, 0x84(sp)
    fmadds  f0, f2, f1, f0
    lhz     r28, 0x0(r30)
    fmadds  f29, f4, f3, f0
    b       branch_0x8004c6c4

branch_0x8004c690:
    lfs     f1, 0x74(sp)
    lfs     f0, 0x80(sp)
    lfs     f2, 0x70(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0x7c(sp)
    lfs     f4, 0x78(sp)
    lfs     f3, 0x84(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f4, f3, f0
    fcmpo   cr0, f0, f29
    bge-    branch_0x8004c6c4
    lhz     r28, 0x0(r30)
    fmr     f29, f0
branch_0x8004c6c4:
    addi    r27, r27, 0x1
    addi    r23, r23, 0x2
branch_0x8004c6cc:
    lha     r0, 0x6(r29)
    cmpw    r27, r0
    blt+    branch_0x8004c518
    cmpwi   r28, 0x0
    blt-    branch_0x8004c6e8
    mr      r3, r28
    b       branch_0x8004c810

branch_0x8004c6e8:
    lfd     f31, -0x6f20(rtoc)
    li      r31, -0x1
    li      r27, 0x0
    li      r28, 0x0
    lis     r23, 0x4330
    b       branch_0x8004c800

branch_0x8004c700:
    addi    r30, r28, 0x14
    add     r30, r29, r30
    lhz     r0, 0x0(r30)
    cmpw    r25, r0
    beq-    branch_0x8004c7f8
    lwz     r4, 0x0(r24)
    slwi    r0, r0, 4
    addi    r3, sp, 0x60
    add     r6, r4, r0
    lwz     r5, 0x0(r6)
    mr      r4, r3
    lha     r0, 0x0(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0xdc(sp)
    stw     r23, 0xd8(sp)
    lfd     f0, 0xd8(sp)
    fsubs   f0, f0, f31
    stfs    f0, 0x60(sp)
    lwz     r5, 0x0(r6)
    lha     r0, 0x2(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0xe4(sp)
    stw     r23, 0xe0(sp)
    lfd     f0, 0xe0(sp)
    fsubs   f0, f0, f31
    stfs    f0, 0x64(sp)
    lwz     r5, 0x0(r6)
    lha     r0, 0x4(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0xec(sp)
    stw     r23, 0xe8(sp)
    lfd     f0, 0xe8(sp)
    fsubs   f0, f0, f31
    stfs    f0, 0x68(sp)
    lfs     f1, 0x60(sp)
    lfs     f0, 0x0(r26)
    fsubs   f0, f1, f0
    stfs    f0, 0x60(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x4(r26)
    fsubs   f0, f1, f0
    stfs    f0, 0x64(sp)
    lfs     f1, 0x68(sp)
    lfs     f0, 0x8(r26)
    fsubs   f0, f1, f0
    stfs    f0, 0x68(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f1, 0x64(sp)
    cmpwi   r31, 0x0
    lfs     f0, 0x80(sp)
    lfs     f2, 0x60(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0x7c(sp)
    lfs     f4, 0x68(sp)
    lfs     f3, 0x84(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f4, f3, f0
    blt-    branch_0x8004c7f0
    fcmpo   cr0, f0, f29
    bge-    branch_0x8004c7f8
branch_0x8004c7f0:
    fmr     f29, f0
    lhz     r31, 0x0(r30)
branch_0x8004c7f8:
    addi    r27, r27, 0x1
    addi    r28, r28, 0x2
branch_0x8004c800:
    lha     r0, 0x6(r29)
    cmpw    r27, r0
    blt+    branch_0x8004c700
    mr      r3, r31
branch_0x8004c810:
    lmw     r23, 0xfc(sp)
    lwz     r0, 0x14c(sp)
    lfd     f31, 0x140(sp)
    lfd     f30, 0x138(sp)
    mtlr    r0
    lfd     f29, 0x130(sp)
    lfd     f28, 0x128(sp)
    lfd     f27, 0x120(sp)
    addi    sp, sp, 0x148
    blr


.globl getRandomButDirLimited__9TGraphWebCFiiRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fUl
getRandomButDirLimited__9TGraphWebCFiiRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fUl: # 0x8004c838
    mflr    r0
    stw     r0, 0x4(sp)
    addis   r0, r8, 0x1
    cmplwi  r0, 0xffff
    stwu    sp, -0x138(sp)
    stfd    f31, 0x130(sp)
    stfd    f30, 0x128(sp)
    fmr     f30, f1
    stfd    f29, 0x120(sp)
    stfd    f28, 0x118(sp)
    stfd    f27, 0x110(sp)
    stfd    f26, 0x108(sp)
    stmw    r22, 0xe0(sp)
    addi    r24, r3, 0x0
    addi    r23, r4, 0x0
    addi    r25, r5, 0x0
    addi    r22, r6, 0x0
    addi    r26, r7, 0x0
    lwz     r9, 0x0(r3)
    slwi    r3, r4, 4
    add     r3, r9, r3
    bne-    branch_0x8004c898
    lwz     r29, 0x0(r3)
    b       branch_0x8004c8b4

branch_0x8004c898:
    lwz     r5, 0x0(r3)
    mr      r3, r24
    lwz     r6, 0x4(r24)
    addi    r4, r8, 0x0
    addi    r7, sp, 0x78
    bl      filterRailNode__9TGraphWebCFUlPC9TRailNodePC9TRailNodeP9TRailNode
    addi    r29, sp, 0x78
branch_0x8004c8b4:
    lha     r3, 0x6(r29)
    extsh.  r0, r3
    bne-    branch_0x8004c8c8
    mr      r3, r23
    b       branch_0x8004cc38

branch_0x8004c8c8:
    cmpwi   r3, 0x1
    bne-    branch_0x8004c8d8
    lhz     r3, 0x14(r29)
    b       branch_0x8004cc38

branch_0x8004c8d8:
    cmpwi   r3, 0x2
    bne-    branch_0x8004c900
    cmpwi   r25, 0x0
    blt-    branch_0x8004c900
    lhz     r3, 0x14(r29)
    cmpw    r3, r25
    beq-    branch_0x8004c8f8
    b       branch_0x8004cc38

branch_0x8004c8f8:
    lhz     r3, 0x16(r29)
    b       branch_0x8004cc38

branch_0x8004c900:
    lwz     r5, 0x0(r22)
    addi    r3, sp, 0x6c
    lwz     r0, 0x4(r22)
    mr      r4, r3
    stw     r5, 0x6c(sp)
    stw     r0, 0x70(sp)
    lwz     r0, 0x8(r22)
    stw     r0, 0x74(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfd     f28, -0x6f20(rtoc)
    li      r28, 0x0
    lfs     f29, -0x6f00(rtoc)
    li      r30, -0x1
    lfs     f31, -0x6f04(rtoc)
    lfs     f27, -0x6ef8(rtoc)
    li      r27, 0x0
    li      r23, 0x0
    lis     r22, 0x4330
    b       branch_0x8004caf0

branch_0x8004c94c:
    addi    r31, r23, 0x14
    add     r31, r29, r31
    lhz     r0, 0x0(r31)
    cmpw    r25, r0
    beq-    branch_0x8004cae8
    lwz     r4, 0x0(r24)
    slwi    r0, r0, 4
    addi    r3, sp, 0x60
    add     r6, r4, r0
    lwz     r5, 0x0(r6)
    mr      r4, r3
    lha     r0, 0x0(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0xdc(sp)
    stw     r22, 0xd8(sp)
    lfd     f0, 0xd8(sp)
    fsubs   f0, f0, f28
    stfs    f0, 0x60(sp)
    lwz     r5, 0x0(r6)
    lha     r0, 0x2(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0xd4(sp)
    stw     r22, 0xd0(sp)
    lfd     f0, 0xd0(sp)
    fsubs   f0, f0, f28
    stfs    f0, 0x64(sp)
    lwz     r5, 0x0(r6)
    lha     r0, 0x4(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0xcc(sp)
    stw     r22, 0xc8(sp)
    lfd     f0, 0xc8(sp)
    fsubs   f0, f0, f28
    stfs    f0, 0x68(sp)
    lfs     f1, 0x60(sp)
    lfs     f0, 0x0(r26)
    fsubs   f0, f1, f0
    stfs    f0, 0x60(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x4(r26)
    fsubs   f0, f1, f0
    stfs    f0, 0x64(sp)
    lfs     f1, 0x68(sp)
    lfs     f0, 0x8(r26)
    fsubs   f0, f1, f0
    stfs    f0, 0x68(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f5, 0x74(sp)
    addi    r3, sp, 0x44
    lfs     f7, 0x64(sp)
    lfs     f4, 0x68(sp)
    lfs     f8, 0x6c(sp)
    fmuls   f0, f5, f7
    lfs     f1, 0x70(sp)
    lfs     f6, 0x60(sp)
    fmuls   f2, f8, f4
    fmsubs  f3, f1, f4, f0
    fmuls   f0, f1, f7
    fmuls   f1, f1, f6
    fmsubs  f2, f5, f6, f2
    stfs    f3, 0x44(sp)
    fmadds  f0, f8, f6, f0
    fmsubs  f1, f8, f7, f1
    stfs    f2, 0x48(sp)
    fmadds  f26, f5, f4, f0
    stfs    f1, 0x4c(sp)
    bl      MsVECMag2__FP3Vec
    fmr     f2, f1
    fmr     f1, f26
    bl      matan__Fff
    extsh   r0, r3
    xoris   r0, r0, 0x8000
    stw     r0, 0xc4(sp)
    stw     r22, 0xc0(sp)
    lfd     f0, 0xc0(sp)
    fsubs   f0, f0, f28
    fmuls   f0, f27, f0
    fabs    f0, f0
    fabs    f0, f0
    fcmpo   cr0, f0, f30
    bge-    branch_0x8004cae8
    cmpwi   r28, 0x0
    bne-    branch_0x8004caa0
    lhz     r30, 0x0(r31)
    b       branch_0x8004cae4

branch_0x8004caa0:
    bl      rand
    addi    r0, r28, 0x1
    xoris   r0, r0, 0x8000
    stw     r0, 0xcc(sp)
    xoris   r0, r3, 0x8000
    stw     r22, 0xc8(sp)
    lfd     f0, 0xc8(sp)
    stw     r0, 0xc4(sp)
    fsubs   f0, f0, f28
    stw     r22, 0xc0(sp)
    fdivs   f0, f31, f0
    lfd     f1, 0xc0(sp)
    fsubs   f1, f1, f28
    fmuls   f1, f29, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8004cae4
    lhz     r30, 0x0(r31)
branch_0x8004cae4:
    addi    r28, r28, 0x1
branch_0x8004cae8:
    addi    r27, r27, 0x1
    addi    r23, r23, 0x2
branch_0x8004caf0:
    lha     r0, 0x6(r29)
    cmpw    r27, r0
    blt+    branch_0x8004c94c
    cmpwi   r28, 0x0
    ble-    branch_0x8004cb0c
    mr      r3, r30
    b       branch_0x8004cc38

branch_0x8004cb0c:
    lfs     f30, -0x6f28(rtoc)
    li      r30, -0x1
    lfd     f31, -0x6f20(rtoc)
    li      r27, 0x0
    li      r28, 0x0
    lis     r23, 0x4330
    b       branch_0x8004cc28

branch_0x8004cb28:
    addi    r31, r28, 0x14
    add     r31, r29, r31
    lhz     r0, 0x0(r31)
    cmpw    r25, r0
    beq-    branch_0x8004cc20
    lwz     r4, 0x0(r24)
    slwi    r0, r0, 4
    addi    r3, sp, 0x54
    add     r6, r4, r0
    lwz     r5, 0x0(r6)
    mr      r4, r3
    lha     r0, 0x0(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0xc4(sp)
    stw     r23, 0xc0(sp)
    lfd     f0, 0xc0(sp)
    fsubs   f0, f0, f31
    stfs    f0, 0x54(sp)
    lwz     r5, 0x0(r6)
    lha     r0, 0x2(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0xcc(sp)
    stw     r23, 0xc8(sp)
    lfd     f0, 0xc8(sp)
    fsubs   f0, f0, f31
    stfs    f0, 0x58(sp)
    lwz     r5, 0x0(r6)
    lha     r0, 0x4(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0xd4(sp)
    stw     r23, 0xd0(sp)
    lfd     f0, 0xd0(sp)
    fsubs   f0, f0, f31
    stfs    f0, 0x5c(sp)
    lfs     f1, 0x54(sp)
    lfs     f0, 0x0(r26)
    fsubs   f0, f1, f0
    stfs    f0, 0x54(sp)
    lfs     f1, 0x58(sp)
    lfs     f0, 0x4(r26)
    fsubs   f0, f1, f0
    stfs    f0, 0x58(sp)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x8(r26)
    fsubs   f0, f1, f0
    stfs    f0, 0x5c(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f1, 0x58(sp)
    cmpwi   r30, 0x0
    lfs     f0, 0x70(sp)
    lfs     f2, 0x54(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0x6c(sp)
    lfs     f4, 0x5c(sp)
    lfs     f3, 0x74(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f4, f3, f0
    blt-    branch_0x8004cc18
    fcmpo   cr0, f0, f30
    ble-    branch_0x8004cc20
branch_0x8004cc18:
    fmr     f30, f0
    lhz     r30, 0x0(r31)
branch_0x8004cc20:
    addi    r27, r27, 0x1
    addi    r28, r28, 0x2
branch_0x8004cc28:
    lha     r0, 0x6(r29)
    cmpw    r27, r0
    blt+    branch_0x8004cb28
    mr      r3, r30
branch_0x8004cc38:
    lmw     r22, 0xe0(sp)
    lwz     r0, 0x13c(sp)
    lfd     f31, 0x130(sp)
    lfd     f30, 0x128(sp)
    mtlr    r0
    lfd     f29, 0x120(sp)
    lfd     f28, 0x118(sp)
    lfd     f27, 0x110(sp)
    lfd     f26, 0x108(sp)
    addi    sp, sp, 0x138
    blr


.globl getAimToDirNextIndex__9TGraphWebCFiiRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_Ul
getAimToDirNextIndex__9TGraphWebCFiiRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_Ul: # 0x8004cc64
    mflr    r0
    stw     r0, 0x4(sp)
    addis   r0, r8, 0x1
    cmplwi  r0, 0xffff
    stwu    sp, -0xd8(sp)
    stfd    f31, 0xd0(sp)
    stfd    f30, 0xc8(sp)
    stmw    r23, 0xa4(sp)
    addi    r25, r3, 0x0
    addi    r24, r4, 0x0
    addi    r26, r5, 0x0
    addi    r23, r6, 0x0
    addi    r27, r7, 0x0
    lwz     r9, 0x0(r3)
    slwi    r3, r4, 4
    add     r3, r9, r3
    bne-    branch_0x8004ccb0
    lwz     r30, 0x0(r3)
    b       branch_0x8004cccc

branch_0x8004ccb0:
    lwz     r5, 0x0(r3)
    mr      r3, r25
    lwz     r6, 0x4(r25)
    addi    r4, r8, 0x0
    addi    r7, sp, 0x40
    bl      filterRailNode__9TGraphWebCFUlPC9TRailNodePC9TRailNodeP9TRailNode
    addi    r30, sp, 0x40
branch_0x8004cccc:
    lha     r3, 0x6(r30)
    extsh.  r0, r3
    bne-    branch_0x8004cce0
    mr      r3, r24
    b       branch_0x8004ce68

branch_0x8004cce0:
    cmpwi   r3, 0x1
    bne-    branch_0x8004ccf0
    lhz     r3, 0x14(r30)
    b       branch_0x8004ce68

branch_0x8004ccf0:
    cmpwi   r3, 0x2
    bne-    branch_0x8004cd18
    cmpwi   r26, 0x0
    blt-    branch_0x8004cd18
    lhz     r3, 0x14(r30)
    cmpw    r3, r26
    beq-    branch_0x8004cd10
    b       branch_0x8004ce68

branch_0x8004cd10:
    lhz     r3, 0x16(r30)
    b       branch_0x8004ce68

branch_0x8004cd18:
    lwz     r5, 0x0(r23)
    addi    r3, sp, 0x34
    lwz     r0, 0x4(r23)
    mr      r4, r3
    stw     r5, 0x34(sp)
    stw     r0, 0x38(sp)
    lwz     r0, 0x8(r23)
    stw     r0, 0x3c(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f30, -0x6f28(rtoc)
    li      r29, -0x1
    lfd     f31, -0x6f20(rtoc)
    li      r28, 0x0
    li      r24, 0x0
    lis     r23, 0x4330
    b       branch_0x8004ce58

branch_0x8004cd58:
    addi    r31, r24, 0x14
    add     r31, r30, r31
    lhz     r0, 0x0(r31)
    cmpw    r26, r0
    beq-    branch_0x8004ce50
    lwz     r4, 0x0(r25)
    slwi    r0, r0, 4
    addi    r3, sp, 0x28
    add     r6, r4, r0
    lwz     r5, 0x0(r6)
    mr      r4, r3
    lha     r0, 0x0(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0x9c(sp)
    stw     r23, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f0, f0, f31
    stfs    f0, 0x28(sp)
    lwz     r5, 0x0(r6)
    lha     r0, 0x2(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0x94(sp)
    stw     r23, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f0, f0, f31
    stfs    f0, 0x2c(sp)
    lwz     r5, 0x0(r6)
    lha     r0, 0x4(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0x8c(sp)
    stw     r23, 0x88(sp)
    lfd     f0, 0x88(sp)
    fsubs   f0, f0, f31
    stfs    f0, 0x30(sp)
    lfs     f1, 0x28(sp)
    lfs     f0, 0x0(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x28(sp)
    lfs     f1, 0x2c(sp)
    lfs     f0, 0x4(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x2c(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x8(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x30(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f1, 0x2c(sp)
    cmpwi   r29, 0x0
    lfs     f0, 0x38(sp)
    lfs     f2, 0x28(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0x34(sp)
    lfs     f4, 0x30(sp)
    lfs     f3, 0x3c(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f4, f3, f0
    blt-    branch_0x8004ce48
    fcmpo   cr0, f0, f30
    ble-    branch_0x8004ce50
branch_0x8004ce48:
    fmr     f30, f0
    lhz     r29, 0x0(r31)
branch_0x8004ce50:
    addi    r28, r28, 0x1
    addi    r24, r24, 0x2
branch_0x8004ce58:
    lha     r0, 0x6(r30)
    cmpw    r28, r0
    blt+    branch_0x8004cd58
    mr      r3, r29
branch_0x8004ce68:
    lmw     r23, 0xa4(sp)
    lwz     r0, 0xdc(sp)
    lfd     f31, 0xd0(sp)
    lfd     f30, 0xc8(sp)
    mtlr    r0
    addi    sp, sp, 0xd8
    blr


.globl getEscapeFromMarioIndex__9TGraphWebCFiiRCQ29JGeometry8TVec3_f_Ul
getEscapeFromMarioIndex__9TGraphWebCFiiRCQ29JGeometry8TVec3_f_Ul: # 0x8004ce84
    mflr    r0
    stw     r0, 0x4(sp)
    addis   r0, r7, 0x1
    cmplwi  r0, 0xffff
    stwu    sp, -0xe0(sp)
    stfd    f31, 0xd8(sp)
    stfd    f30, 0xd0(sp)
    stmw    r23, 0xac(sp)
    addi    r25, r3, 0x0
    addi    r23, r4, 0x0
    addi    r26, r5, 0x0
    addi    r27, r6, 0x0
    lwz     r8, 0x0(r3)
    slwi    r3, r4, 4
    add     r3, r8, r3
    bne-    branch_0x8004cecc
    lwz     r30, 0x0(r3)
    b       branch_0x8004cee8

branch_0x8004cecc:
    lwz     r5, 0x0(r3)
    addi    r4, r7, 0x0
    lwz     r6, 0x4(r25)
    mr      r3, r25
    addi    r7, sp, 0x4c
    bl      filterRailNode__9TGraphWebCFUlPC9TRailNodePC9TRailNodeP9TRailNode
    addi    r30, sp, 0x4c
branch_0x8004cee8:
    lha     r3, 0x6(r30)
    extsh.  r0, r3
    bne-    branch_0x8004cefc
    mr      r3, r23
    b       branch_0x8004d0b8

branch_0x8004cefc:
    cmpwi   r3, 0x1
    bne-    branch_0x8004cf0c
    lhz     r3, 0x14(r30)
    b       branch_0x8004d0b8

branch_0x8004cf0c:
    cmpwi   r3, 0x2
    bne-    branch_0x8004cf34
    cmpwi   r26, 0x0
    blt-    branch_0x8004cf34
    lhz     r3, 0x14(r30)
    cmpw    r3, r26
    beq-    branch_0x8004cf2c
    b       branch_0x8004d0b8

branch_0x8004cf2c:
    lhz     r3, 0x16(r30)
    b       branch_0x8004d0b8

branch_0x8004cf34:
    lwz     r5, -0x60b4(r13)
    addi    r3, sp, 0x40
    addi    r4, r3, 0x0
    lfs     f2, 0x8(r5)
    lfs     f1, 0x4(r5)
    lfs     f0, 0x0(r5)
    stfs    f0, 0x40(sp)
    stfs    f1, 0x44(sp)
    stfs    f2, 0x48(sp)
    lfs     f1, 0x40(sp)
    lfs     f0, 0x0(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x4(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x8(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x48(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f30, -0x6f28(rtoc)
    li      r29, -0x1
    lfd     f31, -0x6f20(rtoc)
    li      r28, 0x0
    li      r24, 0x0
    lis     r23, 0x4330
    b       branch_0x8004d0a8

branch_0x8004cfa8:
    addi    r31, r24, 0x14
    add     r31, r30, r31
    lhz     r0, 0x0(r31)
    cmpw    r26, r0
    beq-    branch_0x8004d0a0
    lwz     r4, 0x0(r25)
    slwi    r0, r0, 4
    addi    r3, sp, 0x34
    add     r6, r4, r0
    lwz     r5, 0x0(r6)
    mr      r4, r3
    lha     r0, 0x0(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0xa4(sp)
    stw     r23, 0xa0(sp)
    lfd     f0, 0xa0(sp)
    fsubs   f0, f0, f31
    stfs    f0, 0x34(sp)
    lwz     r5, 0x0(r6)
    lha     r0, 0x2(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0x9c(sp)
    stw     r23, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f0, f0, f31
    stfs    f0, 0x38(sp)
    lwz     r5, 0x0(r6)
    lha     r0, 0x4(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0x94(sp)
    stw     r23, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f0, f0, f31
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x0(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x4(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x8(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x3c(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f1, 0x38(sp)
    cmpwi   r29, 0x0
    lfs     f0, 0x44(sp)
    lfs     f2, 0x34(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0x40(sp)
    lfs     f4, 0x3c(sp)
    lfs     f3, 0x48(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f4, f3, f0
    blt-    branch_0x8004d098
    fcmpo   cr0, f0, f30
    bge-    branch_0x8004d0a0
branch_0x8004d098:
    fmr     f30, f0
    lhz     r29, 0x0(r31)
branch_0x8004d0a0:
    addi    r28, r28, 0x1
    addi    r24, r24, 0x2
branch_0x8004d0a8:
    lha     r0, 0x6(r30)
    cmpw    r28, r0
    blt+    branch_0x8004cfa8
    mr      r3, r29
branch_0x8004d0b8:
    lmw     r23, 0xac(sp)
    lwz     r0, 0xe4(sp)
    lfd     f31, 0xd8(sp)
    lfd     f30, 0xd0(sp)
    mtlr    r0
    addi    sp, sp, 0xe0
    blr


.globl getRandomNextIndex__9TGraphWebCFiiUl
getRandomNextIndex__9TGraphWebCFiiUl: # 0x8004d0d4
    mflr    r0
    addi    r7, r6, 0x0
    stw     r0, 0x4(sp)
    addis   r0, r7, 0x1
    cmplwi  r0, 0xffff
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x88(sp)
    stw     r29, 0x84(sp)
    stw     r28, 0x80(sp)
    addi    r28, r4, 0x0
    slwi    r4, r4, 4
    lwz     r6, 0x0(r3)
    add     r4, r6, r4
    bne-    branch_0x8004d11c
    lwz     r29, 0x0(r4)
    b       branch_0x8004d134

branch_0x8004d11c:
    lwz     r5, 0x0(r4)
    addi    r4, r7, 0x0
    lwz     r6, 0x4(r3)
    addi    r7, sp, 0x24
    bl      filterRailNode__9TGraphWebCFUlPC9TRailNodePC9TRailNodeP9TRailNode
    addi    r29, sp, 0x24
branch_0x8004d134:
    lha     r30, 0x6(r29)
    extsh.  r0, r30
    bne-    branch_0x8004d148
    mr      r3, r28
    b       branch_0x8004d20c

branch_0x8004d148:
    cmpwi   r30, 0x1
    bne-    branch_0x8004d158
    lhz     r3, 0x14(r29)
    b       branch_0x8004d20c

branch_0x8004d158:
    cmpwi   r30, 0x2
    bne-    branch_0x8004d180
    cmpwi   r31, 0x0
    blt-    branch_0x8004d180
    lhz     r3, 0x14(r29)
    cmpw    r3, r31
    beq-    branch_0x8004d178
    b       branch_0x8004d20c

branch_0x8004d178:
    lhz     r3, 0x16(r29)
    b       branch_0x8004d20c

branch_0x8004d180:
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6f20(rtoc)
    stw     r0, 0x7c(sp)
    lis     r3, 0x4330
    xoris   r0, r30, 0x8000
    lfs     f1, -0x6f00(rtoc)
    stw     r3, 0x78(sp)
    stw     r0, 0x74(sp)
    lfd     f0, 0x78(sp)
    stw     r3, 0x70(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x70(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r4, 0x6c(sp)
    slwi    r0, r4, 1
    add     r3, r29, r0
    lhz     r0, 0x14(r3)
    addi    r3, r4, 0x0
    cmpw    r0, r31
    bne-    branch_0x8004d200
    lha     r3, 0x6(r29)
    subi    r0, r3, 0x1
    cmpw    r4, r0
    bne-    branch_0x8004d1fc
    li      r3, 0x0
    b       branch_0x8004d200

branch_0x8004d1fc:
    mr      r3, r0
branch_0x8004d200:
    slwi    r0, r3, 1
    add     r3, r29, r0
    lhz     r3, 0x14(r3)
branch_0x8004d20c:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    lwz     r29, 0x84(sp)
    lwz     r28, 0x80(sp)
    addi    sp, sp, 0x90
    blr


.globl getShortestNextIndex__9TGraphWebCFiiUl
getShortestNextIndex__9TGraphWebCFiiUl: # 0x8004d22c
    mflr    r0
    addi    r7, r6, 0x0
    stw     r0, 0x4(sp)
    addis   r0, r7, 0x1
    cmplwi  r0, 0xffff
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    addi    r31, r5, 0x0
    stw     r30, 0xa0(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x9c(sp)
    stw     r28, 0x98(sp)
    addi    r28, r4, 0x0
    lwz     r6, 0x0(r3)
    slwi    r3, r4, 4
    add     r29, r6, r3
    bne-    branch_0x8004d278
    lwz     r4, 0x0(r29)
    b       branch_0x8004d294

branch_0x8004d278:
    lwz     r5, 0x0(r29)
    addi    r4, r7, 0x0
    lwz     r6, 0x4(r30)
    mr      r3, r30
    addi    r7, sp, 0x3c
    bl      filterRailNode__9TGraphWebCFUlPC9TRailNodePC9TRailNodeP9TRailNode
    addi    r4, sp, 0x3c
branch_0x8004d294:
    lha     r6, 0x6(r4)
    extsh.  r0, r6
    bne-    branch_0x8004d2a8
    mr      r3, r28
    b       branch_0x8004d3e8

branch_0x8004d2a8:
    cmpwi   r6, 0x1
    bne-    branch_0x8004d2b8
    lhz     r3, 0x14(r4)
    b       branch_0x8004d3e8

branch_0x8004d2b8:
    cmpwi   r6, 0x2
    bne-    branch_0x8004d2e0
    cmpwi   r31, 0x0
    blt-    branch_0x8004d2e0
    lhz     r3, 0x14(r4)
    cmpw    r3, r31
    beq-    branch_0x8004d2d8
    b       branch_0x8004d3e8

branch_0x8004d2d8:
    lhz     r3, 0x16(r4)
    b       branch_0x8004d3e8

branch_0x8004d2e0:
    lwz     r7, 0x0(r29)
    lis     r8, 0x4330
    lfd     f2, -0x6f20(rtoc)
    cmpwi   r6, 0x0
    lha     r5, 0x0(r7)
    lha     r3, 0x2(r7)
    mtctr   r6
    lha     r0, 0x4(r7)
    xoris   r6, r5, 0x8000
    xoris   r5, r3, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x94(sp)
    lfs     f8, -0x6f28(rtoc)
    li      r3, -0x1
    stw     r5, 0x8c(sp)
    li      r5, 0x0
    stw     r0, 0x84(sp)
    stw     r8, 0x90(sp)
    stw     r8, 0x88(sp)
    lfd     f0, 0x90(sp)
    stw     r8, 0x80(sp)
    lfd     f1, 0x88(sp)
    fsubs   f3, f0, f2
    lfd     f0, 0x80(sp)
    fsubs   f4, f1, f2
    fsubs   f5, f0, f2
    ble-    branch_0x8004d3e8
branch_0x8004d34c:
    addi    r0, r5, 0x14
    lhzx    r10, r4, r0
    cmpw    r31, r10
    beq-    branch_0x8004d3e0
    lwz     r6, 0x0(r30)
    slwi    r0, r10, 4
    cmpwi   r3, 0x0
    lwzx    r9, r6, r0
    lha     r0, 0x2(r9)
    lha     r7, 0x0(r9)
    xoris   r6, r0, 0x8000
    lha     r0, 0x4(r9)
    stw     r6, 0x8c(sp)
    xoris   r6, r7, 0x8000
    xoris   r0, r0, 0x8000
    stw     r8, 0x88(sp)
    stw     r6, 0x84(sp)
    lfd     f0, 0x88(sp)
    stw     r8, 0x80(sp)
    fsubs   f7, f0, f2
    stw     r0, 0x94(sp)
    lfd     f0, 0x80(sp)
    stw     r8, 0x90(sp)
    fsubs   f7, f7, f4
    fsubs   f6, f0, f2
    lfd     f1, 0x90(sp)
    fmuls   f0, f7, f7
    fsubs   f1, f1, f2
    fsubs   f6, f6, f3
    fsubs   f1, f1, f5
    fmadds  f0, f6, f6, f0
    fmadds  f0, f1, f1, f0
    blt-    branch_0x8004d3d8
    fcmpo   cr0, f8, f0
    ble-    branch_0x8004d3e0
branch_0x8004d3d8:
    fmr     f8, f0
    mr      r3, r10
branch_0x8004d3e0:
    addi    r5, r5, 0x2
    bdnz+      branch_0x8004d34c
branch_0x8004d3e8:
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    mtlr    r0
    lwz     r29, 0x9c(sp)
    lwz     r28, 0x98(sp)
    addi    sp, sp, 0xa8
    blr


.globl translateNodes__9TGraphWebFP9TRailNode
translateNodes__9TGraphWebFP9TRailNode: # 0x8004d408
    stwu    sp, -0xb0(sp)
    li      r7, 0x0
    li      r8, 0x0
    stmw    r27, 0x9c(sp)
    addi    r30, sp, 0x10
    addi    r5, sp, 0x54
    b       branch_0x8004d5e4

branch_0x8004d424:
    add     r6, r4, r8
    lwz     r0, 0x8(r6)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x8004d508
    li      r0, 0x8
    mtctr   r0
    addi    r11, sp, 0x4c
    subi    r10, r6, 0x8
branch_0x8004d444:
    lwzu    r9, 0x8(r10)
    lwz     r0, 0x4(r10)
    stwu    r9, 0x8(r11)
    stw     r0, 0x4(r11)
    bdnz+      branch_0x8004d444
    lwz     r0, 0x8(r10)
    li      r28, 0x0
    li      r9, 0x0
    stw     r0, 0x8(r11)
    li      r10, 0x0
    li      r27, 0x0
    li      r11, 0x0
    li      r12, 0x0
    b       branch_0x8004d4c8

branch_0x8004d47c:
    addi    r0, r12, 0x14
    lhzx    r29, r6, r0
    mulli   r31, r29, 0x44
    addi    r0, r31, 0x8
    lwzx    r0, r4, r0
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x8004d4bc
    addi    r0, r10, 0x14
    sthx    r29, r5, r0
    addi    r31, r11, 0x24
    addi    r0, r9, 0x24
    lfsx    f0, r6, r31
    addi    r10, r10, 0x2
    addi    r28, r28, 0x1
    stfsx   f0, r5, r0
    addi    r9, r9, 0x4
branch_0x8004d4bc:
    addi    r27, r27, 0x1
    addi    r11, r11, 0x4
    addi    r12, r12, 0x2
branch_0x8004d4c8:
    lha     r0, 0x6(r6)
    cmpw    r27, r0
    blt+    branch_0x8004d47c
    extsh   r9, r28
    li      r0, 0x8
    sth     r9, 0x5a(sp)
    mtctr   r0
    subi    r11, r6, 0x8
    addi    r10, sp, 0x4c
branch_0x8004d4ec:
    lwzu    r9, 0x8(r10)
    lwz     r0, 0x4(r10)
    stwu    r9, 0x8(r11)
    stw     r0, 0x4(r11)
    bdnz+      branch_0x8004d4ec
    lwz     r0, 0x8(r10)
    stw     r0, 0x8(r11)
branch_0x8004d508:
    lwz     r0, 0x8(r6)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x8004d5dc
    li      r0, 0x8
    mtctr   r0
    addi    r11, sp, 0x8
    subi    r10, r6, 0x8
branch_0x8004d524:
    lwzu    r9, 0x8(r10)
    lwz     r0, 0x4(r10)
    stwu    r9, 0x8(r11)
    stw     r0, 0x4(r11)
    bdnz+      branch_0x8004d524
    lwz     r0, 0x8(r10)
    li      r27, 0x0
    li      r9, 0x0
    stw     r0, 0x8(r11)
    li      r10, 0x0
    li      r28, 0x0
    li      r11, 0x0
    li      r12, 0x0
    b       branch_0x8004d59c

branch_0x8004d55c:
    addi    r0, r12, 0x14
    lhzx    r29, r6, r0
    cmpw    r29, r7
    blt-    branch_0x8004d590
    addi    r0, r10, 0x14
    sthx    r29, r30, r0
    addi    r31, r11, 0x24
    addi    r0, r9, 0x24
    lfsx    f0, r6, r31
    addi    r10, r10, 0x2
    addi    r27, r27, 0x1
    stfsx   f0, r30, r0
    addi    r9, r9, 0x4
branch_0x8004d590:
    addi    r28, r28, 0x1
    addi    r11, r11, 0x4
    addi    r12, r12, 0x2
branch_0x8004d59c:
    lha     r0, 0x6(r6)
    cmpw    r28, r0
    blt+    branch_0x8004d55c
    extsh   r9, r27
    li      r0, 0x8
    sth     r9, 0x16(sp)
    mtctr   r0
    subi    r10, r6, 0x8
    addi    r9, sp, 0x8
branch_0x8004d5c0:
    lwzu    r6, 0x8(r9)
    lwz     r0, 0x4(r9)
    stwu    r6, 0x8(r10)
    stw     r0, 0x4(r10)
    bdnz+      branch_0x8004d5c0
    lwz     r0, 0x8(r9)
    stw     r0, 0x8(r10)
branch_0x8004d5dc:
    addi    r7, r7, 0x1
    addi    r8, r8, 0x44
branch_0x8004d5e4:
    lwz     r0, 0x8(r3)
    cmpw    r7, r0
    blt+    branch_0x8004d424
    lmw     r27, 0x9c(sp)
    addi    sp, sp, 0xb0
    blr


.globl filterRailNode__9TGraphWebCFUlPC9TRailNodePC9TRailNodeP9TRailNode
filterRailNode__9TGraphWebCFUlPC9TRailNodePC9TRailNodeP9TRailNode: # 0x8004d5fc
    stwu    sp, -0x70(sp)
    addis   r0, r4, 0x1
    cmplwi  r0, 0xffff
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    bne-    branch_0x8004d654
    cmplw   r7, r5
    beq-    branch_0x8004d64c
    li      r0, 0x8
    mtctr   r0
    subi    r6, r7, 0x8
    subi    r4, r5, 0x8
branch_0x8004d630:
    lwzu    r3, 0x8(r4)
    lwz     r0, 0x4(r4)
    stwu    r3, 0x8(r6)
    stw     r0, 0x4(r6)
    bdnz+      branch_0x8004d630
    lwz     r0, 0x8(r4)
    stw     r0, 0x8(r6)
branch_0x8004d64c:
    lha     r3, 0x6(r5)
    b       branch_0x8004d734

branch_0x8004d654:
    li      r0, 0x8
    mtctr   r0
    addi    r9, sp, 0x14
    subi    r8, r5, 0x8
branch_0x8004d664:
    lwzu    r3, 0x8(r8)
    lwz     r0, 0x4(r8)
    stwu    r3, 0x8(r9)
    stw     r0, 0x4(r9)
    bdnz+      branch_0x8004d664
    lwz     r0, 0x8(r8)
    addi    r31, sp, 0x1c
    li      r3, 0x0
    stw     r0, 0x8(r9)
    li      r8, 0x0
    li      r9, 0x0
    li      r29, 0x0
    li      r10, 0x0
    li      r11, 0x0
    b       branch_0x8004d6f4

branch_0x8004d6a0:
    addi    r0, r11, 0x14
    lhzx    r30, r5, r0
    mulli   r0, r30, 0x44
    add     r12, r6, r0
    lwz     r0, 0x8(r12)
    cmplwi  r0, 0x0
    beq-    branch_0x8004d6c4
    and.    r0, r0, r4
    beq-    branch_0x8004d6e8
branch_0x8004d6c4:
    addi    r0, r9, 0x14
    sthx    r30, r31, r0
    addi    r12, r10, 0x24
    addi    r0, r8, 0x24
    lfsx    f0, r5, r12
    addi    r9, r9, 0x2
    addi    r3, r3, 0x1
    stfsx   f0, r31, r0
    addi    r8, r8, 0x4
branch_0x8004d6e8:
    addi    r29, r29, 0x1
    addi    r10, r10, 0x4
    addi    r11, r11, 0x2
branch_0x8004d6f4:
    lha     r0, 0x6(r5)
    cmpw    r29, r0
    blt+    branch_0x8004d6a0
    extsh   r4, r3
    li      r0, 0x8
    sth     r4, 0x22(sp)
    mtctr   r0
    subi    r6, r7, 0x8
    addi    r5, sp, 0x14
branch_0x8004d718:
    lwzu    r4, 0x8(r5)
    lwz     r0, 0x4(r5)
    stwu    r4, 0x8(r6)
    stw     r0, 0x4(r6)
    bdnz+      branch_0x8004d718
    lwz     r0, 0x8(r5)
    stw     r0, 0x8(r6)
branch_0x8004d734:
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl __dt__9TGraphWebFv
__dt__9TGraphWebFv: # 0x8004d748
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8004d77c
    lis     r3, 0x803b
    subi    r3, r3, 0x3ec
    extsh.  r0, r4
    stw     r3, 0x18(r31)
    ble-    branch_0x8004d77c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8004d77c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__9TGraphWebFP9TRailNodePCci
__ct__9TGraphWebFP9TRailNodePCci: # 0x8004d794
    mflr    r0
    lis     r7, 0x803b
    stw     r0, 0x4(sp)
    subi    r7, r7, 0x4f0
    addi    r0, r7, 0x104
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x30(sp)
    mr.     r30, r4
    stw     r29, 0x2c(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x28(sp)
    stw     r0, 0x18(r3)
    li      r3, 0x0
    li      r0, -0x1
    stw     r3, 0x0(r29)
    stw     r30, 0x4(r29)
    stw     r3, 0x8(r29)
    stw     r31, 0xc(r29)
    stw     r0, 0x10(r29)
    stw     r3, 0x14(r29)
    bne-    branch_0x8004d7f8
    addi    r30, r7, 0x38
    stw     r30, 0x4(r29)
branch_0x8004d7f8:
    cmpwi   r6, 0x0
    bgt-    branch_0x8004d82c
    li      r4, 0x0
    li      r3, 0x0
    b       branch_0x8004d814

branch_0x8004d80c:
    addi    r4, r4, 0x1
    addi    r3, r3, 0x44
branch_0x8004d814:
    addi    r0, r3, 0x6
    lhax    r0, r30, r0
    cmpwi   r0, 0x0
    bgt+    branch_0x8004d80c
    stw     r4, 0x8(r29)
    b       branch_0x8004d830

branch_0x8004d82c:
    stw     r6, 0x8(r29)
branch_0x8004d830:
    lwz     r28, 0x8(r29)
    slwi    r3, r28, 4
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x8005
    subi    r4, r4, 0x1dd4
    addi    r7, r28, 0x0
    li      r5, 0x0
    li      r6, 0x10
    bl      __construct_new_array
    stw     r3, 0x0(r29)
    li      r6, 0x0
    li      r3, 0x0
    li      r4, 0x0
    b       branch_0x8004d884

branch_0x8004d86c:
    lwz     r5, 0x0(r29)
    add     r0, r30, r4
    addi    r4, r4, 0x44
    stwx    r0, r5, r3
    addi    r3, r3, 0x10
    addi    r6, r6, 0x1
branch_0x8004d884:
    lwz     r0, 0x8(r29)
    cmpw    r6, r0
    blt+    branch_0x8004d86c
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      translateNodes__9TGraphWebFP9TRailNode
    lbz     r0, 0x0(r31)
    cmpwi   r0, 0x53
    bne-    branch_0x8004d8d4
    lbz     r0, 0x1(r31)
    cmpwi   r0, 0x5f
    bne-    branch_0x8004d8d4
    li      r3, 0x8
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x8004d8d0
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    bl      __ct__11TSplineRailFPC9TGraphWeb
branch_0x8004d8d0:
    stw     r28, 0x14(r29)
branch_0x8004d8d4:
    lwz     r0, 0x3c(sp)
    mr      r3, r29
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl getPosAndRot__11TSplineRailFfPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
getPosAndRot__11TSplineRailFfPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_: # 0x8004d8f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf8(sp)
    stfd    f31, 0xf0(sp)
    stfd    f30, 0xe8(sp)
    fmr     f30, f1
    stfd    f29, 0xe0(sp)
    stfd    f28, 0xd8(sp)
    stfd    f27, 0xd0(sp)
    stw     r31, 0xcc(sp)
    addi    r31, r5, 0x0
    stw     r30, 0xc8(sp)
    addi    r30, r4, 0x0
    stw     r29, 0xc4(sp)
    mr      r29, r3
    lwz     r0, 0x4(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x8004d960
    lwz     r4, 0x0(r29)
    lwz     r3, 0x0(r4)
    lwz     r4, 0x1c(r4)
    subi    r0, r3, 0x2
    slwi    r0, r0, 2
    lfs     f2, 0x4(r4)
    lfsx    f3, r4, r0
    bl      MsWrap_f___Ffff_8004b22c
branch_0x8004d960:
    fmr     f30, f1
    lfs     f31, -0x6f14(rtoc)
    lfs     f27, -0x6ef4(rtoc)
    lfs     f28, -0x6ef0(rtoc)
    lfs     f29, -0x6f04(rtoc)
branch_0x8004d974:
    fadds   f0, f30, f31
    fcmpo   cr0, f0, f29
    ble-    branch_0x8004d984
    fsubs   f30, f29, f31
branch_0x8004d984:
    lwz     r0, 0x4(r29)
    fmr     f1, f30
    cmpwi   r0, 0x0
    beq-    branch_0x8004d9b4
    lwz     r4, 0x0(r29)
    lwz     r3, 0x0(r4)
    lwz     r4, 0x1c(r4)
    subi    r0, r3, 0x2
    slwi    r0, r0, 2
    lfs     f2, 0x4(r4)
    lfsx    f3, r4, r0
    bl      MsWrap_f___Ffff_8004b22c
branch_0x8004d9b4:
    lwz     r4, 0x0(r29)
    addi    r3, sp, 0x98
    bl      getPoint__11TSplinePathFf
    lwz     r0, 0x98(sp)
    fadds   f1, f30, f31
    lwz     r3, 0x9c(sp)
    stw     r0, 0xb0(sp)
    lwz     r0, 0xa0(sp)
    stw     r3, 0xb4(sp)
    stw     r0, 0xb8(sp)
    lwz     r0, 0x4(r29)
    cmpwi   r0, 0x0
    beq-    branch_0x8004da08
    lwz     r4, 0x0(r29)
    lwz     r3, 0x0(r4)
    lwz     r4, 0x1c(r4)
    subi    r0, r3, 0x2
    slwi    r0, r0, 2
    lfs     f2, 0x4(r4)
    lfsx    f3, r4, r0
    bl      MsWrap_f___Ffff_8004b22c
branch_0x8004da08:
    lwz     r4, 0x0(r29)
    addi    r3, sp, 0x8c
    bl      getPoint__11TSplinePathFf
    lwz     r0, 0x8c(sp)
    lwz     r3, 0x90(sp)
    stw     r0, 0xa4(sp)
    lwz     r0, 0x94(sp)
    stw     r3, 0xa8(sp)
    lfs     f1, 0xb0(sp)
    stw     r0, 0xac(sp)
    lfs     f0, 0xb4(sp)
    lfs     f2, 0xa4(sp)
    fsubs   f1, f2, f1
    stfs    f1, 0xa4(sp)
    lfs     f1, 0xa8(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xa8(sp)
    lfs     f1, 0xac(sp)
    lfs     f0, 0xb8(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xac(sp)
    lfs     f1, 0xa4(sp)
    lfs     f0, 0xa8(sp)
    lfs     f2, 0xac(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f27
    cror    2, 0, 2
    bne-    branch_0x8004dac0
    fmuls   f31, f31, f28
    fcmpo   cr0, f31, f29
    ble+    branch_0x8004d974
    lwz     r3, 0xb0(sp)
    lwz     r0, 0xb4(sp)
    stw     r3, 0x0(r30)
    stw     r0, 0x4(r30)
    lwz     r0, 0xb8(sp)
    stw     r0, 0x8(r30)
    lfs     f0, -0x6f28(rtoc)
    stfs    f0, 0x0(r31)
    stfs    f0, 0x4(r31)
    stfs    f0, 0x8(r31)
    b       branch_0x8004dafc

branch_0x8004dac0:
    lwz     r5, 0xb0(sp)
    addi    r3, sp, 0x80
    lwz     r0, 0xb4(sp)
    addi    r4, sp, 0xa4
    stw     r5, 0x0(r30)
    stw     r0, 0x4(r30)
    lwz     r0, 0xb8(sp)
    stw     r0, 0x8(r30)
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x80(sp)
    lwz     r0, 0x84(sp)
    stw     r3, 0x0(r31)
    stw     r0, 0x4(r31)
    lwz     r0, 0x88(sp)
    stw     r0, 0x8(r31)
branch_0x8004dafc:
    lwz     r0, 0xfc(sp)
    lfd     f31, 0xf0(sp)
    lfd     f30, 0xe8(sp)
    mtlr    r0
    lfd     f29, 0xe0(sp)
    lfd     f28, 0xd8(sp)
    lfd     f27, 0xd0(sp)
    lwz     r31, 0xcc(sp)
    lwz     r30, 0xc8(sp)
    lwz     r29, 0xc4(sp)
    addi    sp, sp, 0xf8
    blr


.globl getPoint__11TSplinePathFf
getPoint__11TSplinePathFf: # 0x8004db2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stfd    f30, 0x28(sp)
    stfd    f29, 0x20(sp)
    fmr     f29, f1
    stw     r31, 0x1c(sp)
    mr      r31, r4
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    lwz     r0, 0x28(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8004db6c
    mr      r3, r31
    bl      calcTable__11TSplinePathFv
branch_0x8004db6c:
    lfs     f0, -0x6f28(rtoc)
    fcmpo   cr0, f29, f0
    bge-    branch_0x8004db7c
    fmr     f29, f0
branch_0x8004db7c:
    lfs     f0, -0x6f04(rtoc)
    fcmpo   cr0, f0, f29
    bge-    branch_0x8004db8c
    fmr     f29, f0
branch_0x8004db8c:
    fmr     f1, f29
    lwz     r4, 0x1c(r31)
    lwz     r5, 0xc(r31)
    mr      r3, r31
    lwz     r6, 0x18(r31)
    bl      calcSpline__11TSplinePathFfPfPfPf
    fmr     f30, f1
    lwz     r4, 0x1c(r31)
    fmr     f1, f29
    lwz     r5, 0x8(r31)
    lwz     r6, 0x14(r31)
    mr      r3, r31
    bl      calcSpline__11TSplinePathFfPfPfPf
    fmr     f31, f1
    lwz     r4, 0x1c(r31)
    fmr     f1, f29
    lwz     r5, 0x4(r31)
    lwz     r6, 0x10(r31)
    mr      r3, r31
    bl      calcSpline__11TSplinePathFfPfPfPf
    stfs    f1, 0x0(r30)
    stfs    f31, 0x4(r30)
    stfs    f30, 0x8(r30)
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lfd     f30, 0x28(sp)
    mtlr    r0
    lfd     f29, 0x20(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x38
    blr


.globl __ct__11TSplineRailFPC9TGraphWeb
__ct__11TSplineRailFPC9TGraphWeb: # 0x8004dc0c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x188(sp)
    stfd    f31, 0x180(sp)
    stw     r31, 0x17c(sp)
    mr      r31, r4
    stw     r30, 0x178(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x174(sp)
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    lwz     r4, 0x0(r4)
    lwz     r5, 0x0(r4)
    lha     r0, 0x6(r5)
    cmpwi   r0, 0x2
    bgt-    branch_0x8004dc70
    lwz     r3, 0x8(r31)
    lhz     r0, 0x14(r5)
    subi    r3, r3, 0x1
    cmpw    r0, r3
    beq-    branch_0x8004dc78
    lhz     r0, 0x16(r5)
    cmpw    r0, r3
    beq-    branch_0x8004dc78
branch_0x8004dc70:
    li      r0, 0x0
    b       branch_0x8004dcb0

branch_0x8004dc78:
    slwi    r0, r3, 4
    lwzx    r3, r4, r0
    lha     r0, 0x6(r3)
    cmpwi   r0, 0x2
    bgt-    branch_0x8004dca4
    lhz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8004dcac
    lhz     r0, 0x16(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8004dcac
branch_0x8004dca4:
    li      r0, 0x0
    b       branch_0x8004dcb0

branch_0x8004dcac:
    li      r0, 0x1
branch_0x8004dcb0:
    cmpwi   r0, 0x0
    beq-    branch_0x8004e028
    li      r0, 0x1
    stw     r0, 0x4(r30)
    li      r3, 0x2c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8004dce0
    lwz     r4, 0x8(r31)
    addi    r3, r29, 0x0
    addi    r4, r4, 0x3
    bl      __ct__11TSplinePathFi
branch_0x8004dce0:
    stw     r29, 0x0(r30)
    lis     r3, 0x4330
    lwz     r4, 0x8(r31)
    lwz     r5, 0x0(r31)
    subi    r0, r4, 0x1
    lfd     f1, -0x6f20(rtoc)
    slwi    r0, r0, 4
    lwzx    r4, r5, r0
    lha     r0, 0x0(r4)
    xoris   r0, r0, 0x8000
    stw     r0, 0x16c(sp)
    stw     r3, 0x168(sp)
    lfd     f0, 0x168(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xcc(sp)
    lha     r0, 0x2(r4)
    xoris   r0, r0, 0x8000
    stw     r0, 0x164(sp)
    stw     r3, 0x160(sp)
    lfd     f0, 0x160(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xd0(sp)
    lha     r0, 0x4(r4)
    xoris   r0, r0, 0x8000
    stw     r0, 0x15c(sp)
    stw     r3, 0x158(sp)
    lfd     f0, 0x158(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xd4(sp)
    lwz     r0, 0xcc(sp)
    lwz     r3, 0xd0(sp)
    stw     r0, 0x148(sp)
    lwz     r0, 0xd4(sp)
    stw     r3, 0x14c(sp)
    stw     r0, 0x150(sp)
    lwz     r4, 0x0(r30)
    lwz     r0, 0x0(r4)
    cmpwi   r0, 0x0
    ble-    branch_0x8004dda8
    lfs     f0, 0x148(sp)
    li      r0, 0x0
    lwz     r3, 0x4(r4)
    stfs    f0, 0x0(r3)
    lfs     f0, 0x14c(sp)
    lwz     r3, 0x8(r4)
    stfs    f0, 0x0(r3)
    lfs     f0, 0x150(sp)
    lwz     r3, 0xc(r4)
    stfs    f0, 0x0(r3)
    stw     r0, 0x28(r4)
branch_0x8004dda8:
    lfd     f1, -0x6f20(rtoc)
    li      r9, 0x0
    li      r3, 0x0
    li      r4, 0x0
    lis     r7, 0x4330
    b       branch_0x8004de8c

branch_0x8004ddc0:
    lwz     r5, 0x0(r31)
    addic.  r0, r9, 0x1
    lwzx    r5, r5, r4
    lha     r0, 0x0(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0x15c(sp)
    stw     r7, 0x158(sp)
    lfd     f0, 0x158(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xbc(sp)
    lha     r0, 0x2(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0x164(sp)
    stw     r7, 0x160(sp)
    lfd     f0, 0x160(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xc0(sp)
    lha     r0, 0x4(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0x16c(sp)
    stw     r7, 0x168(sp)
    lfd     f0, 0x168(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xc4(sp)
    lwz     r0, 0xbc(sp)
    lwz     r5, 0xc0(sp)
    stw     r0, 0x13c(sp)
    lwz     r0, 0xc4(sp)
    stw     r5, 0x140(sp)
    stw     r0, 0x144(sp)
    lwz     r8, 0x0(r30)
    blt-    branch_0x8004de80
    lwz     r5, 0x0(r8)
    addi    r0, r9, 0x1
    cmpw    r5, r0
    ble-    branch_0x8004de80
    lfs     f0, 0x13c(sp)
    addi    r6, r3, 0x4
    lwz     r5, 0x4(r8)
    li      r0, 0x0
    stfsx   f0, r5, r6
    lfs     f0, 0x140(sp)
    lwz     r5, 0x8(r8)
    stfsx   f0, r5, r6
    lfs     f0, 0x144(sp)
    lwz     r5, 0xc(r8)
    stfsx   f0, r5, r6
    stw     r0, 0x28(r8)
branch_0x8004de80:
    addi    r9, r9, 0x1
    addi    r3, r3, 0x4
    addi    r4, r4, 0x10
branch_0x8004de8c:
    lwz     r5, 0x8(r31)
    cmpw    r9, r5
    blt+    branch_0x8004ddc0
    lwz     r4, 0x0(r31)
    lis     r3, 0x4330
    lfd     f1, -0x6f20(rtoc)
    addic.  r5, r5, 0x1
    lwz     r4, 0x0(r4)
    lha     r0, 0x0(r4)
    xoris   r0, r0, 0x8000
    stw     r0, 0x15c(sp)
    stw     r3, 0x158(sp)
    lfd     f0, 0x158(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xb0(sp)
    lha     r0, 0x2(r4)
    xoris   r0, r0, 0x8000
    stw     r0, 0x164(sp)
    stw     r3, 0x160(sp)
    lfd     f0, 0x160(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xb4(sp)
    lha     r0, 0x4(r4)
    xoris   r0, r0, 0x8000
    stw     r0, 0x16c(sp)
    stw     r3, 0x168(sp)
    lfd     f0, 0x168(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xb8(sp)
    lwz     r0, 0xb0(sp)
    lwz     r3, 0xb4(sp)
    stw     r0, 0x10(sp)
    lwz     r0, 0xb8(sp)
    stw     r3, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r4, 0x0(r30)
    blt-    branch_0x8004df5c
    lwz     r0, 0x0(r4)
    cmpw    r0, r5
    ble-    branch_0x8004df5c
    lfs     f0, 0x10(sp)
    slwi    r5, r5, 2
    lwz     r3, 0x4(r4)
    li      r0, 0x0
    stfsx   f0, r3, r5
    lfs     f0, 0x14(sp)
    lwz     r3, 0x8(r4)
    stfsx   f0, r3, r5
    lfs     f0, 0x18(sp)
    lwz     r3, 0xc(r4)
    stfsx   f0, r3, r5
    stw     r0, 0x28(r4)
branch_0x8004df5c:
    lwz     r4, 0x0(r31)
    lis     r3, 0x4330
    lfd     f1, -0x6f20(rtoc)
    lwz     r4, 0x10(r4)
    lha     r0, 0x0(r4)
    xoris   r0, r0, 0x8000
    stw     r0, 0x15c(sp)
    stw     r3, 0x158(sp)
    lfd     f0, 0x158(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xa4(sp)
    lha     r0, 0x2(r4)
    xoris   r0, r0, 0x8000
    stw     r0, 0x164(sp)
    stw     r3, 0x160(sp)
    lfd     f0, 0x160(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xa8(sp)
    lha     r0, 0x4(r4)
    xoris   r0, r0, 0x8000
    stw     r0, 0x16c(sp)
    stw     r3, 0x168(sp)
    lfd     f0, 0x168(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xac(sp)
    lwz     r0, 0xa4(sp)
    lwz     r3, 0xa8(sp)
    stw     r0, 0x1c(sp)
    lwz     r0, 0xac(sp)
    stw     r3, 0x20(sp)
    stw     r0, 0x24(sp)
    lwz     r3, 0x8(r31)
    lwz     r4, 0x0(r30)
    addic.  r3, r3, 0x2
    blt-    branch_0x8004e130
    lwz     r0, 0x0(r4)
    cmpw    r0, r3
    ble-    branch_0x8004e130
    lfs     f0, 0x1c(sp)
    slwi    r5, r3, 2
    lwz     r3, 0x4(r4)
    li      r0, 0x0
    stfsx   f0, r3, r5
    lfs     f0, 0x20(sp)
    lwz     r3, 0x8(r4)
    stfsx   f0, r3, r5
    lfs     f0, 0x24(sp)
    lwz     r3, 0xc(r4)
    stfsx   f0, r3, r5
    stw     r0, 0x28(r4)
    b       branch_0x8004e130

branch_0x8004e028:
    li      r3, 0x2c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8004e044
    lwz     r4, 0x8(r31)
    mr      r3, r29
    bl      __ct__11TSplinePathFi
branch_0x8004e044:
    stw     r29, 0x0(r30)
    li      r8, 0x0
    li      r3, 0x0
    lfd     f1, -0x6f20(rtoc)
    li      r4, 0x0
    lis     r6, 0x4330
    b       branch_0x8004e124

branch_0x8004e060:
    lwz     r5, 0x0(r31)
    cmpwi   r8, 0x0
    lwzx    r5, r5, r4
    lha     r0, 0x0(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0x15c(sp)
    stw     r6, 0x158(sp)
    lfd     f0, 0x158(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x98(sp)
    lha     r0, 0x2(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0x164(sp)
    stw     r6, 0x160(sp)
    lfd     f0, 0x160(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x9c(sp)
    lha     r0, 0x4(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0x16c(sp)
    stw     r6, 0x168(sp)
    lfd     f0, 0x168(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xa0(sp)
    lwz     r0, 0x98(sp)
    lwz     r5, 0x9c(sp)
    stw     r0, 0x130(sp)
    lwz     r0, 0xa0(sp)
    stw     r5, 0x134(sp)
    stw     r0, 0x138(sp)
    lwz     r7, 0x0(r30)
    blt-    branch_0x8004e118
    lwz     r0, 0x0(r7)
    cmpw    r0, r8
    ble-    branch_0x8004e118
    lfs     f0, 0x130(sp)
    li      r0, 0x0
    lwz     r5, 0x4(r7)
    stfsx   f0, r5, r3
    lfs     f0, 0x134(sp)
    lwz     r5, 0x8(r7)
    stfsx   f0, r5, r3
    lfs     f0, 0x138(sp)
    lwz     r5, 0xc(r7)
    stfsx   f0, r5, r3
    stw     r0, 0x28(r7)
branch_0x8004e118:
    addi    r8, r8, 0x1
    addi    r3, r3, 0x4
    addi    r4, r4, 0x10
branch_0x8004e124:
    lwz     r0, 0x8(r31)
    cmpw    r8, r0
    blt+    branch_0x8004e060
branch_0x8004e130:
    lwz     r31, 0x0(r30)
    lfs     f31, -0x6f28(rtoc)
    lwz     r0, 0x28(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8004e14c
    mr      r3, r31
    bl      calcTable__11TSplinePathFv
branch_0x8004e14c:
    fmr     f1, f31
    lwz     r4, 0x1c(r31)
    lwz     r5, 0xc(r31)
    mr      r3, r31
    lwz     r6, 0x18(r31)
    bl      calcSpline__11TSplinePathFfPfPfPf
    fmr     f1, f31
    lwz     r4, 0x1c(r31)
    lwz     r5, 0x8(r31)
    mr      r3, r31
    lwz     r6, 0x14(r31)
    bl      calcSpline__11TSplinePathFfPfPfPf
    fmr     f1, f31
    lwz     r4, 0x1c(r31)
    lwz     r5, 0x4(r31)
    mr      r3, r31
    lwz     r6, 0x10(r31)
    bl      calcSpline__11TSplinePathFfPfPfPf
    lwz     r0, 0x18c(sp)
    mr      r3, r30
    lfd     f31, 0x180(sp)
    lwz     r31, 0x17c(sp)
    mtlr    r0
    lwz     r30, 0x178(sp)
    lwz     r29, 0x174(sp)
    addi    sp, sp, 0x188
    blr


.globl getPoint__10TGraphNodeCFP3Vec
getPoint__10TGraphNodeCFP3Vec: # 0x8004e1b8
    stwu    sp, -0x28(sp)
    lis     r6, 0x4330
    lwz     r5, 0x0(r3)
    lfd     f1, -0x6f20(rtoc)
    lha     r0, 0x0(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0x24(sp)
    stw     r6, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x0(r4)
    lwz     r5, 0x0(r3)
    lha     r0, 0x2(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    stw     r6, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x4(r4)
    lwz     r3, 0x0(r3)
    lha     r0, 0x4(r3)
    xoris   r0, r0, 0x8000
    stw     r0, 0x14(sp)
    stw     r6, 0x10(sp)
    lfd     f0, 0x10(sp)
    addi    sp, sp, 0x28
    fsubs   f0, f0, f1
    stfs    f0, 0x8(r4)
    blr


.globl __ct__10TGraphNodeFv
__ct__10TGraphNodeFv: # 0x8004e22c
    li      r4, 0x0
    stw     r4, 0x0(r3)
    li      r0, -0x7fff
    stw     r4, 0x4(r3)
    lfs     f0, -0x6f28(rtoc)
    stfs    f0, 0x8(r3)
    sth     r0, 0xc(r3)
    blr

