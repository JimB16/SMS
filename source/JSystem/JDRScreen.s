
.globl perform__13TCamConnecterFUlPQ26JDrama9TGraphics
perform__13TCamConnecterFUlPQ26JDrama9TGraphics: # 0x802fbc68
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 28, 28
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x802fbce8
    lwz     r3, 0x10(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x802fbcac
    addi    r5, r31, 0x0
    li      r4, 0x10
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x802fbcac:
    lwz     r3, 0x14(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x802fbcc4
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x802fbcc4:
    lwz     r3, 0x10(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x802fbce8
    lhz     r0, 0x18(r29)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fbce8
    addi    r5, r31, 0x0
    li      r4, 0x8
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x802fbce8:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__Q26JDrama7TScreenFRCQ26JDrama5TRectPCc
__ct__Q26JDrama7TScreenFRCQ26JDrama5TRectPCc: # 0x802fbd04
    mflr    r0
    addi    r7, r5, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    li      r5, 0x0
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    addi    r6, sp, 0x18
    stw     r30, 0x20(sp)
    li      r4, 0x0
    stw     r3, 0x8(sp)
    sth     r0, 0x18(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__Q26JDrama14TViewConnecterFPQ26JDrama8TViewObjPQ26JDrama8TViewObjQ26JDrama10TFlagT_Us_PCc
    lis     r4, __vvt__Q26JDrama7TScreen@h
    lwz     r3, 0x8(sp)
    addi    r0, r4, __vvt__Q26JDrama7TScreen@l
    stw     r0, 0x0(r3)
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802fbd74
    lis     r3, unk_803aa448@ha
    addi    r5, r3, unk_803aa448@l
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      __ct__Q26JDrama9TViewportFRCQ26JDrama5TRectPCc
branch_0x802fbd74:
    lwz     r4, 0x8(sp)
    li      r3, 0x1c
    stw     r30, 0x10(r4)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802fbdbc
    li      r0, 0x0
    lis     r4, unk_803aa454@ha
    sth     r0, 0x14(sp)
    addi    r7, r4, unk_803aa454@l
    addi    r3, r30, 0x0
    addi    r6, sp, 0x14
    li      r4, 0x0
    li      r5, 0x0
    bl      __ct__Q26JDrama14TViewConnecterFPQ26JDrama8TViewObjPQ26JDrama8TViewObjQ26JDrama10TFlagT_Us_PCc
    lis     r3, __vvt__13TCamConnecter@h
    addi    r0, r3, __vvt__13TCamConnecter@l
    stw     r0, 0x0(r30)
branch_0x802fbdbc:
    lwz     r3, 0x8(sp)
    stw     r30, 0x14(r3)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl assignCamera__Q26JDrama7TScreenFPQ26JDrama8TViewObj
assignCamera__Q26JDrama7TScreenFPQ26JDrama8TViewObj: # 0x802fbddc
    lwz     r3, 0x14(r3)
    stw     r4, 0x10(r3)
    blr


.globl assignViewObj__Q26JDrama7TScreenFPQ26JDrama8TViewObj
assignViewObj__Q26JDrama7TScreenFPQ26JDrama8TViewObj: # 0x802fbde8
    lwz     r3, 0x14(r3)
    stw     r4, 0x14(r3)
    blr


.globl __dt__Q26JDrama7TScreenFv
__dt__Q26JDrama7TScreenFv: # 0x802fbdf4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802fbe5c
    lis     r3, __vvt__Q26JDrama7TScreen@h
    addi    r0, r3, __vvt__Q26JDrama7TScreen@l
    stw     r0, 0x0(r30)
    beq-    branch_0x802fbe4c
    lis     r3, __vvt__Q26JDrama14TViewConnecter@h
    addi    r0, r3, __vvt__Q26JDrama14TViewConnecter@l
    stw     r0, 0x0(r30)
    beq-    branch_0x802fbe4c
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802fbe4c:
    extsh.  r0, r31
    ble-    branch_0x802fbe5c
    mr      r3, r30
    bl      __dl__FPv
branch_0x802fbe5c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13TCamConnecterFv
__dt__13TCamConnecterFv: # 0x802fbe78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802fbee0
    lis     r3, __vvt__13TCamConnecter@h
    addi    r0, r3, __vvt__13TCamConnecter@l
    stw     r0, 0x0(r30)
    beq-    branch_0x802fbed0
    lis     r3, __vvt__Q26JDrama14TViewConnecter@h
    addi    r0, r3, __vvt__Q26JDrama14TViewConnecter@l
    stw     r0, 0x0(r30)
    beq-    branch_0x802fbed0
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802fbed0:
    extsh.  r0, r31
    ble-    branch_0x802fbee0
    mr      r3, r30
    bl      __dl__FPv
branch_0x802fbee0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

