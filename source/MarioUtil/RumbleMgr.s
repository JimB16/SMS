
.globl finishPause__9RumbleMgrFv
finishPause__9RumbleMgrFv: # 0x802342b0
    lfs     f0, -0x15c0(rtoc)
    li      r0, 0x0
    stfs    f0, 0x4(r3)
    stb     r0, 0x9(r3)
    blr


.globl startPause__9RumbleMgrFv
startPause__9RumbleMgrFv: # 0x802342c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    li      r30, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
branch_0x802342e8:
    addi    r0, r31, 0xc
    lwzx    r3, r29, r0
    cmplwi  r3, 0x0
    beq-    branch_0x80234304
    lwz     r3, 0x8(r3)
    li      r4, 0x2
    bl      PADControlMotor
branch_0x80234304:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x4
    addi    r31, r31, 0x4
    blt+    branch_0x802342e8
    li      r0, 0x1
    stb     r0, 0x9(r29)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl setActive__9RumbleMgrFb
setActive__9RumbleMgrFb: # 0x80234338
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    mr      r28, r3
    stb     r4, 0x8(r3)
    lbz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802343c8
    lfs     f31, -0x15bc(rtoc)
    li      r30, 0x0
    addi    r31, r30, 0x0
    stfs    f31, 0x0(r28)
    stfs    f31, 0x4(r28)
