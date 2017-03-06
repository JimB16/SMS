
.globl __ct__Q27JGadget20TVector_pointer_voidFRCQ27JGadget14TAllocator_Pv_
__ct__Q27JGadget20TVector_pointer_voidFRCQ27JGadget14TAllocator_Pv_: # 0x802effcc
    lbz     r0, 0x0(r4)
    li      r4, 0x0
    stb     r0, 0x0(r3)
    stw     r4, 0x4(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r4, 0xc(r3)
    lfs     f0, 0x350(rtoc)
    stfs    f0, 0x10(r3)
    stw     r4, 0x14(r3)
    blr


.globl DestroyElement___Q27JGadget38TVector_Pv_Q27JGadget14TAllocator_Pv__FPPvPPv
DestroyElement___Q27JGadget38TVector_Pv_Q27JGadget14TAllocator_Pv__FPPvPPv: # 0x802efff8
    b       branch_0x802f0000

branch_0x802efffc:
    addi    r4, r4, 0x4
branch_0x802f0000:
    cmplw   r4, r5
    bne+    branch_0x802efffc
    blr


.globl copy__Q23std14__copy_Pv_1_0_FPPvPPvPPv
copy__Q23std14__copy_Pv_1_0_FPPvPPvPPv: # 0x802f000c
    addi    r6, r4, 0x3
    subf    r6, r3, r6
    cmplw   r3, r4
    srwi    r6, r6, 2
    bge-    branch_0x802f0098
    srwi.   r0, r6, 3
    mtctr   r0
    beq-    branch_0x802f0080
branch_0x802f002c:
    lwz     r0, 0x0(r3)
    stw     r0, 0x0(r5)
    lwz     r0, 0x4(r3)
    stw     r0, 0x4(r5)
    lwz     r0, 0x8(r3)
    stw     r0, 0x8(r5)
    lwz     r0, 0xc(r3)
    stw     r0, 0xc(r5)
    lwz     r0, 0x10(r3)
    stw     r0, 0x10(r5)
    lwz     r0, 0x14(r3)
    stw     r0, 0x14(r5)
    lwz     r0, 0x18(r3)
    stw     r0, 0x18(r5)
    lwz     r0, 0x1c(r3)
    addi    r3, r3, 0x20
    stw     r0, 0x1c(r5)
    addi    r5, r5, 0x20
    bdnz+      branch_0x802f002c
    andi.   r6, r6, 0x7
    beq-    branch_0x802f0098
branch_0x802f0080:
    mtctr   r6
branch_0x802f0084:
    lwz     r0, 0x0(r3)
    addi    r3, r3, 0x4
    stw     r0, 0x0(r5)
    addi    r5, r5, 0x4
    bdnz+      branch_0x802f0084
branch_0x802f0098:
    mr      r3, r5
    blr


.globl uninitialized_fill_n_PPv_Ul_Pv___3stdFPPvUlRCPv
uninitialized_fill_n_PPv_Ul_Pv___3stdFPPvUlRCPv: # 0x802f00a0
    cmplwi  r4, 0x0
    mtctr   r4
    beqlr-    

branch_0x802f00ac:
    cmplwi  r3, 0x0
    beq-    branch_0x802f00bc
    lwz     r0, 0x0(r5)
    stw     r0, 0x0(r3)
branch_0x802f00bc:
    addi    r3, r3, 0x4
    bdnz+      branch_0x802f00ac
    blr


.globl InsertRaw__Q27JGadget38TVector_Pv_Q27JGadget14TAllocator_Pv__FPPvUl
InsertRaw__Q27JGadget38TVector_Pv_Q27JGadget14TAllocator_Pv__FPPvUl: # 0x802f00c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r27, 0x84(sp)
    mr.     r28, r5
    addi    r27, r3, 0x0
    addi    r29, r4, 0x0
    bne-    branch_0x802f00f0
    mr      r3, r4
    b       branch_0x802f03a8

branch_0x802f00f0:
    lwz     r5, 0x4(r27)
    cmplwi  r5, 0x0
    bne-    branch_0x802f0104
    li      r3, 0x0
    b       branch_0x802f0114

branch_0x802f0104:
    lwz     r0, 0x8(r27)
    subf    r0, r5, r0
    srawi   r3, r0, 2
    addze   r3, r3
branch_0x802f0114:
    lwz     r0, 0xc(r27)
    add     r3, r28, r3
    cmplw   r3, r0
    bgt-    branch_0x802f0270
    slwi    r7, r28, 2
    lwz     r6, 0x8(r27)
    add     r0, r29, r7
    cmplw   r0, r6
    mr      r8, r0
    bge-    branch_0x802f0218
    subf    r5, r7, r6
    addi    r9, r5, 0x0
    addi    r3, r6, 0x0
    b       branch_0x802f0164

branch_0x802f014c:
    cmplwi  r3, 0x0
    beq-    branch_0x802f015c
    lwz     r0, 0x0(r5)
    stw     r0, 0x0(r3)
branch_0x802f015c:
    addi    r3, r3, 0x4
    addi    r5, r5, 0x4
branch_0x802f0164:
    cmplw   r5, r6
    bne+    branch_0x802f014c
    mr      r5, r9
    lwz     r6, 0x8(r27)
    addi    r3, r5, 0x3
    subf    r3, r29, r3
    cmplw   r5, r29
    srwi    r3, r3, 2
    ble-    branch_0x802f01f0
    srwi.   r0, r3, 3
    mtctr   r0
    beq-    branch_0x802f01e0
branch_0x802f0194:
    lwz     r0, -0x4(r5)
    stw     r0, -0x4(r6)
    lwz     r0, -0x8(r5)
    stw     r0, -0x8(r6)
    lwz     r0, -0xc(r5)
    stw     r0, -0xc(r6)
    lwz     r0, -0x10(r5)
    stw     r0, -0x10(r6)
    lwz     r0, -0x14(r5)
    stw     r0, -0x14(r6)
    lwz     r0, -0x18(r5)
    stw     r0, -0x18(r6)
    lwz     r0, -0x1c(r5)
    stw     r0, -0x1c(r6)
    lwzu    r0, -0x20(r5)
    stwu    r0, -0x20(r6)
    bdnz+      branch_0x802f0194
    andi.   r3, r3, 0x7
    beq-    branch_0x802f01f0
branch_0x802f01e0:
    mtctr   r3
branch_0x802f01e4:
    lwzu    r0, -0x4(r5)
    stwu    r0, -0x4(r6)
    bdnz+      branch_0x802f01e4
branch_0x802f01f0:
    mr      r3, r29
    b       branch_0x802f01fc

branch_0x802f01f8:
    addi    r3, r3, 0x4
branch_0x802f01fc:
    cmplw   r3, r8
    bne+    branch_0x802f01f8
    lwz     r0, 0x8(r27)
    addi    r3, r4, 0x0
    add     r0, r0, r7
    stw     r0, 0x8(r27)
    b       branch_0x802f03a8

branch_0x802f0218:
    addi    r5, r8, 0x0
    addi    r3, r29, 0x0
    b       branch_0x802f023c

branch_0x802f0224:
    cmplwi  r5, 0x0
    beq-    branch_0x802f0234
    lwz     r0, 0x0(r3)
    stw     r0, 0x0(r5)
branch_0x802f0234:
    addi    r5, r5, 0x4
    addi    r3, r3, 0x4
branch_0x802f023c:
    cmplw   r3, r6
    bne+    branch_0x802f0224
    lwz     r0, 0x8(r27)
    mr      r3, r29
    b       branch_0x802f0254

branch_0x802f0250:
    addi    r3, r3, 0x4
branch_0x802f0254:
    cmplw   r3, r0
    bne+    branch_0x802f0250
    lwz     r0, 0x8(r27)
    addi    r3, r4, 0x0
    add     r0, r0, r7
    stw     r0, 0x8(r27)
    b       branch_0x802f03a8

branch_0x802f0270:
    cmplwi  r5, 0x0
    bne-    branch_0x802f0280
    li      r3, 0x0
    b       branch_0x802f0290

branch_0x802f0280:
    lwz     r0, 0x8(r27)
    subf    r0, r5, r0
    srawi   r3, r0, 2
    addze   r3, r3
branch_0x802f0290:
    stw     r3, 0x7c(sp)
    lis     r0, 0x4330
    lfd     f2, 0x358(rtoc)
    add     r30, r3, r28
    stw     r0, 0x78(sp)
    lfs     f0, 0x10(r27)
    lfd     f1, 0x78(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f1, f0
    bl      __cvt_fp2unsigned
    lwz     r0, 0x14(r27)
    add     r0, r0, r3
    cmplw   r30, r0
    ble-    branch_0x802f02cc
    b       branch_0x802f02d0

branch_0x802f02cc:
    mr      r30, r0
branch_0x802f02d0:
    slwi    r3, r30, 2
    bl      __nw__FUl
    cmplwi  r3, 0x0
    bne-    branch_0x802f02e8
    lwz     r3, 0x8(r27)
    b       branch_0x802f03a8

branch_0x802f02e8:
    stw     r27, 0x6c(sp)
    mr      r31, r3
    stw     r3, 0x70(sp)
    lwz     r4, 0x4(r27)
    b       branch_0x802f0314

branch_0x802f02fc:
    cmplwi  r31, 0x0
    beq-    branch_0x802f030c
    lwz     r0, 0x0(r4)
    stw     r0, 0x0(r31)
branch_0x802f030c:
    addi    r31, r31, 0x4
    addi    r4, r4, 0x4
branch_0x802f0314:
    cmplw   r4, r29
    bne+    branch_0x802f02fc
    slwi    r0, r28, 2
    lwz     r5, 0x8(r27)
    addi    r4, r29, 0x0
    add     r6, r31, r0
    b       branch_0x802f0348

branch_0x802f0330:
    cmplwi  r6, 0x0
    beq-    branch_0x802f0340
    lwz     r0, 0x0(r4)
    stw     r0, 0x0(r6)
branch_0x802f0340:
    addi    r6, r6, 0x4
    addi    r4, r4, 0x4
branch_0x802f0348:
    cmplw   r4, r5
    bne+    branch_0x802f0330
    lwz     r5, 0x4(r27)
    lwz     r0, 0x8(r27)
    mr      r4, r5
    b       branch_0x802f0364

branch_0x802f0360:
    addi    r4, r4, 0x4
branch_0x802f0364:
    cmplw   r4, r0
    bne+    branch_0x802f0360
    stw     r5, 0x70(sp)
    lwz     r4, 0x4(r27)
    lwz     r0, 0x8(r27)
    subf    r0, r4, r0
    srawi   r0, r0, 2
    addze   r0, r0
    add     r0, r28, r0
    slwi    r0, r0, 2
    add     r0, r3, r0
    stw     r0, 0x8(r27)
    stw     r3, 0x4(r27)
    stw     r30, 0xc(r27)
    lwz     r3, 0x70(sp)
    bl      __dl__FPv
    mr      r3, r31
branch_0x802f03a8:
    lmw     r27, 0x84(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl __dt__Q27JGadget20TVector_pointer_voidFv
__dt__Q27JGadget20TVector_pointer_voidFv: # 0x802f03bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802f0408
    beq-    branch_0x802f03f8
    lwz     r5, 0x8(r30)
    mr      r3, r30
    lwz     r4, 0x4(r30)
    bl      erase__Q27JGadget38TVector_Pv_Q27JGadget14TAllocator_Pv__FPPvPPv
    lwz     r3, 0x4(r30)
    bl      __dl__FPv
branch_0x802f03f8:
    extsh.  r0, r31
    ble-    branch_0x802f0408
    mr      r3, r30
    bl      __dl__FPv
branch_0x802f0408:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl erase__Q27JGadget38TVector_Pv_Q27JGadget14TAllocator_Pv__FPPvPPv
erase__Q27JGadget38TVector_Pv_Q27JGadget14TAllocator_Pv__FPPvPPv: # 0x802f0424
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    addi    r0, r31, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    lwz     r4, 0x8(r3)
    addi    r3, r5, 0x0
    mr      r5, r0
    bl      copy__Q23std14__copy_Pv_1_0_FPPvPPvPPv
    lwz     r0, 0x8(r30)
    mr      r4, r3
    b       branch_0x802f0464

branch_0x802f0460:
    addi    r4, r4, 0x4
branch_0x802f0464:
    cmplw   r4, r0
    bne+    branch_0x802f0460
    stw     r3, 0x8(r30)
    mr      r3, r31
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl insert__Q27JGadget20TVector_pointer_voidFPPvRCPv
insert__Q27JGadget20TVector_pointer_voidFPPvRCPv: # 0x802f048c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    li      r5, 0x1
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lwz     r0, 0x4(r3)
    subf    r0, r0, r4
    srawi   r31, r0, 2
    addze   r31, r31
    bl      InsertRaw__Q27JGadget38TVector_Pv_Q27JGadget14TAllocator_Pv__FPPvUl
    lwz     r0, 0x8(r29)
    cmplw   r3, r0
    beq-    branch_0x802f04dc
    addi    r5, r30, 0x0
    li      r4, 0x1
    bl      uninitialized_fill_n_PPv_Ul_Pv___3stdFPPvUlRCPv
branch_0x802f04dc:
    lwz     r3, 0x4(r29)
    slwi    r0, r31, 2
    add     r3, r3, r0
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl reserve__Q27JGadget20TVector_pointer_voidFUl
reserve__Q27JGadget20TVector_pointer_voidFUl: # 0x802f0504
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x34(sp)
    mr      r29, r3
    lwz     r0, 0xc(r3)
    cmplw   r30, r0
    ble-    branch_0x802f05c0
    slwi    r3, r30, 2
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x802f05c0
    stw     r29, 0x24(sp)
    mr      r5, r31
    stw     r31, 0x28(sp)
    lwz     r4, 0x8(r29)
    lwz     r3, 0x4(r29)
    b       branch_0x802f0570

branch_0x802f0558:
    cmplwi  r5, 0x0
    beq-    branch_0x802f0568
    lwz     r0, 0x0(r3)
    stw     r0, 0x0(r5)
branch_0x802f0568:
    addi    r5, r5, 0x4
    addi    r3, r3, 0x4
branch_0x802f0570:
    cmplw   r3, r4
    bne+    branch_0x802f0558
    lwz     r4, 0x4(r29)
    mr      r3, r29
    lwz     r5, 0x8(r29)
    bl      DestroyElement___Q27JGadget38TVector_Pv_Q27JGadget14TAllocator_Pv__FPPvPPv
    lwz     r0, 0x4(r29)
    stw     r0, 0x28(sp)
    lwz     r3, 0x4(r29)
    lwz     r0, 0x8(r29)
    subf    r0, r3, r0
    srawi   r0, r0, 2
    addze   r0, r0
    slwi    r0, r0, 2
    add     r0, r31, r0
    stw     r0, 0x8(r29)
    stw     r31, 0x4(r29)
    stw     r30, 0xc(r29)
    lwz     r3, 0x28(sp)
    bl      __dl__FPv
branch_0x802f05c0:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr

