
.globl SMS_getShineIDofExStage__FUc
SMS_getShineIDofExStage__FUc: # 0x802a8a98
    clrlwi  r4, r3, 24
    cmplwi  r4, 0x14
    ble-    branch_0x802a8aac
    cmplwi  r4, 0x35
    blt-    branch_0x802a8ab4
branch_0x802a8aac:
    li      r3, 0xff
    blr

branch_0x802a8ab4:
    lis     r3, exShineTable@ha
    addi    r0, r3, exShineTable@l
    add     r3, r0, r4
    lbz     r3, -0x15(r3)
    blr


.globl SMS_getShineStage__FUc
SMS_getShineStage__FUc: # 0x802a8ac8
    lis     r4, shineStageTable@ha
    clrlwi  r3, r3, 24
    addi    r0, r4, shineStageTable@l
    add     r3, r0, r3
    lbz     r3, 0x0(r3)
    blr


.globl SMS_isOptionMap__Fv
SMS_isOptionMap__Fv: # 0x802a8ae0
    lwz     r4, R13Off_m0x6048(r13)
    li      r3, 0x0
    lbz     r0, 0x7c(r4)
    cmplwi  r0, 0xf
    bnelr-    

    li      r3, 0x1
    blr


.globl SMS_isDivingMap__Fv
SMS_isDivingMap__Fv: # 0x802a8afc
    lwz     r4, R13Off_m0x6048(r13)
    li      r3, 0x0
    lbz     r0, 0x7c(r4)
    cmplwi  r0, 0x39
    bne-    branch_0x802a8b14
    li      r3, 0x1
branch_0x802a8b14:
    cmplwi  r0, 0x2c
    bne-    branch_0x802a8b20
    li      r3, 0x1
branch_0x802a8b20:
    cmplwi  r0, 0x10
    bnelr-    

    li      r3, 0x1
    blr


.globl SMS_isMultiPlayerMap__Fv
SMS_isMultiPlayerMap__Fv: # 0x802a8b30
    lwz     r4, R13Off_m0x6048(r13)
    li      r3, 0x0
    lbz     r0, 0x7c(r4)
    cmplwi  r0, 0xc
    bnelr-    

    lbz     r0, 0x7d(r4)
    cmplwi  r0, 0x0
    bnelr-    

    li      r3, 0x1
    blr


.globl SMS_isExMap__Fv
SMS_isExMap__Fv: # 0x802a8b58
    lis     r3, gpApplication@ha
    addi    r3, r3, gpApplication@l
    lbz     r0, 0xe(r3)
    li      r3, 0x0
    cmplwi  r0, 0x14
    blelr-    

    cmplwi  r0, 0x35
    bgelr-    

    li      r3, 0x1
    blr

