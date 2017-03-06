
.globl set__7JUTRectFiiii
set__7JUTRectFiiii: # 0x802ca1e0
    stw     r4, 0x0(r3)
    stw     r5, 0x4(r3)
    stw     r6, 0x8(r3)
    stw     r7, 0xc(r3)
    blr


.globl copy__7JUTRectFRC7JUTRect
copy__7JUTRectFRC7JUTRect: # 0x802ca1f4
    lwz     r0, 0x0(r4)
    stw     r0, 0x0(r3)
    lwz     r0, 0x4(r4)
    stw     r0, 0x4(r3)
    lwz     r0, 0x8(r4)
    stw     r0, 0x8(r3)
    lwz     r0, 0xc(r4)
    stw     r0, 0xc(r3)
    blr


.globl add__7JUTRectFii
add__7JUTRectFii: # 0x802ca218
    lwz     r0, 0x0(r3)
    add     r0, r0, r4
    stw     r0, 0x0(r3)
    lwz     r0, 0x8(r3)
    add     r0, r0, r4
    stw     r0, 0x8(r3)
    lwz     r0, 0x4(r3)
    add     r0, r0, r5
    stw     r0, 0x4(r3)
    lwz     r0, 0xc(r3)
    add     r0, r0, r5
    stw     r0, 0xc(r3)
    blr


.globl intersect__7JUTRectFRC7JUTRect
intersect__7JUTRectFRC7JUTRect: # 0x802ca24c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x0(r4)
    lwz     r0, 0x0(r3)
    cmpw    r0, r5
    bge-    branch_0x802ca26c
    stw     r5, 0x0(r3)
branch_0x802ca26c:
    lwz     r0, 0x4(r3)
    lwz     r5, 0x4(r4)
    cmpw    r0, r5
    bge-    branch_0x802ca280
    stw     r5, 0x4(r3)
branch_0x802ca280:
    lwz     r0, 0x8(r3)
    lwz     r5, 0x8(r4)
    cmpw    r0, r5
    ble-    branch_0x802ca294
    stw     r5, 0x8(r3)
branch_0x802ca294:
    lwz     r0, 0xc(r3)
    lwz     r4, 0xc(r4)
    cmpw    r0, r4
    ble-    branch_0x802ca2a8
    stw     r4, 0xc(r3)
branch_0x802ca2a8:
    bl      isEmpty__7JUTRectCFv
    clrlwi  r0, r3, 24
    cntlzw  r0, r0
    srwi    r0, r0, 5
    mr      r3, r0
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl move__7JUTRectFii
move__7JUTRectFii: # 0x802ca2cc
    lwz     r8, 0x0(r3)
    lwz     r7, 0x8(r3)
    lwz     r6, 0x4(r3)
    lwz     r0, 0xc(r3)
    subf    r7, r8, r7
    stw     r4, 0x0(r3)
    subf    r4, r6, r0
    stw     r5, 0x4(r3)
    lwz     r0, 0x0(r3)
    add     r0, r0, r7
    stw     r0, 0x8(r3)
    lwz     r0, 0x4(r3)
    add     r0, r0, r4
    stw     r0, 0xc(r3)
    blr


.globl resize__7JUTRectFii
resize__7JUTRectFii: # 0x802ca308
    lwz     r0, 0x0(r3)
    add     r0, r0, r4
    stw     r0, 0x8(r3)
    lwz     r0, 0x4(r3)
    add     r0, r0, r5
    stw     r0, 0xc(r3)
    blr


.globl reform__7JUTRectFiiii
reform__7JUTRectFiiii: # 0x802ca324
    lwz     r0, 0x0(r3)
    add     r0, r0, r4
    stw     r0, 0x0(r3)
    lwz     r0, 0x4(r3)
    add     r0, r0, r5
    stw     r0, 0x4(r3)
    lwz     r0, 0x8(r3)
    add     r0, r0, r6
    stw     r0, 0x8(r3)
    lwz     r0, 0xc(r3)
    add     r0, r0, r7
    stw     r0, 0xc(r3)
    blr


.globl normalize__7JUTRectFv
normalize__7JUTRectFv: # 0x802ca358
    lwz     r4, 0x0(r3)
    lwz     r0, 0x8(r3)
    cmpw    r4, r0
    ble-    branch_0x802ca370
    stw     r4, 0x8(r3)
    stw     r0, 0x0(r3)
branch_0x802ca370:
    lwz     r4, 0x4(r3)
    lwz     r0, 0xc(r3)
    cmpw    r4, r0
    blelr-    

    stw     r4, 0xc(r3)
    stw     r0, 0x4(r3)
    blr


.globl isEmpty__7JUTRectCFv
isEmpty__7JUTRectCFv: # 0x802ca38c
    lwz     r4, 0x0(r3)
    li      r5, 0x1
    lwz     r0, 0x8(r3)
    cmpw    r4, r0
    bge-    branch_0x802ca3b4
    lwz     r4, 0x4(r3)
    lwz     r0, 0xc(r3)
    cmpw    r4, r0
    bge-    branch_0x802ca3b4
    li      r5, 0x0
branch_0x802ca3b4:
    mr      r3, r5
    blr

