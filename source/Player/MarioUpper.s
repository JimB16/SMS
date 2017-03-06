
.globl stateMachineUpper__6TMarioFv
stateMachineUpper__6TMarioFv: # 0x802622a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    lwz     r0, 0x380(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x80262474
    bge-    branch_0x802622e4
    cmpwi   r0, 0x1
    beq-    branch_0x80262384
    bge-    branch_0x802623e8
    cmpwi   r0, 0x0
    bge-    branch_0x802622f4
    b       branch_0x80262474

branch_0x802622e4:
    cmpwi   r0, 0x5
    beq-    branch_0x80262474
    bge-    branch_0x80262474
    b       branch_0x80262440

branch_0x802622f4:
    mr      r3, r31
    bl      checkPumpEnable__6TMarioFv
    cmpwi   r3, 0x0
    bne-    branch_0x8026231c
    lwz     r3, 0x3a8(r31)
    li      r0, 0x5
    lfs     f0, -0xd30(rtoc)
    lwz     r3, 0xc(r3)
    stfs    f0, 0x24(r3)
    stw     r0, 0x380(r31)
branch_0x8026231c:
    lwz     r3, 0x108(r31)
    lfs     f1, -0xd30(rtoc)
    lfs     f0, 0x1c(r3)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80262340
    li      r0, 0x1
    stw     r0, 0x380(r31)
    lhz     r0, 0x3084(r31)
    sth     r0, 0x37e(r31)
branch_0x80262340:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 14, 15
    beq-    branch_0x80262354
    li      r0, 0x1
    b       branch_0x80262358

branch_0x80262354:
    li      r0, 0x0
branch_0x80262358:
    clrlwi. r0, r0, 24
    bne-    branch_0x8026248c
    lwz     r3, 0x3e4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8026248c
    bl      isEmitting__9TWaterGunFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8026248c
    mr      r3, r31
    bl      emitSweatSometimes__6TMarioFv
    b       branch_0x8026248c

branch_0x80262384:
    mr      r3, r31
    bl      checkPumpEnable__6TMarioFv
    cmpwi   r3, 0x0
    bne-    branch_0x802623ac
    lwz     r3, 0x3a8(r31)
    li      r0, 0x5
    lfs     f0, -0xd30(rtoc)
    lwz     r3, 0xc(r3)
    stfs    f0, 0x24(r3)
    stw     r0, 0x380(r31)