branch_0x80234380:
    add     r29, r28, r31
    lwz     r3, 0x1c(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x802343b0
    bl      reset__19RumbleControllerMgrFv
    lwzu    r3, 0xc(r29)
    li      r4, 0x2
    lwz     r3, 0x8(r3)
    bl      PADControlMotor
    lwz     r3, 0x0(r29)
    stfs    f31, 0x0(r3)
    stfs    f31, 0x4(r3)
branch_0x802343b0:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x4
    addi    r31, r31, 0x4
    blt+    branch_0x80234380
    li      r0, 0x0
    stb     r0, 0x9(r28)
branch_0x802343c8:
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x28
    blr


.globl update__9RumbleMgrFv
update__9RumbleMgrFv: # 0x802343ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stfd    f30, 0x40(sp)
    stfd    f29, 0x38(sp)
    stfd    f28, 0x30(sp)
    stmw    r27, 0x1c(sp)
    mr      r29, r3
    bl      SMSGetVSyncTimesPerSec__Fv
    lfs     f28, -0x15b8(rtoc)
    lbz     r0, 0x9(r29)
    fdivs   f31, f28, f1
    cmplwi  r0, 0x0
    bne-    branch_0x8023469c
    lbz     r0, 0x8(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x80234438
    b       branch_0x8023469c

branch_0x80234438:
    lfs     f29, -0x15bc(rtoc)
    li      r30, 0x0
    lfs     f30, -0x15c0(rtoc)
    li      r28, 0x0
branch_0x80234448:
    add     r27, r29, r28
    addi    r31, r27, 0x1c
    lwz     r3, 0x1c(r27)
    cmplwi  r3, 0x0
    beq-    branch_0x80234674
    li      r0, 0x4
    li      r6, 0x0
    mtctr   r0
    addi    r4, r6, 0x0
    li      r7, 0x1
branch_0x80234470:
    lwz     r5, 0x4(r3)
    addi    r0, r4, 0x18
    lwzx    r0, r5, r0
    cmplwi  r0, 0x0
    beq-    branch_0x80234488
    li      r7, 0x0
branch_0x80234488:
    lwz     r5, 0x4(r3)
    addi    r0, r4, 0x38
    addi    r4, r4, 0x20
    lwzx    r0, r5, r0
    cmplwi  r0, 0x0
    beq-    branch_0x802344a4
    li      r7, 0x0
branch_0x802344a4:
    lwz     r5, 0x4(r3)
    addi    r0, r4, 0x38
    addi    r4, r4, 0x20
    lwzx    r0, r5, r0
    addi    r6, r6, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x802344c4
    li      r7, 0x0
branch_0x802344c4:
    lwz     r5, 0x4(r3)
    addi    r0, r4, 0x38
    addi    r4, r4, 0x20
    lwzx    r0, r5, r0
    addi    r6, r6, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x802344e4
    li      r7, 0x0
branch_0x802344e4:
    lwz     r5, 0x4(r3)
    addi    r0, r4, 0x38
    addi    r4, r4, 0x20
    lwzx    r0, r5, r0
    addi    r6, r6, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x80234504
    li      r7, 0x0
branch_0x80234504:
    lwz     r5, 0x4(r3)
    addi    r0, r4, 0x38
    addi    r4, r4, 0x20
    lwzx    r0, r5, r0
    addi    r6, r6, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x80234524
    li      r7, 0x0
branch_0x80234524:
    lwz     r5, 0x4(r3)
    addi    r0, r4, 0x38
    addi    r4, r4, 0x20
    lwzx    r0, r5, r0
    addi    r6, r6, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x80234544
    li      r7, 0x0
branch_0x80234544:
    lwz     r5, 0x4(r3)
    addi    r0, r4, 0x38
    addi    r4, r4, 0x20
    lwzx    r0, r5, r0
    addi    r6, r6, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x80234564
    li      r7, 0x0
branch_0x80234564:
    addi    r6, r6, 0x1
    addi    r4, r4, 0x20
    bdnz+      branch_0x80234470
    clrlwi. r0, r7, 24
    bne-    branch_0x80234650
    bl      update__19RumbleControllerMgrFv
    stfs    f1, 0x0(r29)
    lfs     f0, 0x4(r29)
    fcmpo   cr0, f0, f29
    ble-    branch_0x802345a4
    fdivs   f0, f0, f30
    lfs     f2, 0x0(r29)
    fsubs   f1, f28, f2
    fmadds  f0, f1, f0, f28
    fmuls   f0, f2, f0
    stfs    f0, 0x0(r29)
branch_0x802345a4:
    lfs     f0, 0x0(r29)
    fcmpo   cr0, f0, f28
    ble-    branch_0x802345b8
    stfs    f28, 0x0(r29)
    b       branch_0x802345c4

branch_0x802345b8:
    fcmpo   cr0, f0, f29
    bge-    branch_0x802345c4
    stfs    f29, 0x0(r29)
branch_0x802345c4:
    lbz     r0, 0xa(r29)
    lwz     r3, 0xc(r27)
    lfs     f0, 0x0(r29)
    stfs    f0, 0x0(r3)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x0(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r3)
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f29
    cror    2, 0, 2
    bne-    branch_0x80234604
    lwz     r3, 0x8(r3)
    li      r4, 0x2
    bl      PADControlMotor
    b       branch_0x8023466c

branch_0x80234604:
    lfs     f0, 0x4(r3)
    fcmpo   cr0, f0, f28
    bge-    branch_0x80234638
    cmplwi  r0, 0x0
    beq-    branch_0x80234628
    lwz     r3, 0x8(r3)
    li      r4, 0x2
    bl      PADControlMotor
    b       branch_0x8023466c

branch_0x80234628:
    lwz     r3, 0x8(r3)
    li      r4, 0x0
    bl      PADControlMotor
    b       branch_0x8023466c

branch_0x80234638:
    fsubs   f0, f0, f28
    li      r4, 0x1
    stfs    f0, 0x4(r3)
    lwz     r3, 0x8(r3)
    bl      PADControlMotor
    b       branch_0x8023466c

branch_0x80234650:
    lwzu    r3, 0xc(r27)
    li      r4, 0x2
    lwz     r3, 0x8(r3)
    bl      PADControlMotor
    lwz     r3, 0x0(r27)
    stfs    f29, 0x0(r3)
    stfs    f29, 0x4(r3)
branch_0x8023466c:
    lwz     r3, 0x0(r31)
    bl      updateMotorCount__19RumbleControllerMgrFv
branch_0x80234674:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x4
    addi    r28, r28, 0x4
    blt+    branch_0x80234448
    lfs     f1, 0x4(r29)
    lfs     f0, -0x15bc(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8023469c
    fsubs   f0, f1, f31
    stfs    f0, 0x4(r29)
branch_0x8023469c:
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lfd     f30, 0x40(sp)
    mtlr    r0
    lfd     f29, 0x38(sp)
    lfd     f28, 0x30(sp)
    addi    sp, sp, 0x50
    blr


.globl stop__9RumbleMgrFi
stop__9RumbleMgrFi: # 0x802346c0
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0x9(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80234704
    lbz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80234704
    lwz     r0, 0x1c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80234704
    slwi    r0, r5, 2
    add     r3, r3, r0
    lwz     r3, 0x1c(r3)
    bl      stop__19RumbleControllerMgrFi
branch_0x80234704:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl stop__9RumbleMgrFv
stop__9RumbleMgrFv: # 0x80234714
    stwu    sp, -0x20(sp)
    li      r4, 0x0
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    li      r30, 0x0
    lfs     f0, -0x15bc(rtoc)
branch_0x8023472c:
    addi    r0, r4, 0x1c
    lwzx    r12, r3, r0
    cmplwi  r12, 0x0
    beq-    branch_0x80234840
    li      r0, 0x8
    li      r11, 0x0
    mtctr   r0
    addi    r5, r11, 0x0
    addi    r8, r11, 0x0
    addi    r7, r11, 0x0
    addi    r6, r11, 0x0
    addi    r0, r11, 0x0
    li      r9, -0x1
branch_0x80234760:
    lwz     r10, 0x4(r12)
    add     r31, r10, r5
    lwz     r10, 0x18(r31)
    cmplwi  r10, 0x0
    beq-    branch_0x80234790
    stfs    f0, 0x0(r31)
    stfs    f0, 0x4(r31)
    stw     r9, 0x8(r31)
    stw     r8, 0xc(r31)
    stw     r7, 0x10(r31)
    stw     r6, 0x14(r31)
    stw     r0, 0x18(r31)
branch_0x80234790:
    lwz     r10, 0x4(r12)
    addi    r5, r5, 0x20
    add     r31, r10, r5
    lwz     r10, 0x18(r31)
    cmplwi  r10, 0x0
    beq-    branch_0x802347c4
    stfs    f0, 0x0(r31)
    stfs    f0, 0x4(r31)
    stw     r9, 0x8(r31)
    stw     r8, 0xc(r31)
    stw     r7, 0x10(r31)
    stw     r6, 0x14(r31)
    stw     r0, 0x18(r31)
branch_0x802347c4:
    lwz     r10, 0x4(r12)
    addi    r5, r5, 0x20
    addi    r11, r11, 0x1
    add     r31, r10, r5
    lwz     r10, 0x18(r31)
    cmplwi  r10, 0x0
    beq-    branch_0x802347fc
    stfs    f0, 0x0(r31)
    stfs    f0, 0x4(r31)
    stw     r9, 0x8(r31)
    stw     r8, 0xc(r31)
    stw     r7, 0x10(r31)
    stw     r6, 0x14(r31)
    stw     r0, 0x18(r31)
branch_0x802347fc:
    lwz     r10, 0x4(r12)
    addi    r5, r5, 0x20
    addi    r11, r11, 0x1
    add     r31, r10, r5
    lwz     r10, 0x18(r31)
    cmplwi  r10, 0x0
    beq-    branch_0x80234834
    stfs    f0, 0x0(r31)
    stfs    f0, 0x4(r31)
    stw     r9, 0x8(r31)
    stw     r8, 0xc(r31)
    stw     r7, 0x10(r31)
    stw     r6, 0x14(r31)
    stw     r0, 0x18(r31)
branch_0x80234834:
    addi    r11, r11, 0x1
    addi    r5, r5, 0x20
    bdnz+      branch_0x80234760
branch_0x80234840:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x4
    addi    r4, r4, 0x4
    blt+    branch_0x8023472c
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    blr


.globl start__9RumbleMgrFiiP3Vec
start__9RumbleMgrFiiP3Vec: # 0x80234860
    mflr    r0
    li      r7, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0x9(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802348a4
    lbz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802348a4
    lwz     r0, 0x1c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802348a4
    slwi    r0, r7, 2
    add     r3, r3, r0
    lwz     r3, 0x1c(r3)
    bl      start__19RumbleControllerMgrFiiP3Vec
branch_0x802348a4:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl start__9RumbleMgrFiiPf
start__9RumbleMgrFiiPf: # 0x802348b4
    mflr    r0
    li      r7, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0x9(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802348f8
    lbz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802348f8
    lwz     r0, 0x1c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802348f8
    slwi    r0, r7, 2
    add     r3, r3, r0
    lwz     r3, 0x1c(r3)
    bl      start__19RumbleControllerMgrFiiPf
branch_0x802348f8:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl start__9RumbleMgrFiP3Vec
start__9RumbleMgrFiP3Vec: # 0x80234908
    mflr    r0
    li      r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0x9(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80234954
    lbz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80234954
    lwz     r0, 0x1c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80234954
    slwi    r0, r6, 2
    add     r3, r3, r0
    lwz     r3, 0x1c(r3)
    addi    r6, r5, 0x0
    li      r5, 0x1
    bl      start__19RumbleControllerMgrFiiP3Vec
branch_0x80234954:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl start__9RumbleMgrFiPf
start__9RumbleMgrFiPf: # 0x80234964
    mflr    r0
    li      r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0x9(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802349b0
    lbz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802349b0
    lwz     r0, 0x1c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802349b0
    slwi    r0, r6, 2
    add     r3, r3, r0
    lwz     r3, 0x1c(r3)
    addi    r6, r5, 0x0
    li      r5, 0x1
    bl      start__19RumbleControllerMgrFiiPf
branch_0x802349b0:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl reset__9RumbleMgrFv
reset__9RumbleMgrFv: # 0x802349c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stmw    r26, 0x20(sp)
    addi    r30, r3, 0x0
    li      r31, 0x0
    li      r29, 0x0
    lfs     f31, -0x15bc(rtoc)
    stfs    f31, 0x0(r3)
    stfs    f31, 0x4(r3)
branch_0x802349ec:
    add     r8, r30, r29
    lwz     r7, 0x1c(r8)
    cmplwi  r7, 0x0
    beq-    branch_0x80234b84
    li      r0, 0x4
    stfs    f31, 0x0(r7)
    mtctr   r0
    li      r5, 0x0
branch_0x80234a0c:
    lwz     r0, 0x4(r7)
    li      r4, -0x1
    li      r3, 0x0
    add     r6, r0, r5
    stfs    f31, 0x0(r6)
    addi    r26, r5, 0x20
    addi    r27, r5, 0x40
    stfs    f31, 0x4(r6)
    addi    r28, r5, 0x60
    addi    r12, r5, 0x80
    stw     r4, 0x8(r6)
    addi    r11, r5, 0xa0
    addi    r10, r5, 0xc0
    stw     r3, 0xc(r6)
    addi    r9, r5, 0xe0
    addi    r5, r5, 0x100
    stw     r3, 0x10(r6)
    stw     r3, 0x14(r6)
    stw     r3, 0x18(r6)
    lwz     r0, 0x4(r7)
    add     r26, r0, r26
    stfs    f31, 0x0(r26)
    stfs    f31, 0x4(r26)
    stw     r4, 0x8(r26)
    stw     r3, 0xc(r26)
    stw     r3, 0x10(r26)
    stw     r3, 0x14(r26)
    stw     r3, 0x18(r26)
    lwz     r0, 0x4(r7)
    add     r27, r0, r27
    stfs    f31, 0x0(r27)
    stfs    f31, 0x4(r27)
    stw     r4, 0x8(r27)
    stw     r3, 0xc(r27)
    stw     r3, 0x10(r27)
    stw     r3, 0x14(r27)
    stw     r3, 0x18(r27)
    lwz     r0, 0x4(r7)
    add     r28, r0, r28
    stfs    f31, 0x0(r28)
    stfs    f31, 0x4(r28)
    stw     r4, 0x8(r28)
    stw     r3, 0xc(r28)
    stw     r3, 0x10(r28)
    stw     r3, 0x14(r28)
    stw     r3, 0x18(r28)
    lwz     r0, 0x4(r7)
    add     r12, r0, r12
    stfs    f31, 0x0(r12)
    stfs    f31, 0x4(r12)
    stw     r4, 0x8(r12)
    stw     r3, 0xc(r12)
    stw     r3, 0x10(r12)
    stw     r3, 0x14(r12)
    stw     r3, 0x18(r12)
    lwz     r0, 0x4(r7)
    add     r11, r0, r11
    stfs    f31, 0x0(r11)
    stfs    f31, 0x4(r11)
    stw     r4, 0x8(r11)
    stw     r3, 0xc(r11)
    stw     r3, 0x10(r11)
    stw     r3, 0x14(r11)
    stw     r3, 0x18(r11)
    lwz     r0, 0x4(r7)
    add     r10, r0, r10
    stfs    f31, 0x0(r10)
    stfs    f31, 0x4(r10)
    stw     r4, 0x8(r10)
    stw     r3, 0xc(r10)
    stw     r3, 0x10(r10)
    stw     r3, 0x14(r10)
    stw     r3, 0x18(r10)
    lwz     r0, 0x4(r7)
    add     r9, r0, r9
    stfs    f31, 0x0(r9)
    stfs    f31, 0x4(r9)
    stw     r4, 0x8(r9)
    stw     r3, 0xc(r9)
    stw     r3, 0x10(r9)
    stw     r3, 0x14(r9)
    stw     r3, 0x18(r9)
    bdnz+      branch_0x80234a0c
    stw     r3, 0xc(r7)
    addi    r28, r8, 0xc
    li      r4, 0x2
    sth     r3, 0x10(r7)
    stb     r3, 0x12(r7)
    lwz     r3, 0xc(r8)
    lwz     r3, 0x8(r3)
    bl      PADControlMotor
    lwz     r3, 0x0(r28)
    stfs    f31, 0x0(r3)
    stfs    f31, 0x4(r3)
branch_0x80234b84:
    addi    r31, r31, 0x1
    cmpwi   r31, 0x4
    addi    r29, r29, 0x4
    blt+    branch_0x802349ec
    li      r0, 0x0
    stb     r0, 0x9(r30)
    lmw     r26, 0x20(sp)
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl init__9RumbleMgrFv
init__9RumbleMgrFv: # 0x80234bb4
    stwu    sp, -0x40(sp)
    li      r4, 0x0
    li      r5, 0x0
    stmw    r25, 0x24(sp)
    lfs     f0, -0x15bc(rtoc)
    stfs    f0, 0x0(r3)
    stfs    f0, 0x4(r3)
branch_0x80234bd0:
    add     r12, r3, r5
    lwz     r11, 0x1c(r12)
    cmplwi  r11, 0x0
    beq-    branch_0x80234d88
    li      r0, 0x4
    stfs    f0, 0x0(r11)
    mtctr   r0
    li      r8, 0x0
branch_0x80234bf0:
    lwz     r0, 0x4(r11)
    li      r7, -0x1
    lwz     r10, 0x8(r11)
    li      r6, 0x0
    add     r9, r0, r8
    stfs    f0, 0x0(r9)
    addi    r25, r8, 0x20
    addi    r26, r8, 0x40
    stfs    f0, 0x4(r9)
    addi    r27, r8, 0x60
    addi    r28, r8, 0x80
    stw     r7, 0x8(r9)
    addi    r29, r8, 0xa0
    addi    r30, r8, 0xc0
    stw     r6, 0xc(r9)
    addi    r31, r8, 0xe0
    addi    r8, r8, 0x100
    stw     r6, 0x10(r9)
    stw     r6, 0x14(r9)
    stw     r6, 0x18(r9)
    stw     r10, 0x1c(r9)
    lwz     r0, 0x4(r11)
    lwz     r9, 0x8(r11)
    add     r25, r0, r25
    stfs    f0, 0x0(r25)
    stfs    f0, 0x4(r25)
    stw     r7, 0x8(r25)
    stw     r6, 0xc(r25)
    stw     r6, 0x10(r25)
    stw     r6, 0x14(r25)
    stw     r6, 0x18(r25)
    stw     r9, 0x1c(r25)
    lwz     r0, 0x4(r11)
    lwz     r9, 0x8(r11)
    add     r26, r0, r26
    stfs    f0, 0x0(r26)
    stfs    f0, 0x4(r26)
    stw     r7, 0x8(r26)
    stw     r6, 0xc(r26)
    stw     r6, 0x10(r26)
    stw     r6, 0x14(r26)
    stw     r6, 0x18(r26)
    stw     r9, 0x1c(r26)
    lwz     r0, 0x4(r11)
    lwz     r9, 0x8(r11)
    add     r27, r0, r27
    stfs    f0, 0x0(r27)
    stfs    f0, 0x4(r27)
    stw     r7, 0x8(r27)
    stw     r6, 0xc(r27)
    stw     r6, 0x10(r27)
    stw     r6, 0x14(r27)
    stw     r6, 0x18(r27)
    stw     r9, 0x1c(r27)
    lwz     r0, 0x4(r11)
    lwz     r9, 0x8(r11)
    add     r28, r0, r28
    stfs    f0, 0x0(r28)
    stfs    f0, 0x4(r28)
    stw     r7, 0x8(r28)
    stw     r6, 0xc(r28)
    stw     r6, 0x10(r28)
    stw     r6, 0x14(r28)
    stw     r6, 0x18(r28)
    stw     r9, 0x1c(r28)
    lwz     r0, 0x4(r11)
    lwz     r9, 0x8(r11)
    add     r29, r0, r29
    stfs    f0, 0x0(r29)
    stfs    f0, 0x4(r29)
    stw     r7, 0x8(r29)
    stw     r6, 0xc(r29)
    stw     r6, 0x10(r29)
    stw     r6, 0x14(r29)
    stw     r6, 0x18(r29)
    stw     r9, 0x1c(r29)
    lwz     r0, 0x4(r11)
    lwz     r9, 0x8(r11)
    add     r30, r0, r30
    stfs    f0, 0x0(r30)
    stfs    f0, 0x4(r30)
    stw     r7, 0x8(r30)
    stw     r6, 0xc(r30)
    stw     r6, 0x10(r30)
    stw     r6, 0x14(r30)
    stw     r6, 0x18(r30)
    stw     r9, 0x1c(r30)
    lwz     r0, 0x4(r11)
    lwz     r9, 0x8(r11)
    add     r31, r0, r31
    stfs    f0, 0x0(r31)
    stfs    f0, 0x4(r31)
    stw     r7, 0x8(r31)
    stw     r6, 0xc(r31)
    stw     r6, 0x10(r31)
    stw     r6, 0x14(r31)
    stw     r6, 0x18(r31)
    stw     r9, 0x1c(r31)
    bdnz+      branch_0x80234bf0
    lwz     r6, 0xc(r12)
    stfs    f0, 0x0(r6)
    stfs    f0, 0x4(r6)
branch_0x80234d88:
    addi    r4, r4, 0x1
    cmpwi   r4, 0x4
    addi    r5, r5, 0x4
    blt+    branch_0x80234bd0
    lis     r5, 0x803e
    lwz     r4, 0x2c(r3)
    subi    r0, r5, 0x46d8
    stw     r0, 0x0(r4)
    li      r4, 0x1
    li      r0, 0x0
    stb     r4, 0x8(r3)
    stb     r0, 0x9(r3)
    stb     r4, 0xa(r3)
    lmw     r25, 0x24(sp)
    addi    sp, sp, 0x40
    blr


.globl __ct__9RumbleMgrFbbbb
__ct__9RumbleMgrFbbbb: # 0x80234dc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stfd    f30, 0x38(sp)
    stmw    r24, 0x18(sp)
    addi    r31, r3, 0x0
    lis     r3, 0x8023
    addi    r28, r3, 0x5688
    addi    r30, sp, 0x10
    li      r25, 0x0
    li      r29, 0x0
    lfs     f0, -0x15bc(rtoc)
    stfs    f0, 0x0(r31)
    fmr     f30, f0
    fmr     f31, f0
    stfs    f0, 0x4(r31)
    stb     r4, 0x10(sp)
    stb     r5, 0x11(sp)
    stb     r6, 0x12(sp)
    stb     r7, 0x13(sp)
branch_0x80234e1c:
    add     r3, r31, r29
    addi    r27, r3, 0x1c
    li      r0, 0x0
    stw     r0, 0x1c(r3)
    addi    r26, r3, 0xc
    stw     r0, 0xc(r3)
    lbz     r0, 0x0(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80234e98
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80234e74
    stfs    f30, 0x0(r24)
    li      r3, 0x408
    bl      __nwa__FUl
    addi    r4, r28, 0x0
    li      r5, 0x0
    li      r6, 0x20
    li      r7, 0x20
    bl      __construct_new_array
    stw     r3, 0x4(r24)
branch_0x80234e74:
    stw     r24, 0x0(r27)
    li      r3, 0xc
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x80234e94
    stfs    f31, 0x0(r3)
    stfs    f31, 0x4(r3)
    stw     r25, 0x8(r3)
branch_0x80234e94:
    stw     r3, 0x0(r26)
branch_0x80234e98:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x4
    addi    r30, r30, 0x1
    addi    r29, r29, 0x4
    blt+    branch_0x80234e1c
    li      r29, 0x0
    stw     r29, 0x2c(r31)
    li      r3, 0x4
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x80234ec8
    stw     r29, 0x0(r3)
branch_0x80234ec8:
    stw     r3, 0x2c(r31)
    li      r4, 0x1
    li      r0, 0x0
    stb     r4, 0x8(r31)
    mr      r3, r31
    stb     r0, 0x9(r31)
    stb     r4, 0xa(r31)
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lfd     f30, 0x38(sp)
    lmw     r24, 0x18(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl update__19RumbleControllerMgrFv
update__19RumbleControllerMgrFv: # 0x80234f00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    li      r30, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    lfs     f31, -0x15bc(rtoc)
branch_0x80234f2c:
    lwz     r0, 0x4(r29)
    add     r3, r0, r31
    lwz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80234f58
    bl      update__16RumbleChannelMgrFv
    stfs    f1, 0x0(r29)
    lfs     f0, 0x0(r29)
    fcmpo   cr0, f0, f31
    ble-    branch_0x80234f58
    fmr     f31, f0
branch_0x80234f58:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x20
    addi    r31, r31, 0x20
    blt+    branch_0x80234f2c
    stfs    f31, 0x0(r29)
    lfs     f1, 0x0(r29)
    lfs     f0, -0x15b8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80234f84
    stfs    f0, 0x0(r29)
    b       branch_0x80234f94

branch_0x80234f84:
    lfs     f0, -0x15bc(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80234f94
    stfs    f0, 0x0(r29)
branch_0x80234f94:
    lfs     f1, 0x0(r29)
    lfs     f0, -0x76e8(r13)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80234fac
    lhz     r0, -0x76ec(r13)
    sth     r0, 0x10(r29)
branch_0x80234fac:
    lbz     r0, 0x12(r29)
    extsb.  r0, r0
    beq-    branch_0x80234fc0
    lfs     f0, -0x15bc(rtoc)
    stfs    f0, 0x0(r29)
branch_0x80234fc0:
    lwz     r0, 0x2c(sp)
    lfs     f1, 0x0(r29)
    lfd     f31, 0x20(sp)
    mtlr    r0
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x28
    blr


.globl updateMotorCount__19RumbleControllerMgrFv
updateMotorCount__19RumbleControllerMgrFv: # 0x80234fe4
    lbz     r0, 0x12(r3)
    extsb.  r0, r0
    beq-    branch_0x80235018
    lwz     r4, 0xc(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80235008
    subi    r0, r4, 0x1
    stw     r0, 0xc(r3)
    blr

branch_0x80235008:
    li      r0, 0x0
    stb     r0, 0x12(r3)
    sth     r0, 0x10(r3)
    blr

branch_0x80235018:
    lwz     r4, 0xc(r3)
    lwz     r0, -0x76f0(r13)
    cmplw   r4, r0
    ble-    branch_0x80235034
    li      r0, 0x1
    stb     r0, 0x12(r3)
    blr

branch_0x80235034:
    lhz     r4, 0x10(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80235058
    subi    r0, r4, 0x1
    sth     r0, 0x10(r3)
    lwz     r4, 0xc(r3)
    addi    r0, r4, 0x1
    stw     r0, 0xc(r3)
    blr

branch_0x80235058:
    li      r0, 0x0
    stw     r0, 0xc(r3)
    blr


.globl stop__19RumbleControllerMgrFi
stop__19RumbleControllerMgrFi: # 0x80235064
    li      r0, 0x8
    lfs     f0, -0x15bc(rtoc)
    li      r5, 0x0
    mtctr   r0
    addi    r8, r5, 0x0
    addi    r7, r5, 0x0
    addi    r6, r5, 0x0
    addi    r0, r5, 0x0
    li      r12, 0x0
    li      r9, -0x1
branch_0x8023508c:
    lwz     r10, 0x4(r3)
    add     r11, r10, r5
    lwz     r10, 0x18(r11)
    cmplwi  r10, 0x0
    beq-    branch_0x802350c8
    lwz     r10, 0x8(r11)
    cmpw    r4, r10
    bne-    branch_0x802350c8
    stfs    f0, 0x0(r11)
    stfs    f0, 0x4(r11)
    stw     r9, 0x8(r11)
    stw     r8, 0xc(r11)
    stw     r7, 0x10(r11)
    stw     r6, 0x14(r11)
    stw     r0, 0x18(r11)
branch_0x802350c8:
    lwz     r10, 0x4(r3)
    addi    r5, r5, 0x20
    add     r11, r10, r5
    lwz     r10, 0x18(r11)
    cmplwi  r10, 0x0
    beq-    branch_0x80235108
    lwz     r10, 0x8(r11)
    cmpw    r4, r10
    bne-    branch_0x80235108
    stfs    f0, 0x0(r11)
    stfs    f0, 0x4(r11)
    stw     r9, 0x8(r11)
    stw     r8, 0xc(r11)
    stw     r7, 0x10(r11)
    stw     r6, 0x14(r11)
    stw     r0, 0x18(r11)
branch_0x80235108:
    lwz     r10, 0x4(r3)
    addi    r5, r5, 0x20
    addi    r12, r12, 0x1
    add     r11, r10, r5
    lwz     r10, 0x18(r11)
    cmplwi  r10, 0x0
    beq-    branch_0x8023514c
    lwz     r10, 0x8(r11)
    cmpw    r4, r10
    bne-    branch_0x8023514c
    stfs    f0, 0x0(r11)
    stfs    f0, 0x4(r11)
    stw     r9, 0x8(r11)
    stw     r8, 0xc(r11)
    stw     r7, 0x10(r11)
    stw     r6, 0x14(r11)
    stw     r0, 0x18(r11)
branch_0x8023514c:
    lwz     r10, 0x4(r3)
    addi    r5, r5, 0x20
    addi    r12, r12, 0x1
    add     r11, r10, r5
    lwz     r10, 0x18(r11)
    cmplwi  r10, 0x0
    beq-    branch_0x80235190
    lwz     r10, 0x8(r11)
    cmpw    r4, r10
    bne-    branch_0x80235190
    stfs    f0, 0x0(r11)
    stfs    f0, 0x4(r11)
    stw     r9, 0x8(r11)
    stw     r8, 0xc(r11)
    stw     r7, 0x10(r11)
    stw     r6, 0x14(r11)
    stw     r0, 0x18(r11)
branch_0x80235190:
    addi    r12, r12, 0x1
    addi    r5, r5, 0x20
    bdnz+      branch_0x8023508c
    blr


.globl start__19RumbleControllerMgrFiiP3Vec
start__19RumbleControllerMgrFiiP3Vec: # 0x802351a0
    li      r0, 0x20
    mtctr   r0
    li      r7, 0x0
branch_0x802351ac:
    lwz     r0, 0x4(r3)
    add     r8, r0, r7
    lwz     r0, 0x18(r8)
    cmplwi  r0, 0x0
    bne-    branch_0x802351ec
    lfs     f0, -0x15bc(rtoc)
    mulli   r7, r4, 0xc
    stfs    f0, 0x0(r8)
    lis     r3, 0x803e
    subi    r0, r3, 0x46d8
    add     r0, r0, r7
    stw     r0, 0x18(r8)
    stw     r4, 0x8(r8)
    stw     r5, 0xc(r8)
    stw     r6, 0x14(r8)
    blr

branch_0x802351ec:
    addi    r7, r7, 0x20
    bdnz+      branch_0x802351ac
    blr


.globl start__19RumbleControllerMgrFiiPf
start__19RumbleControllerMgrFiiPf: # 0x802351f8
    li      r0, 0x20
    mtctr   r0
    li      r7, 0x0
branch_0x80235204:
    lwz     r0, 0x4(r3)
    add     r8, r0, r7
    lwz     r0, 0x18(r8)
    cmplwi  r0, 0x0
    bne-    branch_0x80235244
    lfs     f0, -0x15bc(rtoc)
    mulli   r7, r4, 0xc
    stfs    f0, 0x0(r8)
    lis     r3, 0x803e
    subi    r0, r3, 0x46d8
    add     r0, r0, r7
    stw     r0, 0x18(r8)
    stw     r4, 0x8(r8)
    stw     r5, 0xc(r8)
    stw     r6, 0x10(r8)
    blr

branch_0x80235244:
    addi    r7, r7, 0x20
    bdnz+      branch_0x80235204
    blr


.globl reset__19RumbleControllerMgrFv
reset__19RumbleControllerMgrFv: # 0x80235250
    stwu    sp, -0x20(sp)
    li      r0, 0x4
    mtctr   r0
    li      r4, 0x0
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    lfs     f0, -0x15bc(rtoc)
    stfs    f0, 0x0(r3)
branch_0x80235270:
    lwz     r0, 0x4(r3)
    li      r6, -0x1
    li      r5, 0x0
    add     r7, r0, r4
    stfs    f0, 0x0(r7)
    addi    r30, r4, 0x20
    addi    r31, r4, 0x40
    stfs    f0, 0x4(r7)
    addi    r12, r4, 0x60
    addi    r11, r4, 0x80
    stw     r6, 0x8(r7)
    addi    r10, r4, 0xa0
    addi    r9, r4, 0xc0
    stw     r5, 0xc(r7)
    addi    r8, r4, 0xe0
    addi    r4, r4, 0x100
    stw     r5, 0x10(r7)
    stw     r5, 0x14(r7)
    stw     r5, 0x18(r7)
    lwz     r0, 0x4(r3)
    add     r30, r0, r30
    stfs    f0, 0x0(r30)
    stfs    f0, 0x4(r30)
    stw     r6, 0x8(r30)
    stw     r5, 0xc(r30)
    stw     r5, 0x10(r30)
    stw     r5, 0x14(r30)
    stw     r5, 0x18(r30)
    lwz     r0, 0x4(r3)
    add     r31, r0, r31
    stfs    f0, 0x0(r31)
    stfs    f0, 0x4(r31)
    stw     r6, 0x8(r31)
    stw     r5, 0xc(r31)
    stw     r5, 0x10(r31)
    stw     r5, 0x14(r31)
    stw     r5, 0x18(r31)
    lwz     r0, 0x4(r3)
    add     r12, r0, r12
    stfs    f0, 0x0(r12)
    stfs    f0, 0x4(r12)
    stw     r6, 0x8(r12)
    stw     r5, 0xc(r12)
    stw     r5, 0x10(r12)
    stw     r5, 0x14(r12)
    stw     r5, 0x18(r12)
    lwz     r0, 0x4(r3)
    add     r11, r0, r11
    stfs    f0, 0x0(r11)
    stfs    f0, 0x4(r11)
    stw     r6, 0x8(r11)
    stw     r5, 0xc(r11)
    stw     r5, 0x10(r11)
    stw     r5, 0x14(r11)
    stw     r5, 0x18(r11)
    lwz     r0, 0x4(r3)
    add     r10, r0, r10
    stfs    f0, 0x0(r10)
    stfs    f0, 0x4(r10)
    stw     r6, 0x8(r10)
    stw     r5, 0xc(r10)
    stw     r5, 0x10(r10)
    stw     r5, 0x14(r10)
    stw     r5, 0x18(r10)
    lwz     r0, 0x4(r3)
    add     r9, r0, r9
    stfs    f0, 0x0(r9)
    stfs    f0, 0x4(r9)
    stw     r6, 0x8(r9)
    stw     r5, 0xc(r9)
    stw     r5, 0x10(r9)
    stw     r5, 0x14(r9)
    stw     r5, 0x18(r9)
    lwz     r0, 0x4(r3)
    add     r8, r0, r8
    stfs    f0, 0x0(r8)
    stfs    f0, 0x4(r8)
    stw     r6, 0x8(r8)
    stw     r5, 0xc(r8)
    stw     r5, 0x10(r8)
    stw     r5, 0x14(r8)
    stw     r5, 0x18(r8)
    bdnz+      branch_0x80235270
    stw     r5, 0xc(r3)
    sth     r5, 0x10(r3)
    stb     r5, 0x12(r3)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    blr


.globl update__16RumbleChannelMgrFv
update__16RumbleChannelMgrFv: # 0x802353d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    bl      SMSGetVSyncTimesPerSec__Fv
    lfs     f2, -0x15b8(rtoc)
    lwz     r3, 0x10(r31)
    fdivs   f31, f2, f1
    cmplwi  r3, 0x0
    beq-    branch_0x80235434
    lfs     f1, 0x0(r3)
    lfs     f0, -0x15bc(rtoc)
    fmr     f5, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80235424
    fmr     f5, f0
    b       branch_0x80235508

branch_0x80235424:
    fcmpo   cr0, f5, f2
    ble-    branch_0x80235508
    fmr     f5, f2
    b       branch_0x80235508

branch_0x80235434:
    lwz     r5, 0x14(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x80235504
    lwz     r4, -0x60b4(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x34(sp)
    stw     r0, 0x38(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x3c(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x0(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x4(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x8(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x3c(sp)
    lwz     r0, 0x34(sp)
    lwz     r3, 0x38(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x3c(sp)
    stw     r3, 0x44(sp)
    stw     r0, 0x48(sp)
    lfs     f1, 0x40(sp)
    lfs     f0, 0x44(sp)
    lfs     f2, 0x48(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x15b0(rtoc)
    lfs     f3, -0x15b4(rtoc)
    fsubs   f2, f1, f0
    lfs     f1, -0x15b8(rtoc)
    lfs     f0, -0x15bc(rtoc)
    fnmsubs  f2, f3, f2, f1
    fcmpo   cr0, f2, f0
    fmr     f5, f2
    bge-    branch_0x802354f4
    fmr     f5, f0
    b       branch_0x80235508

branch_0x802354f4:
    fcmpo   cr0, f5, f1
    ble-    branch_0x80235508
    fmr     f5, f1
    b       branch_0x80235508

branch_0x80235504:
    fmr     f5, f2
branch_0x80235508:
    lfs     f0, -0x15bc(rtoc)
    stfs    f0, 0x4(r31)
    lwz     r0, 0xc(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x80235540
    stfs    f0, 0x0(r31)
    li      r3, -0x1
    li      r0, 0x0
    stfs    f0, 0x4(r31)
    stw     r3, 0x8(r31)
    stw     r0, 0xc(r31)
    stw     r0, 0x10(r31)
    stw     r0, 0x14(r31)
    stw     r0, 0x18(r31)
branch_0x80235540:
    lwz     r0, 0x18(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80235660
    lfs     f0, 0x0(r31)
    li      r6, 0x0
    li      r3, 0x0
    fadds   f0, f0, f31
    stfs    f0, 0x0(r31)
    lfs     f4, -0x15bc(rtoc)
    lfs     f3, -0x15b8(rtoc)
    b       branch_0x802355cc

branch_0x8023556c:
    lwz     r0, 0x4(r5)
    lfs     f2, 0x0(r31)
    add     r4, r0, r3
    lfs     f1, 0x0(r4)
    fcmpo   cr0, f2, f1
    ble-    branch_0x802355c4
    lfs     f0, 0x4(r4)
    fsubs   f2, f2, f1
    fsubs   f0, f0, f1
    fcmpo   cr0, f0, f4
    ble-    branch_0x802355a0
    fdivs   f6, f2, f0
    b       branch_0x802355a4

branch_0x802355a0:
    lfs     f6, -0x15b8(rtoc)
branch_0x802355a4:
    lwz     r0, 0x8(r5)
    fsubs   f2, f3, f6
    add     r4, r0, r3
    lfs     f0, 0x4(r4)
    lfs     f1, 0x0(r4)
    fmuls   f0, f6, f0
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x4(r31)
branch_0x802355c4:
    addi    r6, r6, 0x1
    addi    r3, r3, 0x4
branch_0x802355cc:
    lwz     r5, 0x18(r31)
    lwz     r4, 0x0(r5)
    lwz     r4, 0x0(r4)
    subi    r0, r4, 0x1
    cmpw    r6, r0
    blt+    branch_0x8023556c
    lwz     r3, 0x4(r5)
    slwi    r0, r4, 2
    lfs     f1, 0x0(r31)
    add     r3, r3, r0
    lfs     f0, -0x4(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80235660
    lwz     r0, 0xc(r31)
    cmpwi   r0, 0x1
    ble-    branch_0x80235624
    lfs     f0, -0x15bc(rtoc)
    stfs    f0, 0x0(r31)
    lwz     r3, 0xc(r31)
    subi    r0, r3, 0x1
    stw     r0, 0xc(r31)
    b       branch_0x80235660

branch_0x80235624:
    cmpwi   r0, 0x0
    bge-    branch_0x80235638
    lfs     f0, -0x15bc(rtoc)
    stfs    f0, 0x0(r31)
    b       branch_0x80235660

branch_0x80235638:
    lfs     f0, -0x15bc(rtoc)
    li      r3, -0x1
    li      r0, 0x0
    stfs    f0, 0x0(r31)
    stfs    f0, 0x4(r31)
    stw     r3, 0x8(r31)
    stw     r0, 0xc(r31)
    stw     r0, 0x10(r31)
    stw     r0, 0x14(r31)
    stw     r0, 0x18(r31)
branch_0x80235660:
    lfs     f0, 0x4(r31)
    fmuls   f0, f0, f5
    stfs    f0, 0x4(r31)
    lfs     f1, 0x4(r31)
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl __ct__16RumbleChannelMgrFv
__ct__16RumbleChannelMgrFv: # 0x80235688
    lfs     f0, -0x15bc(rtoc)
    li      r4, -0x1
    li      r0, 0x0
    stfs    f0, 0x0(r3)
    stfs    f0, 0x4(r3)
    stw     r4, 0x8(r3)
    stw     r0, 0xc(r3)
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    stw     r0, 0x18(r3)
    blr

