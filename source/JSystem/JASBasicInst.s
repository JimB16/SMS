
.globl __ct__Q28JASystem10TBasicInstFv
__ct__Q28JASystem10TBasicInstFv: # 0x8030e43c
    lis     r4, 0x803e
    addi    r0, r4, 0x2670
    lis     r4, 0x803e
    stw     r0, 0x0(r3)
    addi    r0, r4, 0x2658
    stw     r0, 0x0(r3)
    li      r0, 0x0
    lfs     f0, 0x628(rtoc)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    stw     r0, 0xc(r3)
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    stw     r0, 0x18(r3)
    stw     r0, 0x1c(r3)
    stw     r0, 0x20(r3)
    blr


.globl __dt__Q28JASystem5TInstFv
__dt__Q28JASystem5TInstFv: # 0x8030e480
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8030e4b4
    lis     r3, 0x803e
    addi    r3, r3, 0x2670
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x8030e4b4
    mr      r3, r31
    bl      __dl__FPv
branch_0x8030e4b4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__Q28JASystem10TBasicInstFv
__dt__Q28JASystem10TBasicInstFv: # 0x8030e4cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8030e53c
    lis     r3, 0x803e
    addi    r0, r3, 0x2658
    stw     r0, 0x0(r30)
    lis     r3, 0x8031
    subi    r4, r3, 0x16f0
    lwz     r3, 0x20(r30)
    bl      __destroy_new_array
    lwz     r3, 0xc(r30)
    bl      __dla__FPv
    lwz     r3, 0x14(r30)
    bl      __dla__FPv
    cmplwi  r30, 0x0
    beq-    branch_0x8030e52c
    lis     r3, 0x803e
    addi    r0, r3, 0x2670
    stw     r0, 0x0(r30)
branch_0x8030e52c:
    extsh.  r0, r31
    ble-    branch_0x8030e53c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8030e53c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getParam__Q28JASystem10TBasicInstCFiiPQ28JASystem10TInstParam
