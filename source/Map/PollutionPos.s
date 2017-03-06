
.globl __ct__13TPollutionPosFv
__ct__13TPollutionPosFv: # 0x8019ed18
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
    lfs     f0, -0x4168(rtoc)
    stfs    f0, 0x10(r3)
    stfs    f0, 0x14(r3)
    stfs    f0, 0x18(r3)
    stw     r0, 0x1c(r3)
    stw     r0, 0x20(r3)
    blr


.globl init__13TPollutionPosFP15TPollutionLayerffPUcii
init__13TPollutionPosFP15TPollutionLayerffPUcii: # 0x8019ed48
    stw     r4, 0x20(r3)
    li      r4, 0x1
    stw     r5, 0x1c(r3)
    stfs    f1, 0x10(r3)
    stfs    f2, 0x14(r3)
    lfs     f1, -0x4164(rtoc)
    lfs     f0, 0x14(r3)
    fdivs   f0, f1, f0
    stfs    f0, 0x18(r3)
    stw     r6, 0x8(r3)
    stw     r7, 0xc(r3)
    lwz     r0, 0x8(r3)
    slw     r0, r4, r0
    stw     r0, 0x0(r3)
    lwz     r0, 0xc(r3)
    slw     r0, r4, r0
    stw     r0, 0x4(r3)
    blr


.globl worldToTexSize__13TPollutionPosCFf
worldToTexSize__13TPollutionPosCFf: # 0x8019ed90
    stwu    sp, -0x18(sp)
    lfs     f0, 0x18(r3)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r3, 0x14(sp)
    addi    sp, sp, 0x18
    blr


.globl worldToDepth__13TPollutionPosCFf
worldToDepth__13TPollutionPosCFf: # 0x8019edb0
    stwu    sp, -0x18(sp)
    lfs     f2, 0x10(r3)
    lfs     f0, -0x4160(rtoc)
    fsubs   f1, f1, f2
    fmuls   f1, f1, f0
    fctiwz  f0, f1
    stfd    f0, 0x10(sp)
    lwz     r3, 0x14(sp)
    addi    sp, sp, 0x18
    blr


.globl isProhibit__13TPollutionPosCFii
isProhibit__13TPollutionPosCFii: # 0x8019edd8
    cmpwi   r4, 0x0
    blt-    branch_0x8019ee00
    lwz     r0, 0x0(r3)
    cmpw    r0, r4
    ble-    branch_0x8019ee00
    cmpwi   r5, 0x0
    blt-    branch_0x8019ee00
    lwz     r0, 0x4(r3)
    cmpw    r0, r5
    bgt-    branch_0x8019ee08
branch_0x8019ee00:
    li      r3, 0x1
    blr

branch_0x8019ee08:
    lwz     r6, 0x8(r3)
    srawi   r7, r4, 3
    lwz     r8, 0x1c(r3)
    srawi   r3, r5, 2
    subi    r0, r6, 0x3
    slw     r0, r3, r0
    add     r0, r7, r0
    clrlwi  r3, r4, 29
    slwi    r0, r0, 5
    add     r0, r0, r3
    clrlslwi  r3, r5, 30, 3
    add     r0, r0, r8
    lbzx    r0, r3, r0
    cmpwi   r0, 0xff
    bge-    branch_0x8019ee4c
    li      r3, 0x0
    blr

branch_0x8019ee4c:
    li      r3, 0x1
    blr


.globl isSame__13TPollutionPosCFiif
isSame__13TPollutionPosCFiif: # 0x8019ee54
    cmpwi   r4, 0x0
    stwu    sp, -0x58(sp)
    blt-    branch_0x8019ee80
    lwz     r0, 0x0(r3)
    cmpw    r0, r4
    ble-    branch_0x8019ee80
    cmpwi   r5, 0x0
    blt-    branch_0x8019ee80
    lwz     r0, 0x4(r3)
    cmpw    r0, r5
    bgt-    branch_0x8019ee88
branch_0x8019ee80:
    li      r0, 0x0
    b       branch_0x8019ee8c

branch_0x8019ee88:
    li      r0, 0x1
branch_0x8019ee8c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8019ee9c
    li      r3, 0x0
    b       branch_0x8019ef20

branch_0x8019ee9c:
    lwz     r6, 0x8(r3)
    srawi   r8, r4, 3
    srawi   r7, r5, 2
    lwz     r9, 0x1c(r3)
    subi    r0, r6, 0x3
    slw     r0, r7, r0
    add     r0, r8, r0
    clrlwi  r4, r4, 29
    slwi    r0, r0, 5
    add     r0, r0, r4
    clrlslwi  r4, r5, 30, 3
    add     r0, r0, r9
    lbzx    r4, r4, r0
    cmpwi   r4, 0xff
    bge-    branch_0x8019ef1c
    lfs     f0, 0x10(r3)
    lwz     r3, 0x20(r3)
    fsubs   f1, f1, f0
    lfs     f0, -0x4160(rtoc)
    lwz     r5, 0x48(r3)
    fmuls   f1, f1, f0
    subf    r0, r5, r4
    fctiwz  f0, f1
    stfd    f0, 0x50(sp)
    lwz     r3, 0x54(sp)
    cmpw    r0, r3
    bgt-    branch_0x8019ef1c
    add     r0, r4, r5
    cmpw    r3, r0
    bgt-    branch_0x8019ef1c
    li      r3, 0x1
    b       branch_0x8019ef20

branch_0x8019ef1c:
    li      r3, 0x0
branch_0x8019ef20:
    addi    sp, sp, 0x58
    blr


