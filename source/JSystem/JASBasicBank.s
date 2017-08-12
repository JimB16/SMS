
.globl __ct__Q28JASystem10TBasicBankFv
__ct__Q28JASystem10TBasicBankFv: # 0x8030e2ac
    lis     r4, __vvt__Q28JASystem5TBank@h
    addi    r0, r4, __vvt__Q28JASystem5TBank@l
    stw     r0, 0x0(r3)
    li      r5, 0x0
    lis     r4, __vvt__Q28JASystem10TBasicBank@h
    stw     r5, 0x4(r3)
    addi    r0, r4, __vvt__Q28JASystem10TBasicBank@l
    stw     r0, 0x0(r3)
    stw     r5, 0x8(r3)
    stw     r5, 0xc(r3)
    blr


.globl __dt__Q28JASystem5TBankFv
__dt__Q28JASystem5TBankFv: # 0x8030e2d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8030e30c
    lis     r3, __vvt__Q28JASystem5TBank@h
    addi    r3, r3, __vvt__Q28JASystem5TBank@l
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x8030e30c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8030e30c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__Q28JASystem10TBasicBankFv
__dt__Q28JASystem10TBasicBankFv: # 0x8030e324
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8030e37c
    lis     r3, __vvt__Q28JASystem10TBasicBank@h
    addi    r0, r3, __vvt__Q28JASystem10TBasicBank@l
    stw     r0, 0x0(r30)
    lwz     r3, 0x8(r30)
    bl      __dla__FPv
    cmplwi  r30, 0x0
    beq-    branch_0x8030e36c
    lis     r3, __vvt__Q28JASystem5TBank@h
    addi    r0, r3, __vvt__Q28JASystem5TBank@l
    stw     r0, 0x0(r30)
branch_0x8030e36c:
    extsh.  r0, r31
    ble-    branch_0x8030e37c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8030e37c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl setInstCount__Q28JASystem10TBasicBankFUl
setInstCount__Q28JASystem10TBasicBankFUl: # 0x8030e398
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
    slwi    r3, r31, 2
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, 0x8(r30)
    slwi    r4, r31, 2
    lwz     r3, 0x8(r30)
    bl      bzero__Q28JASystem4CalcFPvUl
    stw     r31, 0xc(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl setInst__Q28JASystem10TBasicBankFiPQ28JASystem5TInst
setInst__Q28JASystem10TBasicBankFiPQ28JASystem5TInst: # 0x8030e3fc
    lwz     r3, 0x8(r3)
    slwi    r0, r4, 2
    stwx    r5, r3, r0
    blr


.globl getInst__Q28JASystem10TBasicBankCFi
getInst__Q28JASystem10TBasicBankCFi: # 0x8030e40c
    lwz     r0, 0xc(r3)
    cmplw   r4, r0
    blt-    branch_0x8030e420
    li      r3, 0x0
    blr

branch_0x8030e420:
    lwz     r3, 0x8(r3)
    slwi    r0, r4, 2
    lwzx    r3, r3, r0
    blr


.globl getType__Q28JASystem10TBasicBankCFv
getType__Q28JASystem10TBasicBankCFv: # 0x8030e430
    lis     r3, unk_42534943@h
    addi    r3, r3, unk_42534943@l
    blr