getParam__Q28JASystem10TBasicInstCFiiPQ28JASystem10TInstParam: # 0x8030e558
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r25, 0x24(sp)
    li      r27, 0x0
    addi    r31, r6, 0x0
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    mr      r30, r5
    li      r26, 0x0
    stb     r27, 0x0(r6)
    stb     r27, 0x38(r6)
    lwz     r0, 0x14(r3)
    stw     r0, 0x8(r6)
    lwz     r0, 0x18(r3)
    stw     r0, 0xc(r6)
    lfs     f1, 0x10(r6)
    lfs     f0, 0x4(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x10(r6)
    lfs     f1, 0x14(r6)
    lfs     f0, 0x8(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x14(r6)
    b       branch_0x8030e658

branch_0x8030e5bc:
    lwz     r3, 0xc(r28)
    lwzx    r0, r3, r27
    cmplwi  r0, 0x0
    mr      r25, r0
    beq-    branch_0x8030e650
    mr      r3, r25
    lwz     r12, 0x0(r25)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x4(r25)
    cmpwi   r0, 0x2
    beq-    branch_0x8030e63c
    bge-    branch_0x8030e60c
    cmpwi   r0, 0x0
    beq-    branch_0x8030e61c
    bge-    branch_0x8030e62c
    b       branch_0x8030e650

branch_0x8030e60c:
    cmpwi   r0, 0x4
    beq-    branch_0x8030e64c
    bge-    branch_0x8030e650
    b       branch_0x8030e644

branch_0x8030e61c:
    lfs     f0, 0x18(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x18(r31)
    b       branch_0x8030e650

branch_0x8030e62c:
    lfs     f0, 0x1c(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c(r31)
    b       branch_0x8030e650

branch_0x8030e63c:
    stfs    f1, 0x2c(r31)
    b       branch_0x8030e650

branch_0x8030e644:
    stfs    f1, 0x30(r31)
    b       branch_0x8030e650

branch_0x8030e64c:
    stfs    f1, 0x34(r31)
branch_0x8030e650:
    addi    r26, r26, 0x1
    addi    r27, r27, 0x4
branch_0x8030e658:
    lwz     r0, 0x10(r28)
    cmplw   r26, r0
    blt+    branch_0x8030e5bc
    lwz     r0, 0x1c(r28)
    li      r25, 0x0
    li      r5, 0x0
    cmplwi  r0, 0x0
    mtctr   r0
    li      r3, 0x0
    ble-    branch_0x8030e6ac
branch_0x8030e680:
    lwz     r0, 0x20(r28)
    add     r4, r0, r3
    lwz     r0, 0x0(r4)
    cmpw    r29, r0
    bgt-    branch_0x8030e6a0
    stw     r5, 0x3c(r31)
    mr      r25, r4
    b       branch_0x8030e6ac

branch_0x8030e6a0:
    addi    r5, r5, 0x1
    addi    r3, r3, 0xc
    bdnz+      branch_0x8030e680
branch_0x8030e6ac:
    cmplwi  r25, 0x0
    bne-    branch_0x8030e6bc
    li      r3, 0x0
    b       branch_0x8030e720

branch_0x8030e6bc:
    li      r26, 0x0
    b       branch_0x8030e710

branch_0x8030e6c4:
    addi    r3, r25, 0x0
    addi    r4, r26, 0x0
    bl      getVeloRegion__Q38JASystem10TBasicInst7TKeymapCFi
    lwz     r0, 0x0(r3)
    cmpw    r30, r0
    bgt-    branch_0x8030e70c
    lfs     f1, 0x10(r31)
    lfs     f0, 0x8(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0xc(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r0, 0x4(r3)
    li      r3, 0x1
    stw     r0, 0x4(r31)
    b       branch_0x8030e720

branch_0x8030e70c:
    addi    r26, r26, 0x1
branch_0x8030e710:
    lwz     r0, 0x4(r25)
    cmplw   r26, r0
    blt+    branch_0x8030e6c4
    li      r3, 0x0
branch_0x8030e720:
    lmw     r25, 0x24(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl getKeymapIndex__Q28JASystem10TBasicInstCFi
getKeymapIndex__Q28JASystem10TBasicInstCFi: # 0x8030e734
    mr      r3, r4
    blr


.globl setKeyRegionCount__Q28JASystem10TBasicInstFUl
setKeyRegionCount__Q28JASystem10TBasicInstFUl: # 0x8030e73c
    mflr    r0
    lis     r5, 0x8031
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    subi    r31, r5, 0x16f0
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    addi    r4, r31, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    lwz     r3, 0x20(r3)
    bl      __destroy_new_array
    bl      getCurrentHeap__Q28JASystem5TBankFv
    mulli   r5, r30, 0xc
    addi    r4, r3, 0x0
    addi    r3, r5, 0x8
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    lis     r4, 0x8031
    subi    r4, r4, 0x183c
    addi    r5, r31, 0x0
    addi    r7, r30, 0x0
    li      r6, 0xc
    bl      __construct_new_array
    stw     r3, 0x20(r29)
    stw     r30, 0x1c(r29)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __ct__Q38JASystem10TBasicInst7TKeymapFv
__ct__Q38JASystem10TBasicInst7TKeymapFv: # 0x8030e7c4
    li      r0, -0x1
    stw     r0, 0x0(r3)
    li      r0, 0x0
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    blr


.globl setEffectCount__Q28JASystem10TBasicInstFUl
setEffectCount__Q28JASystem10TBasicInstFUl: # 0x8030e7dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r3, 0xc(r3)
    bl      __dla__FPv
    cmplwi  r31, 0x0
    stw     r31, 0x10(r30)
    bne-    branch_0x8030e818
    li      r0, 0x0
    stw     r0, 0xc(r30)
    b       branch_0x8030e83c

branch_0x8030e818:
    bl      getCurrentHeap__Q28JASystem5TBankFv
    addi    r4, r3, 0x0
    slwi    r3, r31, 2
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, 0xc(r30)
    slwi    r4, r31, 2
    lwz     r3, 0xc(r30)
    bl      bzero__Q28JASystem4CalcFPvUl
branch_0x8030e83c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl setEffect__Q28JASystem10TBasicInstFiPQ28JASystem11TInstEffect
setEffect__Q28JASystem10TBasicInstFiPQ28JASystem11TInstEffect: # 0x8030e854
    lwz     r3, 0xc(r3)
    slwi    r0, r4, 2
    stwx    r5, r3, r0
    blr


.globl setOscCount__Q28JASystem10TBasicInstFUl
setOscCount__Q28JASystem10TBasicInstFUl: # 0x8030e864
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r3, 0x14(r3)
    bl      __dla__FPv
    cmplwi  r31, 0x0
    stw     r31, 0x18(r30)
    bne-    branch_0x8030e8a0
    li      r0, 0x0
    stw     r0, 0x14(r30)
    b       branch_0x8030e8c4

branch_0x8030e8a0:
    bl      getCurrentHeap__Q28JASystem5TBankFv
    addi    r4, r3, 0x0
    slwi    r3, r31, 2
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, 0x14(r30)
    slwi    r4, r31, 2
    lwz     r3, 0x14(r30)
    bl      bzero__Q28JASystem4CalcFPvUl
branch_0x8030e8c4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl setOsc__Q28JASystem10TBasicInstFiPQ38JASystem11TOscillator4Osc_
setOsc__Q28JASystem10TBasicInstFiPQ38JASystem11TOscillator4Osc_: # 0x8030e8dc
    lwz     r3, 0x14(r3)
    slwi    r0, r4, 2
    stwx    r5, r3, r0
    blr


.globl getKeyRegion__Q28JASystem10TBasicInstFi
getKeyRegion__Q28JASystem10TBasicInstFi: # 0x8030e8ec
    lwz     r0, 0x1c(r3)
    cmplw   r4, r0
    blt-    branch_0x8030e900
    li      r3, 0x0
    blr

branch_0x8030e900:
    mulli   r0, r4, 0xc
    lwz     r3, 0x20(r3)
    add     r3, r3, r0
    blr


.globl __dt__Q38JASystem10TBasicInst7TKeymapFv
__dt__Q38JASystem10TBasicInst7TKeymapFv: # 0x8030e910
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8030e948
    lwz     r3, 0x8(r30)
    bl      __dla__FPv
    extsh.  r0, r31
    ble-    branch_0x8030e948
    mr      r3, r30
    bl      __dl__FPv
branch_0x8030e948:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl setVeloRegionCount__Q38JASystem10TBasicInst7TKeymapFUl
setVeloRegionCount__Q38JASystem10TBasicInst7TKeymapFUl: # 0x8030e964
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r3, 0x8(r3)
    bl      __dla__FPv
    bl      getCurrentHeap__Q28JASystem5TBankFv
    addi    r4, r3, 0x0
    slwi    r3, r31, 4
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, 0x8(r30)
    stw     r31, 0x4(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getVeloRegion__Q38JASystem10TBasicInst7TKeymapFi
getVeloRegion__Q38JASystem10TBasicInst7TKeymapFi: # 0x8030e9bc
    lwz     r0, 0x4(r3)
    cmplw   r4, r0
    blt-    branch_0x8030e9d0
    li      r3, 0x0
    blr

branch_0x8030e9d0:
    lwz     r3, 0x8(r3)
    slwi    r0, r4, 4
    add     r3, r3, r0
    blr


.globl getVeloRegion__Q38JASystem10TBasicInst7TKeymapCFi
getVeloRegion__Q38JASystem10TBasicInst7TKeymapCFi: # 0x8030e9e0
    lwz     r0, 0x4(r3)
    cmplw   r4, r0
    blt-    branch_0x8030e9f4
    li      r3, 0x0
    blr

branch_0x8030e9f4:
    lwz     r3, 0x8(r3)
    slwi    r0, r4, 4
    add     r3, r3, r0
    blr


.globl getType__Q28JASystem10TBasicInstCFv
getType__Q28JASystem10TBasicInstCFv: # 0x8030ea04
    lis     r3, 0x4253
    addi    r3, r3, 0x4943
    blr

