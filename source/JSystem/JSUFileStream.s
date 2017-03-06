
.globl __ct__18JSUFileInputStreamFP7JKRFile
__ct__18JSUFileInputStreamFP7JKRFile: # 0x802c6380
    lis     r5, 0x803b
    subi    r0, r5, 0xf0c
    stw     r0, 0x0(r3)
    li      r6, 0x0
    lis     r5, 0x803e
    stb     r6, 0x4(r3)
    addi    r0, r5, 0x184
    lis     r5, 0x803e
    stw     r0, 0x0(r3)
    addi    r0, r5, 0x160
    lis     r5, 0x803e
    stw     r0, 0x0(r3)
    addi    r0, r5, 0x1f0
    stw     r0, 0x0(r3)
    stw     r4, 0x8(r3)
    stw     r6, 0xc(r3)
    blr


.globl readData__18JSUFileInputStreamFPvl
readData__18JSUFileInputStreamFPvl: # 0x802c63c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    mr      r28, r3
    lwz     r3, 0x8(r3)
    lbz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802c6474
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(r28)
    add     r0, r0, r30
    cmplw   r0, r3
    ble-    branch_0x802c643c
    lwz     r3, 0x8(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(r28)
    subf    r30, r0, r3
branch_0x802c643c:
    cmpwi   r30, 0x0
    ble-    branch_0x802c6474
    lwz     r3, 0x8(r28)
    mr      r4, r29
    lwz     r6, 0xc(r28)
    mr      r5, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(r28)
    addi    r31, r3, 0x0
    add     r0, r0, r31
    stw     r0, 0xc(r28)
branch_0x802c6474:
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl seekPos__18JSUFileInputStreamFl17JSUStreamSeekFrom
seekPos__18JSUFileInputStreamFl17JSUStreamSeekFrom: # 0x802c6498
    mflr    r0
    cmpwi   r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r4
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    lwz     r31, 0xc(r3)
    beq-    branch_0x802c6508
    bge-    branch_0x802c64d4
    cmpwi   r5, 0x0
    bge-    branch_0x802c64e0
    b       branch_0x802c6510

branch_0x802c64d4:
    cmpwi   r5, 0x3
    bge-    branch_0x802c6510
    b       branch_0x802c64e8

branch_0x802c64e0:
    stw     r30, 0xc(r29)
    b       branch_0x802c6510

branch_0x802c64e8:
    lwz     r3, 0x8(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    subf    r0, r30, r3
    stw     r0, 0xc(r29)
    b       branch_0x802c6510

branch_0x802c6508:
    add     r0, r31, r30
    stw     r0, 0xc(r29)
branch_0x802c6510:
    lwz     r0, 0xc(r29)
    cmpwi   r0, 0x0
    bge-    branch_0x802c6524
    li      r0, 0x0
    stw     r0, 0xc(r29)
branch_0x802c6524:
    lwz     r3, 0x8(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(r29)
    cmpw    r0, r3
    ble-    branch_0x802c655c
    lwz     r3, 0x8(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    stw     r3, 0xc(r29)
branch_0x802c655c:
    lwz     r0, 0xc(r29)
    lwz     r30, 0x20(sp)
    subf    r3, r31, r0
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r29, 0x1c(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __dt__18JSUFileInputStreamFv
__dt__18JSUFileInputStreamFv: # 0x802c6580
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802c65d8
    lis     r3, 0x803e
    addi    r0, r3, 0x1f0
    stw     r0, 0x0(r30)
    beq-    branch_0x802c65c8
    lis     r3, 0x803e
    addi    r0, r3, 0x160
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__14JSUInputStreamFv
branch_0x802c65c8:
    extsh.  r0, r31
    ble-    branch_0x802c65d8
    mr      r3, r30
    bl      __dl__FPv
branch_0x802c65d8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getLength__18JSUFileInputStreamCFv
getLength__18JSUFileInputStreamCFv: # 0x802c65f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x8(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getPosition__18JSUFileInputStreamCFv
getPosition__18JSUFileInputStreamCFv: # 0x802c6624
    lwz     r3, 0xc(r3)
    blr

