
.globl setBuffer__20JSUMemoryInputStreamFPCvl
setBuffer__20JSUMemoryInputStreamFPCvl: # 0x802c6164
    stw     r4, 0x8(r3)
    li      r0, 0x0
    stw     r5, 0xc(r3)
    stw     r0, 0x10(r3)
    blr


.globl readData__20JSUMemoryInputStreamFPvl
readData__20JSUMemoryInputStreamFPvl: # 0x802c6178
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r5
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r6, 0x10(r3)
    lwz     r3, 0xc(r3)
    add     r0, r6, r31
    cmpw    r0, r3
    ble-    branch_0x802c61ac
    subf    r31, r6, r3
branch_0x802c61ac:
    cmpwi   r31, 0x0
    ble-    branch_0x802c61d4
    lwz     r0, 0x8(r30)
    addi    r3, r4, 0x0
    addi    r5, r31, 0x0
    add     r4, r0, r6
    bl      memcpy
    lwz     r0, 0x10(r30)
    add     r0, r0, r31
    stw     r0, 0x10(r30)
branch_0x802c61d4:
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl seekPos__20JSUMemoryInputStreamFl17JSUStreamSeekFrom
seekPos__20JSUMemoryInputStreamFl17JSUStreamSeekFrom: # 0x802c61f0
    cmpwi   r5, 0x1
    lwz     r6, 0x10(r3)
    beq-    branch_0x802c6230
    bge-    branch_0x802c620c
    cmpwi   r5, 0x0
    bge-    branch_0x802c6218
    b       branch_0x802c6238

branch_0x802c620c:
    cmpwi   r5, 0x3
    bge-    branch_0x802c6238
    b       branch_0x802c6220

branch_0x802c6218:
    stw     r4, 0x10(r3)
    b       branch_0x802c6238

branch_0x802c6220:
    lwz     r0, 0xc(r3)
    subf    r0, r4, r0
    stw     r0, 0x10(r3)
    b       branch_0x802c6238

branch_0x802c6230:
    add     r0, r6, r4
    stw     r0, 0x10(r3)
branch_0x802c6238:
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x0
    bge-    branch_0x802c624c
    li      r0, 0x0
    stw     r0, 0x10(r3)
branch_0x802c624c:
    lwz     r0, 0x10(r3)
    lwz     r4, 0xc(r3)
    cmpw    r0, r4
    ble-    branch_0x802c6260
    stw     r4, 0x10(r3)
branch_0x802c6260:
    lwz     r0, 0x10(r3)
    subf    r3, r6, r0
    blr


.globl setBuffer__21JSUMemoryOutputStreamFPvl
setBuffer__21JSUMemoryOutputStreamFPvl: # 0x802c626c
    stw     r4, 0x8(r3)
    li      r0, 0x0
    stw     r5, 0xc(r3)
    stw     r0, 0x10(r3)
    blr


.globl writeData__21JSUMemoryOutputStreamFPCvl
writeData__21JSUMemoryOutputStreamFPCvl: # 0x802c6280
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r5
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r3, 0x10(r3)
    lwz     r5, 0xc(r30)
    add     r0, r3, r31
    cmpw    r0, r5
    ble-    branch_0x802c62b4
    subf    r31, r3, r5
branch_0x802c62b4:
    cmpwi   r31, 0x0
    ble-    branch_0x802c62d8
    lwz     r0, 0x8(r30)
    addi    r5, r31, 0x0
    add     r3, r0, r3
    bl      memcpy
    lwz     r0, 0x10(r30)
    add     r0, r0, r31
    stw     r0, 0x10(r30)
branch_0x802c62d8:
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl seekPos__21JSUMemoryOutputStreamFl17JSUStreamSeekFrom
seekPos__21JSUMemoryOutputStreamFl17JSUStreamSeekFrom: # 0x802c62f4
    cmpwi   r5, 0x1
    lwz     r6, 0x10(r3)
    beq-    branch_0x802c6334
    bge-    branch_0x802c6310
    cmpwi   r5, 0x0
    bge-    branch_0x802c631c
    b       branch_0x802c633c

branch_0x802c6310:
    cmpwi   r5, 0x3
    bge-    branch_0x802c633c
    b       branch_0x802c6324

branch_0x802c631c:
    stw     r4, 0x10(r3)
    b       branch_0x802c633c

branch_0x802c6324:
    lwz     r0, 0xc(r3)
    subf    r0, r4, r0
    stw     r0, 0x10(r3)
    b       branch_0x802c633c

branch_0x802c6334:
    add     r0, r6, r4
    stw     r0, 0x10(r3)
branch_0x802c633c:
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x0
    bge-    branch_0x802c6350
    li      r0, 0x0
    stw     r0, 0x10(r3)
branch_0x802c6350:
    lwz     r0, 0x10(r3)
    lwz     r4, 0xc(r3)
    cmpw    r0, r4
    ble-    branch_0x802c6364
    stw     r4, 0x10(r3)
branch_0x802c6364:
    lwz     r0, 0x10(r3)
    subf    r3, r6, r0
    blr


.globl getLength__21JSUMemoryOutputStreamCFv
getLength__21JSUMemoryOutputStreamCFv: # 0x802c6370
    lwz     r3, 0xc(r3)
    blr


.globl getPosition__21JSUMemoryOutputStreamCFv
getPosition__21JSUMemoryOutputStreamCFv: # 0x802c6378
    lwz     r3, 0x10(r3)
    blr

