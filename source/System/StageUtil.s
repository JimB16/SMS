
# SMS_getShineIDofExStage(unsigned char)
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
    lis     r3, 0x803e
    subi    r0, r3, 0xb28
    add     r3, r0, r4
    lbz     r3, -0x15(r3)
    blr


# SMS_getShineStage(unsigned char)
.globl SMS_getShineStage__FUc
SMS_getShineStage__FUc: # 0x802a8ac8
    lis     r4, 0x803e
    clrlwi  r3, r3, 24
    subi    r0, r4, 0xb68
    add     r3, r0, r3
    lbz     r3, 0x0(r3)
    blr


# SMS_isOptionMap(void)
.globl SMS_isOptionMap__Fv
SMS_isOptionMap__Fv: # 0x802a8ae0
    lwz     r4, gpMarDirector(r13)
    li      r3, 0x0
    lbz     r0, 0x7c(r4)
    cmplwi  r0, 0xf
    bnelr-    

    li      r3, 0x1
    blr


# SMS_isDivingMap(void)
.globl SMS_isDivingMap__Fv
SMS_isDivingMap__Fv: # 0x802a8afc
    lwz     r4, gpMarDirector(r13)
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


# SMS_isMultiPlayerMap(void)
.globl SMS_isMultiPlayerMap__Fv
SMS_isMultiPlayerMap__Fv: # 0x802a8b30
    lwz     r4, gpMarDirector(r13)
    li      r3, 0x0
    lbz     r0, 0x7c(r4)
    cmplwi  r0, 0xc
    bnelr-    

    lbz     r0, 0x7d(r4)
    cmplwi  r0, 0x0
    bnelr-    

    li      r3, 0x1
    blr


# SMS_isExMap(void)
.globl SMS_isExMap__Fv
SMS_isExMap__Fv: # 0x802a8b58
    lis     r3, 0x803f
    subi    r3, r3, 0x6900
    lbz     r0, 0xe(r3)
    li      r3, 0x0
    cmplwi  r0, 0x14
    blelr-    

    cmplwi  r0, 0x35
    bgelr-    

    li      r3, 0x1
    blr