.globl getDepthWorld__13TPollutionPosCFii
getDepthWorld__13TPollutionPosCFii: # 0x8019ef28
    stwu    sp, -0x38(sp)
    srawi   r8, r4, 3
    srawi   r7, r5, 2
    lwz     r6, 0x8(r3)
    clrlwi  r4, r4, 29
    lwz     r9, 0x1c(r3)
    subi    r0, r6, 0x3
    slw     r0, r7, r0
    add     r0, r8, r0
    slwi    r0, r0, 5
    add     r0, r0, r4
    clrlslwi  r4, r5, 30, 3
    add     r0, r0, r9
    lbzx    r0, r4, r0
    cmpwi   r0, 0xff
    bge-    branch_0x8019ef98
    xoris   r0, r0, 0x8000
    lfd     f2, -0x4158(rtoc)
    stw     r0, 0x34(sp)
    lis     r0, 0x4330
    lfs     f0, 0x14(r3)
    stw     r0, 0x30(sp)
    lfs     f3, 0x10(r3)
    lfd     f1, 0x30(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f1, f0
    fadds   f1, f3, f0
    b       branch_0x8019ef9c

branch_0x8019ef98:
    lfs     f1, -0x415c(rtoc)
branch_0x8019ef9c:
    addi    sp, sp, 0x38
    blr


.globl getEdgeDegree__13TPollutionPosCFii
getEdgeDegree__13TPollutionPosCFii: # 0x8019efa4
    stwu    sp, -0x38(sp)
    cmpwi   r4, 0x0
    stw     r31, 0x34(sp)
    blt-    branch_0x8019efd4
    lwz     r0, 0x0(r3)
    cmpw    r0, r4
    ble-    branch_0x8019efd4
    cmpwi   r5, 0x0
    blt-    branch_0x8019efd4
    lwz     r0, 0x4(r3)
    cmpw    r0, r5
    bgt-    branch_0x8019efdc
branch_0x8019efd4:
    li      r0, 0x0
    b       branch_0x8019efe0

branch_0x8019efdc:
    li      r0, 0x1
branch_0x8019efe0:
    clrlwi. r0, r0, 24
    bne-    branch_0x8019eff0
    li      r3, 0x0
    b       branch_0x8019f0ec

branch_0x8019eff0:
    li      r0, 0x3
    mtctr   r0
    li      r12, 0x0
    li      r31, -0x1
branch_0x8019f000:
    add     r0, r5, r31
    srawi   r10, r0, 2
    clrlslwi  r11, r0, 30, 3
    b       branch_0x8019f014


.incbin "./baserom/code/Text_0x80005600.bin", 0x199a10, 0x8019f014 - 0x8019f010
branch_0x8019f014:
    lwz     r7, 0x8(r3)
    subi    r9, r4, 0x1
    srawi   r8, r9, 3
    lwz     r6, 0x1c(r3)
    subi    r0, r7, 0x3
    slw     r0, r10, r0
    add     r0, r8, r0
    clrlwi  r9, r9, 29
    slwi    r0, r0, 5
    add     r0, r0, r9
    add     r0, r11, r0
    lbzx    r0, r6, r0
    cmplwi  r0, 0xff
    bne-    branch_0x8019f050
    addi    r12, r12, 0x1
branch_0x8019f050:
    li      r6, 0x0
    cmpwi   r6, 0x0
    bne-    branch_0x8019f064
    cmpwi   r31, 0x0
    beq-    branch_0x8019f0a4
branch_0x8019f064:
    lwz     r7, 0x8(r3)
    srawi   r8, r4, 3
    clrlwi  r9, r4, 29
    lwz     r6, 0x1c(r3)
    subi    r0, r7, 0x3
    slw     r0, r10, r0
    add     r0, r8, r0
    slwi    r0, r0, 5
    add     r0, r0, r9
    add     r0, r11, r0
    lbzx    r0, r6, r0
    cmplwi  r0, 0xff
    bne-    branch_0x8019f0a4
    addi    r12, r12, 0x1
    b       branch_0x8019f0a4


.incbin "./baserom/code/Text_0x80005600.bin", 0x199aa0, 0x8019f0a4 - 0x8019f0a0
branch_0x8019f0a4:
    lwz     r7, 0x8(r3)
    addi    r9, r4, 0x1
    srawi   r8, r9, 3
    lwz     r6, 0x1c(r3)
    subi    r0, r7, 0x3
    slw     r0, r10, r0
    add     r0, r8, r0
    clrlwi  r9, r9, 29
    slwi    r0, r0, 5
    add     r0, r0, r9
    add     r0, r11, r0
    lbzx    r0, r6, r0
    cmplwi  r0, 0xff
    bne-    branch_0x8019f0e0
    addi    r12, r12, 0x1
branch_0x8019f0e0:
    addi    r31, r31, 0x1
    bdnz+      branch_0x8019f000
    mr      r3, r12
branch_0x8019f0ec:
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    blr


.globl __sinit_PollutionPos_cpp
__sinit_PollutionPos_cpp: # 0x8019f0f8
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x78a0
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f140
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8019f140:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f170
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8019f170:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f1a0
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8019f1a0:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f1d0
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8019f1d0:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f200
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8019f200:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f230
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8019f230:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f260
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8019f260:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f290
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8019f290:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f2c0
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8019f2c0:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f2f0
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8019f2f0:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f320
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8019f320:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f350
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8019f350:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f380
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8019f380:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f3b0
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8019f3b0:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f3e0
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8019f3e0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

