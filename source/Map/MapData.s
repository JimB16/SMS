
.globl __ct__12TBGCheckDataFv
__ct__12TBGCheckDataFv: # 0x801a3038
    li      r0, 0x0
    sth     r0, 0x0(r3)
    sth     r0, 0x2(r3)
    sth     r0, 0x4(r3)
    lfs     f0, -0x40c0(rtoc)
    stfs    f0, 0x8(r3)
    stfs    f0, 0xc(r3)
    stfs    f0, 0x40(r3)
    stw     r0, 0x44(r3)
    stfs    f0, 0x18(r3)
    stfs    f0, 0x14(r3)
    stfs    f0, 0x10(r3)
    stfs    f0, 0x24(r3)
    stfs    f0, 0x20(r3)
    stfs    f0, 0x1c(r3)
    stfs    f0, 0x30(r3)
    stfs    f0, 0x2c(r3)
    stfs    f0, 0x28(r3)
    stfs    f0, 0x3c(r3)
    stfs    f0, 0x38(r3)
    stfs    f0, 0x34(r3)
    blr


.globl getPlaneType__12TBGCheckDataFv
getPlaneType__12TBGCheckDataFv: # 0x801a3090
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x801
    bne-    branch_0x801a30a4
    li      r0, 0x1
    b       branch_0x801a30a8

branch_0x801a30a4:
    li      r0, 0x0
branch_0x801a30a8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801a30b8
    li      r3, 0x0
    blr

branch_0x801a30b8:
    lfs     f1, 0x38(r3)
    lfs     f0, -0x40bc(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801a30d0
    li      r3, 0x0
    blr

branch_0x801a30d0:
    lfs     f0, -0x40b8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801a30e4
    li      r3, 0x1
    blr

branch_0x801a30e4:
    lfs     f1, 0x34(r3)
    lfs     f0, -0x40b4(rtoc)
    fcmpo   cr0, f1, f0
    blt-    branch_0x801a3100
    lfs     f0, -0x40b0(rtoc)
    fcmpo   cr0, f0, f1
    bge-    branch_0x801a3110
branch_0x801a3100:
    lhz     r0, 0x4(r3)
    ori     r0, r0, 0x8
    sth     r0, 0x4(r3)
    b       branch_0x801a311c

branch_0x801a3110:
    lhz     r0, 0x4(r3)
    rlwinm  r0, r0, 0, 29, 27
    sth     r0, 0x4(r3)
branch_0x801a311c:
    li      r3, 0x2
    blr


.globl getActiveJumpPower__12TBGCheckDataCFv
getActiveJumpPower__12TBGCheckDataCFv: # 0x801a3124
    stwu    sp, -0x28(sp)
    lwz     r4, 0x44(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x801a3160
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0xc000
    cmplwi  r0, 0x39
    bne-    branch_0x801a314c
    li      r0, 0x1
    b       branch_0x801a3150

branch_0x801a314c:
    li      r0, 0x0
branch_0x801a3150:
    clrlwi. r0, r0, 24
    beq-    branch_0x801a3160
    lfs     f1, -0x77e8(r13)
    b       branch_0x801a3180

branch_0x801a3160:
    lha     r3, 0x2(r3)
    lis     r0, 0x4330
    lfd     f1, -0x40a8(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x24(sp)
    stw     r0, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f1, f0, f1
branch_0x801a3180:
    addi    sp, sp, 0x28
    blr


.globl __sinit_MapData_cpp
__sinit_MapData_cpp: # 0x801a3188
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x7320
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801a31d0
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801a31d0:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801a3200
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801a3200:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801a3230
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801a3230:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801a3260
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801a3260:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801a3290
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801a3290:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801a32c0
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801a32c0:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801a32f0
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801a32f0:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801a3320
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801a3320:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801a3350
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801a3350:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801a3380
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801a3380:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801a33b0
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801a33b0:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801a33e0
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801a33e0:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801a3410
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801a3410:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801a3440
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801a3440:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801a3470
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801a3470:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr
