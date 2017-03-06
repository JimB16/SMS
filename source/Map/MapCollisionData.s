
.globl __ct__17TMapCollisionDataFv
__ct__17TMapCollisionDataFv: # 0x8018cfc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    li      r31, 0x0
    addi    r4, sp, 0x24
    stw     r30, 0x38(sp)
    addi    r5, sp, 0x18
    addi    r6, sp, 0xc
    stw     r29, 0x34(sp)
    addi    r29, r3, 0x0
    lis     r3, 0x803f
    lfs     f0, -0x4418(rtoc)
    addi    r30, r3, 0x7b98
    addi    r3, r30, 0x0
    stfs    f0, 0x0(r29)
    stfs    f0, 0x4(r29)
    stw     r31, 0x8(r29)
    stw     r31, 0xc(r29)
    stw     r31, 0x10(r29)
    stw     r31, 0x14(r29)
    stw     r31, 0x18(r29)
    stw     r31, 0x1c(r29)
    stw     r31, 0x20(r29)
    stw     r31, 0x24(r29)
    stw     r31, 0x28(r29)
    stw     r31, 0x2c(r29)
    stw     r31, 0x30(r29)
    stw     r31, 0x34(r29)
    stw     r31, 0x38(r29)
    stw     r31, 0x3c(r29)
    sth     r31, 0x40(r29)
    sth     r31, 0x242(r29)
    stw     r31, 0x244(r29)
    lfs     f1, -0x4414(rtoc)
    lfs     f0, -0x4410(rtoc)
    stfs    f1, 0x24(sp)
    stfs    f1, 0x18(sp)
    stfs    f0, 0xc(sp)
    stfs    f1, 0x28(sp)
    stfs    f1, 0x1c(sp)
    stfs    f1, 0x10(sp)
    stfs    f1, 0x2c(sp)
    stfs    f0, 0x20(sp)
    stfs    f0, 0x14(sp)
    bl      setVertex__12TBGCheckDataFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    sth     r31, 0x0(r30)
    mr      r3, r29
    lhz     r0, 0x4(r30)
    ori     r0, r0, 0x10
    sth     r0, 0x4(r30)
    stw     r29, -0x6320(r13)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl init__17TMapCollisionDataFR20JSUMemoryInputStream
