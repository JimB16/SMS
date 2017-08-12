
.globl __dt__14JSUInputStreamFv
__dt__14JSUInputStreamFv: # 0x802c5714
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802c5758
    lis     r3, __vvt__14JSUInputStream@h
    addi    r0, r3, __vvt__14JSUInputStream@l
    stw     r0, 0x0(r31)
    beq-    branch_0x802c5748
    lis     r3, __vvt__10JSUIosBase@ha
    addi    r0, r3, __vvt__10JSUIosBase@l
    stw     r0, 0x0(r31)
branch_0x802c5748:
    extsh.  r0, r4
    ble-    branch_0x802c5758
    mr      r3, r31
    bl      __dl__FPv
branch_0x802c5758:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl read__14JSUInputStreamFPvl
read__14JSUInputStreamFPvl: # 0x802c5770
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r5
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    cmpw    r3, r31
    beq-    branch_0x802c57b0
    lbz     r0, 0x4(r30)
    ori     r0, r0, 0x1
    stb     r0, 0x4(r30)
branch_0x802c57b0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl readString__14JSUInputStreamFv
readString__14JSUInputStreamFv: # 0x802c57c8
    mflr    r0
    li      r5, 0x2
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r4, sp, 0xc
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x2
    beq-    branch_0x802c5814
    lbz     r0, 0x4(r30)
    li      r3, 0x0
    ori     r0, r0, 0x1
    stb     r0, 0x4(r30)
    b       branch_0x802c5884

branch_0x802c5814:
    lhz     r3, 0xc(sp)
    addi    r3, r3, 0x1
    bl      __nwa__FUl
    mr.     r31, r3
    bne-    branch_0x802c5844
    mr      r3, r30
    lhz     r4, 0xc(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    b       branch_0x802c5868

branch_0x802c5844:
    mr      r3, r30
    lhz     r5, 0xc(sp)
    lwz     r12, 0x0(r30)
    mr      r4, r31
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stbx    r0, r31, r3
branch_0x802c5868:
    lhz     r0, 0xc(sp)
    cmpw    r3, r0
    beq-    branch_0x802c5880
    lbz     r0, 0x4(r30)
    ori     r0, r0, 0x1
    stb     r0, 0x4(r30)
branch_0x802c5880:
    mr      r3, r31
branch_0x802c5884:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl readString__14JSUInputStreamFPcUs
readString__14JSUInputStreamFPcUs: # 0x802c589c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    li      r5, 0x2
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    addi    r4, sp, 0x12
    stw     r28, 0x18(sp)
    mr      r28, r3
    lwz     r12, 0x0(r28)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x2
    beq-    branch_0x802c5900
    li      r0, 0x0
    stb     r0, 0x0(r29)
    li      r3, 0x0
    lbz     r0, 0x4(r28)
    ori     r0, r0, 0x1
    stb     r0, 0x4(r28)
    b       branch_0x802c599c

branch_0x802c5900:
    lhz     r5, 0x12(sp)
    clrlwi  r4, r30, 16
    cmplw   r5, r4
    bge-    branch_0x802c5934
    lwz     r12, 0x0(r28)
    mr      r3, r28
    mr      r4, r29
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stbx    r0, r29, r3
    b       branch_0x802c5980

branch_0x802c5934:
    mr      r3, r28
    lwz     r12, 0x0(r28)
    addi    r30, r4, -0x1
    addi    r4, r29, 0x0
    lwz     r12, 0x14(r12)
    addi    r5, r30, 0x0
    mtlr    r12
    blrl
    addi    r31, r3, 0x0
    li      r0, 0x0
    stbx    r0, r29, r31
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lhz     r0, 0x12(sp)
    lwz     r12, 0x10(r12)
    subf    r4, r30, r0
    mtlr    r12
    blrl
    add     r3, r31, r3
branch_0x802c5980:
    lhz     r0, 0x12(sp)
    cmpw    r3, r0
    beq-    branch_0x802c5998
    lbz     r0, 0x4(r28)
    ori     r0, r0, 0x1
    stb     r0, 0x4(r28)
branch_0x802c5998:
    mr      r3, r29
branch_0x802c599c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl skip__14JSUInputStreamFl
skip__14JSUInputStreamFl: # 0x802c59bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    b       branch_0x802c5a1c

branch_0x802c59e4:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    addi    r4, sp, 0x10
    li      r5, 0x1
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x1
    beq-    branch_0x802c5a18
    lbz     r0, 0x4(r29)
    ori     r0, r0, 0x1
    stb     r0, 0x4(r29)
    b       branch_0x802c5a24

branch_0x802c5a18:
    addi    r31, r31, 0x1
branch_0x802c5a1c:
    cmpw    r31, r30
    blt+    branch_0x802c59e4
branch_0x802c5a24:
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl align__20JSURandomInputStreamFl
align__20JSURandomInputStreamFl: # 0x802c5a44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    add     r4, r31, r3
    addi    r4, r4, -0x1
    addi    r0, r31, -0x1
    andc    r0, r4, r0
    subf.   r31, r3, r0
    mr      r4, r0
    beq-    branch_0x802c5ab8
    lwz     r12, 0x0(r30)
    mr      r3, r30
    li      r5, 0x0
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    cmpw    r3, r31
    beq-    branch_0x802c5ab8
    lbz     r0, 0x4(r30)
    ori     r0, r0, 0x1
    stb     r0, 0x4(r30)
branch_0x802c5ab8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl skip__20JSURandomInputStreamFl
skip__20JSURandomInputStreamFl: # 0x802c5ad4
    mflr    r0
    li      r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    cmpw    r3, r31
    beq-    branch_0x802c5b18
    lbz     r0, 0x4(r30)
    ori     r0, r0, 0x1
    stb     r0, 0x4(r30)
branch_0x802c5b18:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl peek__20JSURandomInputStreamFPvl
peek__20JSURandomInputStreamFPvl: # 0x802c5b30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x18(sp)
    mr      r28, r3
    lwz     r12, 0x0(r28)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    addi    r0, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x0(r28)
    mr      r30, r0
    addi    r4, r31, 0x0
    lwz     r12, 0x14(r12)
    addi    r5, r29, 0x0
    mtlr    r12
    blrl
    addi    r31, r3, 0x0
    cmpw    r31, r29
    beq-    branch_0x802c5ba4
    lbz     r0, 0x4(r28)
    ori     r0, r0, 0x1
    stb     r0, 0x4(r28)
branch_0x802c5ba4:
    cmpwi   r31, 0x0
    beq-    branch_0x802c5bc8
    mr      r3, r28
    lwz     r12, 0x0(r28)
    addi    r4, r30, 0x0
    li      r5, 0x0
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x802c5bc8:
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
seek__20JSURandomInputStreamFl17JSUStreamSeekFrom: # 0x802c5bec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x4(r31)
    clrrwi  r0, r0, 1
    stb     r0, 0x4(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

