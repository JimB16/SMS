
.globl SMS_GetSandRiseUpRatio__FPC10TLiveActor
SMS_GetSandRiseUpRatio__FPC10TLiveActor: # 0x80236d58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    lfs     f0, -0x1570(rtoc)
    lfs     f1, 0x14(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80236d84
    fmr     f1, f0
    b       branch_0x80236d94

branch_0x80236d84:
    lfs     f0, -0x156c(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80236d94
    fmr     f1, f0
branch_0x80236d94:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl SMS_GetGroundActor__FPC12TBGCheckDataUl
SMS_GetGroundActor__FPC12TBGCheckDataUl: # 0x80236da4
    cmplwi  r3, 0x0
    li      r5, 0x0
    beq-    branch_0x80236dd0
    lwz     r3, 0x44(r3)
    cmplwi  r3, 0x0
    addi    r5, r3, 0x0
    beq-    branch_0x80236dd0
    lwz     r0, 0x4c(r3)
    cmplw   r4, r0
    beq-    branch_0x80236dd0
    li      r5, 0x0
branch_0x80236dd0:
    mr      r3, r5
    blr


.globl SMS_GetMonteVillageAreaInMario__Fv
SMS_GetMonteVillageAreaInMario__Fv: # 0x80236dd8
    lwz     r4, -0x6048(r13)
    li      r3, 0x4
    lbz     r0, 0x7c(r4)
    cmplwi  r0, 0x8
    bnelr-    

    lwz     r3, -0x7118(r13)
    lwz     r0, 0x50(r3)
    cmpwi   r0, 0x33
    bne-    branch_0x80236e04
    li      r3, 0x1
    blr

branch_0x80236e04:
    lwz     r3, -0x70d0(r13)
    lwz     r0, 0x1c(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x80236e2c
    bge-    branch_0x80236e34
    cmpwi   r0, 0x0
    bge-    branch_0x80236e24
    b       branch_0x80236e34

branch_0x80236e24:
    li      r3, 0x2
    blr

branch_0x80236e2c:
    li      r3, 0x0
    blr

branch_0x80236e34:
    li      r3, 0x3
    blr