branch_0x802623ac:
    lhz     r3, 0x37e(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802623c4
    subi    r0, r3, 0x1
    sth     r0, 0x37e(r31)
    b       branch_0x802623dc

branch_0x802623c4:
    lwz     r3, 0x3a8(r31)
    li      r0, 0x5
    lfs     f0, -0xd30(rtoc)
    lwz     r3, 0xc(r3)
    stfs    f0, 0x24(r3)
    stw     r0, 0x380(r31)
branch_0x802623dc:
    mr      r3, r31
    bl      checkPumping__6TMarioFv
    b       branch_0x8026248c

branch_0x802623e8:
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x387
    bne-    branch_0x80262400
    li      r0, 0x5
    stw     r0, 0x380(r31)
branch_0x80262400:
    lwz     r0, 0x6c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80262414
    li      r0, 0x5
    stw     r0, 0x380(r31)
branch_0x80262414:
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x440
    bne-    branch_0x8026248c
    lfs     f1, 0xb0(r31)
    lfs     f0, -0xd2c(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8026248c
    mr      r3, r31
    bl      emitSweatSometimes__6TMarioFv
    b       branch_0x8026248c

branch_0x80262440:
    lwz     r3, 0x3a8(r31)
    lwz     r3, 0xc(r3)
    lbz     r0, 0x19(r3)
    clrlwi. r0, r0, 30
    beq-    branch_0x8026245c
    li      r0, 0x1
    b       branch_0x80262460

branch_0x8026245c:
    li      r0, 0x0
branch_0x80262460:
    cmpwi   r0, 0x0
    beq-    branch_0x8026248c
    li      r0, 0x5
    stw     r0, 0x380(r31)
    b       branch_0x8026248c

branch_0x80262474:
    mr      r3, r31
    bl      checkPumpEnable__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8026248c
    mr      r3, r31
    bl      checkPumping__6TMarioFv
branch_0x8026248c:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl checkPumpEnable__6TMarioFv
checkPumpEnable__6TMarioFv: # 0x802624a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    lwz     r0, 0x3e4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80262644
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x802624d4
    li      r0, 0x1
    b       branch_0x802624d8

branch_0x802624d4:
    li      r0, 0x0
branch_0x802624d8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80262644
    lhz     r4, 0xfa(r31)
    lis     r3, 0x803e
    subi    r0, r3, 0x3a40
    slwi    r3, r4, 3
    add     r3, r0, r3
    bl      isPumpOK__15TMarioAnimeDataCFv
    cmpwi   r3, 0x0
    beq-    branch_0x80262644
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80262644
    lfs     f3, 0x368(r31)
    lfs     f0, -0xd30(rtoc)
    fcmpo   cr0, f3, f0
    ble-    branch_0x80262528
    li      r0, 0x1
    b       branch_0x8026252c

branch_0x80262528:
    li      r0, 0x0
branch_0x8026252c:
    cmpwi   r0, 0x0
    beq-    branch_0x80262564
    lha     r3, 0x2428(r31)
    lis     r0, 0x4330
    lfd     f2, -0xd28(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f0, 0x24c8(r31)
    stw     r3, 0x44(sp)
    stw     r0, 0x40(sp)
    lfd     f1, 0x40(sp)
    fsubs   f1, f1, f2
    fdivs   f1, f3, f1
    fcmpo   cr0, f1, f0
    bgt-    branch_0x80262644
branch_0x80262564:
    lwz     r0, 0x380(r31)
    cmplwi  r0, 0x4
    beq-    branch_0x80262644
    cmplwi  r0, 0x3
    beq-    branch_0x80262644
    cmplwi  r0, 0x2
    beq-    branch_0x80262644
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x88d
    bne-    branch_0x802625a0
    lwz     r3, 0x3e4(r31)
    bl      getCurrentNozzle__9TWaterGunCFv
    lbz     r0, 0x18(r3)
    cmplwi  r0, 0x1
    beq-    branch_0x80262644
branch_0x802625a0:
    lwz     r3, 0x3e4(r31)
    bl      getCurrentNozzle__9TWaterGunCFv
    lwz     r12, 0x364(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x1
    bne-    branch_0x802625d4
    lwz     r3, 0x3e4(r31)
    bl      getCurrentNozzle__9TWaterGunCFv
    lbz     r0, 0x385(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x80262644
branch_0x802625d4:
    lwz     r3, 0x3e4(r31)
    lfs     f0, -0xd30(rtoc)
    lfs     f1, 0x1d00(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802625f0
    li      r0, 0x1
    b       branch_0x802625f4

branch_0x802625f0:
    li      r0, 0x0
branch_0x802625f4:
    clrlwi. r0, r0, 24
    bne-    branch_0x80262644
    lfs     f0, -0xd30(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80262610
    li      r0, 0x1
    b       branch_0x80262614

branch_0x80262610:
    li      r0, 0x0
branch_0x80262614:
    clrlwi. r0, r0, 24
    bne-    branch_0x80262644
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x80262630
    li      r0, 0x1
    b       branch_0x80262634

branch_0x80262630:
    li      r0, 0x0
branch_0x80262634:
    clrlwi. r0, r0, 24
    bne-    branch_0x80262644
    li      r3, 0x1
    b       branch_0x80262658

branch_0x80262644:
    li      r0, 0x5
    stw     r0, 0x380(r31)
    li      r0, 0x0
    li      r3, 0x0
    sth     r0, 0x37e(r31)
branch_0x80262658:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl getNozzleKind__11TNozzleBaseCFv
getNozzleKind__11TNozzleBaseCFv: # 0x8026266c
    li      r3, 0x0
    blr


.globl checkPumping__6TMarioFv
checkPumping__6TMarioFv: # 0x80262674
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x108(r3)
    lfs     f0, -0xd30(rtoc)
    lfs     f1, 0x1c(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802626b8
    lwz     r0, 0x380(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802626b8
    li      r0, 0x0
    stw     r0, 0x380(r31)
    sth     r0, 0x37e(r31)
    b       branch_0x80262778

branch_0x802626b8:
    lwz     r0, -0x60d8(r13)
    cmplw   r0, r31
    bne-    branch_0x802626fc
    lwz     r3, -0x7118(r13)
    lwz     r4, 0x50(r3)
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x802626fc
    mr      r3, r31
    bl      checkPumpEnable__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802626fc
    li      r0, 0x1
    stw     r0, 0x380(r31)
    li      r0, 0x0
    sth     r0, 0x37e(r31)
    b       branch_0x80262778

branch_0x802626fc:
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x447
    bne-    branch_0x80262720
    li      r0, 0x1
    stw     r0, 0x380(r31)
    li      r0, 0x0
    sth     r0, 0x37e(r31)
    b       branch_0x80262778

branch_0x80262720:
    addis   r0, r3, 0xf400
    cmplwi  r0, 0x8220
    bne-    branch_0x8026274c
    lwz     r0, 0x380(r31)
    cmplwi  r0, 0x5
    bne-    branch_0x8026274c
    li      r0, 0x1
    stw     r0, 0x380(r31)
    li      r0, 0x0
    sth     r0, 0x37e(r31)
    b       branch_0x80262778

branch_0x8026274c:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x80262760
    li      r0, 0x1
    b       branch_0x80262764

branch_0x80262760:
    li      r0, 0x0
branch_0x80262764:
    clrlwi. r0, r0, 24
    beq-    branch_0x80262778
    li      r0, 0x0
    stw     r0, 0x380(r31)
    sth     r0, 0x37e(r31)
branch_0x80262778:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __sinit_MarioUpper_cpp
__sinit_MarioUpper_cpp: # 0x8026278c
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x44a8
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x802627d4
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x802627d4:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80262804
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80262804:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80262834
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80262834:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80262864
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80262864:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80262894
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80262894:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x802628c4
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x802628c4:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x802628f4
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x802628f4:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80262924
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80262924:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80262954
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80262954:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80262984
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80262984:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x802629b4
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x802629b4:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x802629e4
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x802629e4:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80262a14
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80262a14:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80262a44
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80262a44:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80262a74
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80262a74:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr
