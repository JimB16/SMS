
.globl init__Q28JASystem8TIntrMgrFv
init__Q28JASystem8TIntrMgrFv: # 0x8031da04
    li      r0, 0x1
    stb     r0, 0x0(r3)
    li      r0, 0x0
    stb     r0, 0x1(r3)
    stb     r0, 0x2(r3)
    stb     r0, 0x3(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    stw     r0, 0x18(r3)
    stw     r0, 0x1c(r3)
    stw     r0, 0x20(r3)
    stw     r0, 0x24(r3)
    stw     r0, 0x28(r3)
    blr


.globl request__Q28JASystem8TIntrMgrFUl
request__Q28JASystem8TIntrMgrFUl: # 0x8031da48
    li      r0, 0x1
    lbz     r5, 0x2(r3)
    slw     r4, r0, r4
    and.    r0, r5, r4
    beqlr-    

    lbz     r0, 0x1(r3)
    or      r0, r0, r4
    stb     r0, 0x1(r3)
    blr


.globl setIntr__Q28JASystem8TIntrMgrFUlPv
setIntr__Q28JASystem8TIntrMgrFUlPv: # 0x8031da6c
    li      r0, 0x1
    lbz     r6, 0x2(r3)
    slw     r0, r0, r4
    or      r6, r6, r0
    slwi    r0, r4, 2
    stb     r6, 0x2(r3)
    add     r3, r3, r0
    stw     r5, 0xc(r3)
    blr


.globl resetInter__Q28JASystem8TIntrMgrFUl
resetInter__Q28JASystem8TIntrMgrFUl: # 0x8031da90
    li      r0, 0x1
    lbz     r5, 0x2(r3)
    slw     r0, r0, r4
    andc    r0, r5, r0
    stb     r0, 0x2(r3)
    blr


.globl checkIntr__Q28JASystem8TIntrMgrFv
checkIntr__Q28JASystem8TIntrMgrFv: # 0x8031daa8
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8031dabc
    li      r3, 0x0
    blr

branch_0x8031dabc:
    lbz     r4, 0x2(r3)
    li      r5, 0x0
    lbz     r0, 0x1(r3)
    and     r4, r4, r0
    b       branch_0x8031db04

branch_0x8031dad0:
    clrlwi. r0, r4, 31
    beq-    branch_0x8031dafc
    li      r0, 0x1
    lbz     r4, 0x1(r3)
    slw     r0, r0, r5
    andc    r4, r4, r0
    slwi    r0, r5, 2
    stb     r4, 0x1(r3)
    add     r3, r3, r0
    lwz     r3, 0xc(r3)
    blr

branch_0x8031dafc:
    srwi    r4, r4, 1
    addi    r5, r5, 0x1
branch_0x8031db04:
    cmplwi  r4, 0x0
    bne+    branch_0x8031dad0
    li      r3, 0x0
    blr


.globl timerProcess__Q28JASystem8TIntrMgrFv
timerProcess__Q28JASystem8TIntrMgrFv: # 0x8031db14
    lwz     r4, 0x4(r3)
    cmplwi  r4, 0x0
    beqlr-    

    subi    r0, r4, 0x1
    stw     r0, 0x4(r3)
    lwz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    bnelr-    

    lbz     r0, 0x2(r3)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x8031db4c
    lbz     r0, 0x1(r3)
    ori     r0, r0, 0x40
    stb     r0, 0x1(r3)
branch_0x8031db4c:
    lbz     r4, 0x3(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x8031db78
    subi    r0, r4, 0x1
    stb     r0, 0x3(r3)
    lbz     r0, 0x3(r3)
    cmplwi  r0, 0x0
    beqlr-    

    lwz     r0, 0x8(r3)
    stw     r0, 0x4(r3)
    blr

branch_0x8031db78:
    lwz     r0, 0x8(r3)
    stw     r0, 0x4(r3)
    blr

