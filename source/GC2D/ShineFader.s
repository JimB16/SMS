
.globl __dt__11TShineFaderFv
__dt__11TShineFaderFv: # 0x8017d760
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8017d7d8
    lis     r3, __vvt__11TShineFader@h
    addi    r0, r3, __vvt__11TShineFader@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8017d7c8
    lis     r3, __vvt__10TSmplFader@h
    addi    r0, r3, __vvt__10TSmplFader@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8017d7c8
    lis     r3, __vvt__9TSMSFader@ha
    addi    r0, r3, __vvt__9TSMSFader@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8017d7c8
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8017d7c8:
    extsh.  r0, r31
    ble-    branch_0x8017d7d8
    mr      r3, r30
    bl      __dl__FPv
branch_0x8017d7d8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__11TShineFaderFR20JSUMemoryInputStream
load__11TShineFaderFR20JSUMemoryInputStream: # 0x8017d7f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl registFadeout__11TShineFaderFUsUs
registFadeout__11TShineFaderFUsUs: # 0x8017d814
    clrlwi. r0, r4, 16
    li      r6, 0x0
    bne-    branch_0x8017d824
    li      r4, 0x1
branch_0x8017d824:
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x8017d834
    b       branch_0x8017d850

branch_0x8017d834:
    li      r0, 0x3
    stw     r0, 0x20(r3)
    li      r0, 0x0
    li      r6, 0x1
    sth     r0, 0x12(r3)
    sth     r4, 0x10(r3)
    sth     r5, 0x38(r3)
branch_0x8017d850:
    mr      r3, r6
    blr


.globl perform__11TShineFaderFUlPQ26JDrama9TGraphics
perform__11TShineFaderFUlPQ26JDrama9TGraphics: # 0x8017d858
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x8017d898
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
branch_0x8017d898:
    rlwinm. r0, r30, 0, 28, 28
    beq-    branch_0x8017d8b8
    lwz     r12, 0x0(r29)
    mr      r3, r29
    addi    r4, r31, 0x54
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
branch_0x8017d8b8:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl update__11TShineFaderFv
update__11TShineFaderFv: # 0x8017d8d4
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0x2
    beqlr-    

    bge-    branch_0x8017d8f4
    cmpwi   r0, 0x0
    beq-    branch_0x8017d90c
    bge-    branch_0x8017d900
    blr

branch_0x8017d8f4:
    cmpwi   r0, 0x4
    bgelr-    

    b       branch_0x8017d918

branch_0x8017d900:
    li      r0, 0x0
    stb     r0, 0x1b(r3)
    blr

branch_0x8017d90c:
    li      r0, 0xff
    stb     r0, 0x1b(r3)
    blr

branch_0x8017d918:
    lhz     r4, 0x12(r3)
    addi    r0, r4, 0x1
    sth     r0, 0x12(r3)
    lhz     r4, 0x38(r3)
    lhz     r6, 0x10(r3)
    lhz     r5, 0x12(r3)
    add     r0, r4, r6
    cmpw    r5, r0
    ble-    branch_0x8017d94c
    li      r0, 0x0
    stw     r0, 0x20(r3)
    stb     r0, 0x1c(r3)
    blr

branch_0x8017d94c:
    cmplw   r5, r4
    blelr-    

    addi    r0, r5, -0x1
    subf    r0, r4, r0
    clrlwi  r0, r0, 16
    mulli   r0, r0, 0xff
    divw    r0, r0, r6
    stb     r0, 0x1b(r3)
    blr


.globl __dt__10TSmplFaderFv
__dt__10TSmplFaderFv: # 0x8017d970
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8017d9d8
    lis     r3, __vvt__10TSmplFader@h
    addi    r0, r3, __vvt__10TSmplFader@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8017d9c8
    lis     r3, __vvt__9TSMSFader@ha
    addi    r0, r3, __vvt__9TSMSFader@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8017d9c8
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8017d9c8:
    extsh.  r0, r31
    ble-    branch_0x8017d9d8
    mr      r3, r30
    bl      __dl__FPv
branch_0x8017d9d8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

