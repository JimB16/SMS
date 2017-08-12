
.globl getParam__Q28JASystem8TDrumSetCFiiPQ28JASystem10TInstParam
getParam__Q28JASystem8TDrumSetCFiiPQ28JASystem10TInstParam: # 0x8030fc4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r25, 0x1c(sp)
    addi    r28, r4, 0x0
    lis     r4, osc_294@ha
    cmplwi  r28, 0x80
    addi    r29, r5, 0x0
    addi    r30, r6, 0x0
    addi    r7, r4, osc_294@l
    blt-    branch_0x8030fc80
    li      r3, 0x0
    b       branch_0x8030fe28

branch_0x8030fc80:
    li      r5, 0x0
    stb     r5, 0x0(r30)
    slwi    r6, r28, 5
    li      r4, 0x1
    stb     r4, 0x38(r30)
    addi    r31, r6, 0x4
    add     r31, r3, r31
    lfs     f1, 0x10(r30)
    lfs     f0, 0x0(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x10(r30)
    lfs     f1, 0x14(r30)
    lfs     f0, 0x4(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x14(r30)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x20(r30)
    lhz     r0, 0xc(r31)
    sth     r0, 0x3a(r30)
    stb     r5, 0x0(r7)
    lfs     f0, 0x650(r2)
    stfs    f0, 0x4(r7)
    stw     r5, 0x8(r7)
    stw     r5, 0xc(r7)
    stfs    f0, 0x10(r7)
    lfs     f0, 0x654(r2)
    stfs    f0, 0x14(r7)
    lbz     r0, R13Off_m0x5c94(r13)
    extsb.  r0, r0
    bne-    branch_0x8030fd00
    stw     r7, R13Off_m0x5c98(r13)
    stb     r4, R13Off_m0x5c94(r13)
branch_0x8030fd00:
    addi    r0, r13, R13Off_m0x5c98
    stw     r0, 0x8(r30)
    li      r0, 0x1
    li      r26, 0x0
    stw     r0, 0xc(r30)
    li      r27, 0x0
    b       branch_0x8030fdb8

branch_0x8030fd1c:
    lwz     r3, 0x10(r31)
    lwzx    r0, r3, r27
    cmplwi  r0, 0x0
    mr      r25, r0
    beq-    branch_0x8030fdb0
    mr      r3, r25
    lwz     r12, 0x0(r25)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x4(r25)
    cmpwi   r0, 0x2
    beq-    branch_0x8030fd9c
    bge-    branch_0x8030fd6c
    cmpwi   r0, 0x0
    beq-    branch_0x8030fd7c
    bge-    branch_0x8030fd8c
    b       branch_0x8030fdb0

branch_0x8030fd6c:
    cmpwi   r0, 0x4
    beq-    branch_0x8030fdac
    bge-    branch_0x8030fdb0
    b       branch_0x8030fda4

branch_0x8030fd7c:
    lfs     f0, 0x18(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x18(r30)
    b       branch_0x8030fdb0

branch_0x8030fd8c:
    lfs     f0, 0x1c(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c(r30)
    b       branch_0x8030fdb0

branch_0x8030fd9c:
    stfs    f1, 0x2c(r30)
    b       branch_0x8030fdb0

branch_0x8030fda4:
    stfs    f1, 0x30(r30)
    b       branch_0x8030fdb0

branch_0x8030fdac:
    stfs    f1, 0x34(r30)
branch_0x8030fdb0:
    addi    r26, r26, 0x1
    addi    r27, r27, 0x4
branch_0x8030fdb8:
    lwz     r0, 0x14(r31)
    cmplw   r26, r0
    blt+    branch_0x8030fd1c
    lwz     r0, 0x18(r31)
    li      r3, 0x0
    cmplwi  r0, 0x0
    mtctr   r0
    ble-    branch_0x8030fe24
branch_0x8030fdd8:
    lwz     r0, 0x1c(r31)
    add     r4, r0, r3
    lwz     r0, 0x0(r4)
    cmpw    r29, r0
    bgt-    branch_0x8030fe1c
    lfs     f1, 0x10(r30)
    li      r3, 0x1
    lfs     f0, 0x8(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x10(r30)
    lfs     f1, 0x14(r30)
    lfs     f0, 0xc(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x14(r30)
    lwz     r0, 0x4(r4)
    stw     r0, 0x4(r30)
    b       branch_0x8030fe28

branch_0x8030fe1c:
    addi    r3, r3, 0x10
    bdnz+      branch_0x8030fdd8
branch_0x8030fe24:
    li      r3, 0x0
branch_0x8030fe28:
    lmw     r25, 0x1c(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl getPerc__Q28JASystem8TDrumSetFi
getPerc__Q28JASystem8TDrumSetFi: # 0x8030fe3c
    slwi    r4, r4, 5
    addi    r0, r3, 0x0
    addi    r3, r4, 0x4
    add     r3, r0, r3
    blr


.globl __ct__Q38JASystem8TDrumSet5TPercFv
__ct__Q38JASystem8TDrumSet5TPercFv: # 0x8030fe50
    lfs     f0, 0x650(r2)
    li      r4, 0x3e8
    li      r0, 0x0
    stfs    f0, 0x0(r3)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x658(r2)
    stfs    f0, 0x8(r3)
    sth     r4, 0xc(r3)
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    stw     r0, 0x18(r3)
    stw     r0, 0x1c(r3)
    blr


.globl __dt__Q38JASystem8TDrumSet5TPercFv
__dt__Q38JASystem8TDrumSet5TPercFv: # 0x8030fe84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8030fec4
    lwz     r3, 0x10(r30)
    bl      __dla__FPv
    lwz     r3, 0x1c(r30)
    bl      __dla__FPv
    extsh.  r0, r31
    ble-    branch_0x8030fec4
    mr      r3, r30
    bl      __dl__FPv
branch_0x8030fec4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl setEffectCount__Q38JASystem8TDrumSet5TPercFUl
setEffectCount__Q38JASystem8TDrumSet5TPercFUl: # 0x8030fee0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r3, 0x10(r3)
    bl      __dla__FPv
    cmplwi  r31, 0x0
    stw     r31, 0x14(r30)
    bne-    branch_0x8030ff1c
    li      r0, 0x0
    stw     r0, 0x10(r30)
    b       branch_0x8030ff40

branch_0x8030ff1c:
    bl      getCurrentHeap__Q28JASystem5TBankFv
    addi    r4, r3, 0x0
    slwi    r3, r31, 2
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, 0x10(r30)
    slwi    r4, r31, 2
    lwz     r3, 0x10(r30)
    bl      bzero__Q28JASystem4CalcFPvUl
branch_0x8030ff40:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl setVeloRegionCount__Q38JASystem8TDrumSet5TPercFUl
setVeloRegionCount__Q38JASystem8TDrumSet5TPercFUl: # 0x8030ff58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r3, 0x1c(r3)
    bl      __dla__FPv
    bl      getCurrentHeap__Q28JASystem5TBankFv
    addi    r4, r3, 0x0
    slwi    r3, r31, 4
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, 0x1c(r30)
    stw     r31, 0x18(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getVeloRegion__Q38JASystem8TDrumSet5TPercFi
getVeloRegion__Q38JASystem8TDrumSet5TPercFi: # 0x8030ffb0
    lwz     r3, 0x1c(r3)
    slwi    r0, r4, 4
    add     r3, r3, r0
    blr


.globl setEffect__Q38JASystem8TDrumSet5TPercFiPQ28JASystem11TInstEffect
setEffect__Q38JASystem8TDrumSet5TPercFiPQ28JASystem11TInstEffect: # 0x8030ffc0
    lwz     r3, 0x10(r3)
    slwi    r0, r4, 2
    stwx    r5, r3, r0
    blr


.globl setRelease__Q38JASystem8TDrumSet5TPercFUl
setRelease__Q38JASystem8TDrumSet5TPercFUl: # 0x8030ffd0
    sth     r4, 0xc(r3)
    blr


.globl __dt__Q28JASystem8TDrumSetFv
__dt__Q28JASystem8TDrumSetFv: # 0x8030ffd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80310040
    lis     r3, __vvt__Q28JASystem8TDrumSet@h
    addi    r0, r3, __vvt__Q28JASystem8TDrumSet@l
    lis     r3, __dt__Q38JASystem8TDrumSet5TPercFv@ha
    stw     r0, 0x0(r30)
    addi    r4, r3, __dt__Q38JASystem8TDrumSet5TPercFv@l
    addi    r3, r30, 0x4
    li      r5, 0x20
    li      r6, 0x80
    bl      __destroy_arr
    cmplwi  r30, 0x0
    beq-    branch_0x80310030
    lis     r3, __vvt__Q28JASystem5TInst@h
    addi    r0, r3, __vvt__Q28JASystem5TInst@l
    stw     r0, 0x0(r30)
branch_0x80310030:
    extsh.  r0, r31
    ble-    branch_0x80310040
    mr      r3, r30
    bl      __dl__FPv
branch_0x80310040:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getType__Q28JASystem8TDrumSetCFv
getType__Q28JASystem8TDrumSetCFv: # 0x8031005c
    lis     r3, unk_50455243@h
    addi    r3, r3, unk_50455243@l
    blr

