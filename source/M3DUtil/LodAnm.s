
.globl setBckAndBtpAnm__7TLodAnmFi
setBckAndBtpAnm__7TLodAnmFi: # 0x8023f440
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    bl      setBckAnm___7TLodAnmFi
    lwz     r0, 0x4(r29)
    addi    r31, r3, 0x0
    cmplwi  r0, 0x0
    beq-    branch_0x8023f480
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      setBtpAnm___7TLodAnmFi
branch_0x8023f480:
    stw     r30, 0x14(r29)
    mr      r3, r31
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl setBtpAnm___7TLodAnmFi
setBtpAnm___7TLodAnmFi: # 0x8023f4a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr.     r30, r4
    stw     r29, 0x2c(sp)
    addi    r29, r3, 0x0
    bge-    branch_0x8023f4e0
    lwz     r3, 0x0(r29)
    li      r4, -0x1
    lwz     r3, 0x74(r3)
    bl      setBtpFromIndex__6MActorFi
    li      r3, 0x1
    b       branch_0x8023f560

branch_0x8023f4e0:
    lwz     r3, 0x0(r29)
    li      r31, 0x0
    li      r4, 0x3
    lwz     r3, 0x74(r3)
    bl      getCurAnmIdx__6MActorCFi
    lwz     r0, 0x8(r29)
    slwi    r4, r30, 4
    lwz     r5, 0x4(r29)
    lwz     r6, 0x1c(r29)
    slwi    r0, r0, 2
    add     r4, r5, r4
    add     r4, r4, r0
    cmplwi  r6, 0x0
    lwz     r4, 0x8(r4)
    beq-    branch_0x8023f544
    mr      r5, r6
    b       branch_0x8023f538

branch_0x8023f524:
    cmpw    r4, r0
    bne-    branch_0x8023f534
    lwz     r4, 0x4(r5)
    b       branch_0x8023f544

branch_0x8023f534:
    addi    r5, r5, 0x8
branch_0x8023f538:
    lwz     r0, 0x0(r5)
    cmpwi   r0, 0x0
    bge+    branch_0x8023f524
branch_0x8023f544:
    cmpw    r3, r4
    beq-    branch_0x8023f55c
    lwz     r3, 0x0(r29)
    lwz     r3, 0x74(r3)
    bl      setBtpFromIndex__6MActorFi
    li      r31, 0x1
branch_0x8023f55c:
    mr      r3, r31
branch_0x8023f560:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl setBckAnm___7TLodAnmFi
setBckAnm___7TLodAnmFi: # 0x8023f57c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr.     r30, r4
    stw     r29, 0x2c(sp)
    addi    r29, r3, 0x0
    bge-    branch_0x8023f5b8
    lwz     r3, 0x0(r29)
    li      r4, -0x1
    lwz     r3, 0x74(r3)
    bl      setBckFromIndex__6MActorFi
    li      r3, 0x1
    b       branch_0x8023f644

branch_0x8023f5b8:
    lwz     r3, 0x0(r29)
    li      r31, 0x0
    li      r4, 0x0
    lwz     r3, 0x74(r3)
    bl      getCurAnmIdx__6MActorCFi
    lwz     r5, 0x4(r29)
    cmplwi  r5, 0x0
    bne-    branch_0x8023f5e0
    mr      r4, r30
    b       branch_0x8023f5f4

branch_0x8023f5e0:
    lwz     r0, 0x8(r29)
    slwi    r4, r30, 4
    slwi    r0, r0, 2
    add     r0, r4, r0
    lwzx    r4, r5, r0
branch_0x8023f5f4:
    lwz     r0, 0x18(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x8023f628
    mr      r5, r0
    b       branch_0x8023f61c

branch_0x8023f608:
    cmpw    r4, r0
    bne-    branch_0x8023f618
    lwz     r4, 0x4(r5)
    b       branch_0x8023f628

branch_0x8023f618:
    addi    r5, r5, 0x8
branch_0x8023f61c:
    lwz     r0, 0x0(r5)
    cmpwi   r0, 0x0
    bge+    branch_0x8023f608
branch_0x8023f628:
    cmpw    r3, r4
    beq-    branch_0x8023f640
    lwz     r3, 0x0(r29)
    lwz     r3, 0x74(r3)
    bl      setBckFromIndex__6MActorFi
    li      r31, 0x1
branch_0x8023f640:
    mr      r3, r31
branch_0x8023f644:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl __ct__7TLodAnmFP10TLiveActorPC12TLodAnmIndexif
__ct__7TLodAnmFP10TLiveActorPC12TLodAnmIndexif: # 0x8023f660
    stw     r4, 0x0(r3)
    li      r4, 0x0
    li      r0, -0x1
    stw     r5, 0x4(r3)
    cmplwi  r5, 0x0
    stw     r6, 0x8(r3)
    stfs    f1, 0xc(r3)
    stw     r4, 0x10(r3)
    stw     r0, 0x14(r3)
    stw     r4, 0x18(r3)
    stw     r4, 0x1c(r3)
    beqlr-    

    b       branch_0x8023f6a0

branch_0x8023f694:
    lwz     r4, 0x10(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x10(r3)
branch_0x8023f6a0:
    lwz     r0, 0x10(r3)
    slwi    r0, r0, 4
    lwzx    r0, r5, r0
    cmpwi   r0, -0x1
    bge+    branch_0x8023f694
    blr

