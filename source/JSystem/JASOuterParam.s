
.globl __ct__Q38JASystem6TTrack11TOuterParamFv
__ct__Q38JASystem6TTrack11TOuterParamFv: # 0x80319c58
    li      r0, 0x0
    sth     r0, 0x0(r3)
    sth     r0, 0x2(r3)
    lfs     f0, 0x758(r2)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    stfs    f0, 0xc(r3)
    stfs    f0, 0x10(r3)
    stfs    f0, 0x14(r3)
    stfs    f0, 0x18(r3)
    sth     r0, 0x1c(r3)
    sth     r0, 0x1e(r3)
    sth     r0, 0x20(r3)
    sth     r0, 0x22(r3)
    sth     r0, 0x24(r3)
    sth     r0, 0x26(r3)
    sth     r0, 0x28(r3)
    sth     r0, 0x2a(r3)
    blr


.globl initExtBuffer__Q38JASystem6TTrack11TOuterParamFv
initExtBuffer__Q38JASystem6TTrack11TOuterParamFv: # 0x80319ca4
    li      r0, 0x0
    sth     r0, 0x0(r3)
    sth     r0, 0x2(r3)
    blr


.globl setOuterSwitch__Q38JASystem6TTrack11TOuterParamFUs
setOuterSwitch__Q38JASystem6TTrack11TOuterParamFUs: # 0x80319cb4
    sth     r4, 0x0(r3)
    blr


.globl checkOuterSwitch__Q38JASystem6TTrack11TOuterParamFUs
checkOuterSwitch__Q38JASystem6TTrack11TOuterParamFUs: # 0x80319cbc
    lhz     r3, 0x0(r3)
    clrlwi  r0, r4, 16
    and     r0, r3, r0
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r3, r0, 24
    blr


.globl setOuterUpdate__Q38JASystem6TTrack11TOuterParamFUs
setOuterUpdate__Q38JASystem6TTrack11TOuterParamFUs: # 0x80319cdc
    sth     r4, 0x2(r3)
    blr


.globl getOuterUpdate__Q38JASystem6TTrack11TOuterParamFv
getOuterUpdate__Q38JASystem6TTrack11TOuterParamFv: # 0x80319ce4
    lhz     r3, 0x2(r3)
    blr


.globl getIntFirFilter__Q38JASystem6TTrack11TOuterParamFUc
getIntFirFilter__Q38JASystem6TTrack11TOuterParamFUc: # 0x80319cec
    clrlslwi  r0, r4, 24, 1
    add     r3, r3, r0
    lha     r3, 0x1c(r3)
    blr


.globl setParam__Q38JASystem6TTrack11TOuterParamFUcf
setParam__Q38JASystem6TTrack11TOuterParamFUcf: # 0x80319cfc
    clrlwi  r0, r4, 24
    cmpwi   r0, 0x8
    beq-    branch_0x80319d6c
    bge-    branch_0x80319d34
    cmpwi   r0, 0x3
    beqlr-    

    bge-    branch_0x80319d28
    cmpwi   r0, 0x1
    beq-    branch_0x80319d4c
    bge-    branch_0x80319d54
    blr

branch_0x80319d28:
    cmpwi   r0, 0x5
    bgelr-    

    b       branch_0x80319d5c

branch_0x80319d34:
    cmpwi   r0, 0x40
    beq-    branch_0x80319d74
    bgelr-    

    cmpwi   r0, 0x10
    beq-    branch_0x80319d64
    blr

branch_0x80319d4c:
    addi    r5, r3, 0x4
    b       branch_0x80319d80

branch_0x80319d54:
    addi    r5, r3, 0x8
    b       branch_0x80319d80

branch_0x80319d5c:
    addi    r5, r3, 0xc
    b       branch_0x80319d80

branch_0x80319d64:
    addi    r5, r3, 0x10
    b       branch_0x80319d80

branch_0x80319d6c:
    addi    r5, r3, 0x14
    b       branch_0x80319d80

branch_0x80319d74:
    addi    r5, r3, 0x18
    b       branch_0x80319d80

branch_0x80319d7c:
    blr

branch_0x80319d80:
    stfs    f1, 0x0(r5)
    clrlwi  r0, r4, 24
    lhz     r4, 0x2(r3)
    or      r0, r4, r0
    sth     r0, 0x2(r3)
    blr


.globl onSwitch__Q38JASystem6TTrack11TOuterParamFUs
onSwitch__Q38JASystem6TTrack11TOuterParamFUs: # 0x80319d98
    lhz     r0, 0x0(r3)
    or      r0, r0, r4
    sth     r0, 0x0(r3)
    lhz     r0, 0x2(r3)
    or      r0, r0, r4
    sth     r0, 0x2(r3)
    blr


.globl setFirFilter__Q38JASystem6TTrack11TOuterParamFPs
setFirFilter__Q38JASystem6TTrack11TOuterParamFPs: # 0x80319db4
    lhz     r0, 0x2(r3)
    ori     r0, r0, 0x80
    sth     r0, 0x2(r3)
    lhz     r0, 0x0(r3)
    ori     r0, r0, 0x80
    sth     r0, 0x0(r3)
    lha     r0, 0x0(r4)
    sth     r0, 0x1c(r3)
    lha     r0, 0x2(r4)
    sth     r0, 0x1e(r3)
    lha     r0, 0x4(r4)
    sth     r0, 0x20(r3)
    lha     r0, 0x6(r4)
    sth     r0, 0x22(r3)
    lha     r0, 0x8(r4)
    sth     r0, 0x24(r3)
    lha     r0, 0xa(r4)
    sth     r0, 0x26(r3)
    lha     r0, 0xc(r4)
    sth     r0, 0x28(r3)
    lha     r0, 0xe(r4)
    sth     r0, 0x2a(r3)
    blr

