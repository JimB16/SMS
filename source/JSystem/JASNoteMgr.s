
.globl init__Q38JASystem6TTrack8TNoteMgrFv
init__Q38JASystem6TTrack8TNoteMgrFv: # 0x80319b88
    li      r0, 0x0
    stw     r0, 0x30(r3)
    stb     r0, 0x34(r3)
    stb     r0, 0x35(r3)
    stb     r0, 0x36(r3)
    stw     r0, 0x0(r3)
    sth     r0, 0x20(r3)
    stw     r0, 0x4(r3)
    sth     r0, 0x22(r3)
    stw     r0, 0x8(r3)
    sth     r0, 0x24(r3)
    stw     r0, 0xc(r3)
    sth     r0, 0x26(r3)
    stw     r0, 0x10(r3)
    sth     r0, 0x28(r3)
    stw     r0, 0x14(r3)
    sth     r0, 0x2a(r3)
    stw     r0, 0x18(r3)
    sth     r0, 0x2c(r3)
    stw     r0, 0x1c(r3)
    sth     r0, 0x2e(r3)
    blr


.globl endProcess__Q38JASystem6TTrack8TNoteMgrFv
endProcess__Q38JASystem6TTrack8TNoteMgrFv: # 0x80319be0
    lwz     r4, 0x30(r3)
    addis   r0, r4, 0x1
    cmplwi  r0, 0xffff
    beqlr-    

    lbz     r0, 0x34(r3)
    cmplwi  r0, 0x0
    bnelr-    

    li      r0, 0x0
    stw     r0, 0x0(r3)
    blr


.globl getChannel__Q38JASystem6TTrack8TNoteMgrFi
getChannel__Q38JASystem6TTrack8TNoteMgrFi: # 0x80319c08
    slwi    r0, r4, 2
    add     r5, r3, r0
    lwz     r0, 0x0(r5)
    cmplwi  r0, 0x0
    mr      r6, r0
    bne-    branch_0x80319c28
    li      r3, 0x0
    blr

branch_0x80319c28:
    slwi    r4, r4, 1
    lhz     r0, 0xc6(r6)
    add     r3, r3, r4
    lhz     r3, 0x20(r3)
    cmplw   r3, r0
    beq-    branch_0x80319c50
    li      r0, 0x0
    stw     r0, 0x0(r5)
    li      r3, 0x0
    blr

branch_0x80319c50:
    mr      r3, r6
    blr