init__17TMapCollisionDataFR20JSUMemoryInputStream: # 0x8018d0b4
    mflr    r0
    li      r5, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    addi    r29, r4, 0x0
    addi    r3, r29, 0x0
    addi    r4, sp, 0x40
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x40(sp)
    addi    r3, r29, 0x0
    addi    r4, sp, 0x40
    stw     r0, 0x8(r31)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x40(sp)
    addi    r3, r29, 0x0
    addi    r4, sp, 0x40
    stw     r0, 0xc(r31)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x40(sp)
    addi    r3, r29, 0x0
    addi    r4, sp, 0x40
    stw     r0, 0x1c(r31)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x40(sp)
    addi    r3, r29, 0x0
    addi    r4, sp, 0x40
    stw     r0, 0x20(r31)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x40(sp)
    lis     r3, 0x4330
    stw     r0, 0x24(r31)
    lwz     r0, 0x8(r31)
    lfd     f1, -0x4408(rtoc)
    srawi   r0, r0, 1
    lfs     f2, -0x440c(rtoc)
    addze   r0, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x54(sp)
    stw     r3, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x0(r31)
    lwz     r0, 0xc(r31)
    srawi   r0, r0, 1
    addze   r0, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x4c(sp)
    stw     r3, 0x48(sp)
    lfd     f0, 0x48(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x4(r31)
    lwz     r3, 0x8(r31)
    lwz     r0, 0xc(r31)
    mullw   r0, r3, r0
    stw     r0, 0x10(r31)
    lwz     r29, 0x10(r31)
    mulli   r3, r29, 0x24
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x8019
    subi    r30, r4, 0x2b24
    addi    r4, r30, 0x0
    addi    r7, r29, 0x0
    li      r5, 0x0
    li      r6, 0x24
    bl      __construct_new_array
    stw     r3, 0x14(r31)
    lwz     r29, 0x10(r31)
    mulli   r3, r29, 0x24
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    addi    r4, r30, 0x0
    addi    r7, r29, 0x0
    li      r5, 0x0
    li      r6, 0x24
    bl      __construct_new_array
    stw     r3, 0x18(r31)
    lwz     r29, 0x1c(r31)
    mulli   r3, r29, 0x48
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x801a
    addi    r4, r4, 0x3038
    addi    r7, r29, 0x0
    li      r5, 0x0
    li      r6, 0x48
    bl      __construct_new_array
    stw     r3, 0x28(r31)
    lwz     r29, 0x20(r31)
    mulli   r3, r29, 0xc
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x8019
    subi    r4, r4, 0x2a70
    addi    r7, r29, 0x0
    li      r5, 0x0
    li      r6, 0xc
    bl      __construct_new_array
    stw     r3, 0x2c(r31)
    lwz     r29, 0x24(r31)
    mulli   r3, r29, 0x14
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x8019
    subi    r4, r4, 0x2aa4
    addi    r7, r29, 0x0
    li      r5, 0x0
    li      r6, 0x14
    bl      __construct_new_array
    stw     r3, 0x30(r31)
    li      r4, 0x0
    lwz     r5, 0x10(r31)
    lwz     r6, 0x14(r31)
    cmpwi   r5, 0x0
    addi    r3, r5, 0x0
    beq-    branch_0x8018d340
    srwi.   r0, r3, 3
    mtctr   r0
    beq-    branch_0x8018d328
branch_0x8018d2b8:
    stw     r4, 0x4(r6)
    stw     r4, 0x10(r6)
    stw     r4, 0x1c(r6)
    stw     r4, 0x28(r6)
    stw     r4, 0x34(r6)
    stw     r4, 0x40(r6)
    stw     r4, 0x4c(r6)
    stw     r4, 0x58(r6)
    stw     r4, 0x64(r6)
    stw     r4, 0x70(r6)
    stw     r4, 0x7c(r6)
    stw     r4, 0x88(r6)
    stw     r4, 0x94(r6)
    stw     r4, 0xa0(r6)
    stw     r4, 0xac(r6)
    stw     r4, 0xb8(r6)
    stw     r4, 0xc4(r6)
    stw     r4, 0xd0(r6)
    stw     r4, 0xdc(r6)
    stw     r4, 0xe8(r6)
    stw     r4, 0xf4(r6)
    stw     r4, 0x100(r6)
    stw     r4, 0x10c(r6)
    stw     r4, 0x118(r6)
    addi    r6, r6, 0x120
    bdnz+      branch_0x8018d2b8
    andi.   r3, r3, 0x7
    beq-    branch_0x8018d340
branch_0x8018d328:
    mtctr   r3
branch_0x8018d32c:
    stw     r4, 0x4(r6)
    stw     r4, 0x10(r6)
    stw     r4, 0x1c(r6)
    addi    r6, r6, 0x24
    bdnz+      branch_0x8018d32c
branch_0x8018d340:
    li      r30, 0x0
    stw     r30, 0x34(r31)
    li      r4, 0x0
    stw     r30, 0x38(r31)
    sth     r30, 0x40(r31)
    lwz     r3, 0x20(r31)
    subi    r0, r3, 0x1
    stw     r0, 0x3c(r31)
    lwz     r0, 0x10(r31)
    lwz     r3, 0x18(r31)
    mulli   r5, r0, 0x24
    bl      memset
    li      r0, 0x4
    mtctr   r0
    li      r0, 0x270f
branch_0x8018d37c:
    add     r3, r31, r30
    sth     r0, 0x42(r3)
    addi    r30, r30, 0x10
    sth     r0, 0x44(r3)
    sth     r0, 0x46(r3)
    sth     r0, 0x48(r3)
    sth     r0, 0x4a(r3)
    sth     r0, 0x4c(r3)
    sth     r0, 0x4e(r3)
    sth     r0, 0x50(r3)
    add     r3, r31, r30
    addi    r30, r30, 0x10
    sth     r0, 0x42(r3)
    sth     r0, 0x44(r3)
    sth     r0, 0x46(r3)
    sth     r0, 0x48(r3)
    sth     r0, 0x4a(r3)
    sth     r0, 0x4c(r3)
    sth     r0, 0x4e(r3)
    sth     r0, 0x50(r3)
    add     r3, r31, r30
    addi    r30, r30, 0x10
    sth     r0, 0x42(r3)
    sth     r0, 0x44(r3)
    sth     r0, 0x46(r3)
    sth     r0, 0x48(r3)
    sth     r0, 0x4a(r3)
    sth     r0, 0x4c(r3)
    sth     r0, 0x4e(r3)
    sth     r0, 0x50(r3)
    add     r3, r31, r30
    addi    r30, r30, 0x10
    sth     r0, 0x42(r3)
    sth     r0, 0x44(r3)
    sth     r0, 0x46(r3)
    sth     r0, 0x48(r3)
    sth     r0, 0x4a(r3)
    sth     r0, 0x4c(r3)
    sth     r0, 0x4e(r3)
    sth     r0, 0x50(r3)
    add     r3, r31, r30
    addi    r30, r30, 0x10
    sth     r0, 0x42(r3)
    sth     r0, 0x44(r3)
    sth     r0, 0x46(r3)
    sth     r0, 0x48(r3)
    sth     r0, 0x4a(r3)
    sth     r0, 0x4c(r3)
    sth     r0, 0x4e(r3)
    sth     r0, 0x50(r3)
    add     r3, r31, r30
    addi    r30, r30, 0x10
    sth     r0, 0x42(r3)
    sth     r0, 0x44(r3)
    sth     r0, 0x46(r3)
    sth     r0, 0x48(r3)
    sth     r0, 0x4a(r3)
    sth     r0, 0x4c(r3)
    sth     r0, 0x4e(r3)
    sth     r0, 0x50(r3)
    add     r3, r31, r30
    addi    r30, r30, 0x10
    sth     r0, 0x42(r3)
    sth     r0, 0x44(r3)
    sth     r0, 0x46(r3)
    sth     r0, 0x48(r3)
    sth     r0, 0x4a(r3)
    sth     r0, 0x4c(r3)
    sth     r0, 0x4e(r3)
    sth     r0, 0x50(r3)
    add     r3, r31, r30
    addi    r30, r30, 0x10
    sth     r0, 0x42(r3)
    sth     r0, 0x44(r3)
    sth     r0, 0x46(r3)
    sth     r0, 0x48(r3)
    sth     r0, 0x4a(r3)
    sth     r0, 0x4c(r3)
    sth     r0, 0x4e(r3)
    sth     r0, 0x50(r3)
    bdnz+      branch_0x8018d37c
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl __ct__16TBGCheckListRootFv
__ct__16TBGCheckListRootFv: # 0x8018d4dc
    mflr    r0
    lis     r4, 0x8019
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x2a70
    li      r5, 0x0
    stwu    sp, -0x18(sp)
    li      r6, 0xc
    li      r7, 0x3
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    bl      __construct_array
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMoveCollision__17TMapCollisionDataFv
initMoveCollision__17TMapCollisionDataFv: # 0x8018d520
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x20(r3)
    subi    r0, r5, 0x1
    stw     r0, 0x3c(r3)
    lwz     r0, 0x10(r3)
    lwz     r3, 0x18(r3)
    mulli   r5, r0, 0x24
    bl      memset
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__16TBGCheckListWarpFv
__ct__16TBGCheckListWarpFv: # 0x8018d55c
    lis     r4, 0x803c
    addi    r0, r4, 0x16cc
    stw     r0, 0x0(r3)
    li      r5, 0x0
    lis     r4, 0x803c
    stw     r5, 0x4(r3)
    addi    r0, r4, 0x16c0
    stw     r5, 0x8(r3)
    stw     r0, 0x0(r3)
    stw     r5, 0xc(r3)
    sth     r5, 0x10(r3)
    sth     r5, 0x12(r3)
    blr


.globl __ct__12TBGCheckListFv
__ct__12TBGCheckListFv: # 0x8018d590
    lis     r4, 0x803c
    addi    r0, r4, 0x16cc
    stw     r0, 0x0(r3)
    li      r0, 0x0
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    blr


.globl setPreNode__16TBGCheckListWarpFP12TBGCheckList
setPreNode__16TBGCheckListWarpFP12TBGCheckList: # 0x8018d5ac
    stw     r4, 0xc(r3)
    blr


.globl setPreNode__12TBGCheckListFP12TBGCheckList
setPreNode__12TBGCheckListFP12TBGCheckList: # 0x8018d5b4
    blr


.globl __sinit_MapCollisionData_cpp
__sinit_MapCollisionData_cpp: # 0x8018d5b8
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x7b98
    addi    r3, r31, 0x0
    bl      __ct__12TBGCheckDataFv
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8018d608
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8018d608:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8018d638
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8018d638:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8018d668
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8018d668:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8018d698
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8018d698:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8018d6c8
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8018d6c8:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8018d6f8
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8018d6f8:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8018d728
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8018d728:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8018d758
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8018d758:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8018d788
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8018d788:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8018d7b8
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8018d7b8:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8018d7e8
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8018d7e8:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8018d818
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8018d818:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8018d848
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8018d848:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8018d878
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8018d878:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8018d8a8
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8018d8a8:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

