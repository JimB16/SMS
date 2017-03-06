
.globl load__20J3DAnmLoaderDataBaseFPCv
load__20J3DAnmLoaderDataBaseFPCv: # 0x802e8ca4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    mr.     r31, r3
    stw     r30, 0x98(sp)
    bne-    branch_0x802e8cc8
    li      r3, 0x0
    b       branch_0x802e938c

branch_0x802e8cc8:
    lwz     r3, 0x0(r31)
    addis   r0, r3, 0xb5cd
    cmplwi  r0, 0x4431
    bne-    branch_0x802e9388
    lis     r3, 0x6272
    lwz     r5, 0x4(r31)
    addi    r0, r3, 0x6b31
    cmpw    r5, r0
    beq-    branch_0x802e8fc4
    bge-    branch_0x802e8d5c
    lis     r4, 0x626c
    addi    r0, r4, 0x6b31
    cmpw    r5, r0
    beq-    branch_0x802e8ea4
    bge-    branch_0x802e8d38
    lis     r3, 0x6263
    addi    r0, r3, 0x6b31
    cmpw    r5, r0
    beq-    branch_0x802e8db8
    bge-    branch_0x802e8d28
    addi    r0, r3, 0x6131
    cmpw    r5, r0
    beq-    branch_0x802e90dc
    b       branch_0x802e9380

branch_0x802e8d28:
    addi    r0, r4, 0x6131
    cmpw    r5, r0
    beq-    branch_0x802e92a8
    b       branch_0x802e9380

branch_0x802e8d38:
    lis     r3, 0x6270
    addi    r0, r3, 0x6b31
    cmpw    r5, r0
    beq-    branch_0x802e8e38
    bge-    branch_0x802e9380
    addi    r0, r3, 0x6131
    cmpw    r5, r0
    beq-    branch_0x802e9158
    b       branch_0x802e9380

branch_0x802e8d5c:
    lis     r3, 0x6276
    addi    r0, r3, 0x6131
    cmpw    r5, r0
    beq-    branch_0x802e9238
    bge-    branch_0x802e8d94
    lis     r3, 0x6274
    addi    r0, r3, 0x7031
    cmpw    r5, r0
    beq-    branch_0x802e91c4
    bge-    branch_0x802e9380
    addi    r0, r3, 0x6b31
    cmpw    r5, r0
    beq-    branch_0x802e8f1c
    b       branch_0x802e9380

branch_0x802e8d94:
    lis     r3, 0x6278
    addi    r0, r3, 0x6b31
    cmpw    r5, r0
    beq-    branch_0x802e907c
    bge-    branch_0x802e9380
    addi    r0, r3, 0x6131
    cmpw    r5, r0
    beq-    branch_0x802e9320
    b       branch_0x802e9380

branch_0x802e8db8:
    addi    r3, sp, 0x8c
    bl      __ct__19J3DAnmKeyLoader_v15Fv
    li      r3, 0x2c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802e8e10
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __ct__10J3DAnmBaseFs
    lis     r3, 0x803e
    addi    r0, r3, 0x1334
    stw     r0, 0xc(r30)
    li      r4, 0x0
    lis     r3, 0x803e
    stw     r4, 0x10(r30)
    addi    r0, r3, 0x1320
    stw     r4, 0x14(r30)
    stw     r4, 0x18(r30)
    stw     r4, 0x8(r30)
    stw     r0, 0xc(r30)
    stw     r4, 0x24(r30)
    stw     r4, 0x28(r30)
branch_0x802e8e10:
    stw     r30, 0x90(sp)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x8c
    bl      load__19J3DAnmKeyLoader_v15FPCv
    addi    r31, r3, 0x0
    addi    r3, sp, 0x8c
    li      r4, -0x1
    bl      __dt__19J3DAnmKeyLoader_v15Fv
    mr      r3, r31
    b       branch_0x802e938c

branch_0x802e8e38:
    addi    r3, sp, 0x84
    bl      __ct__19J3DAnmKeyLoader_v15Fv
    li      r3, 0x38
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802e8e7c
    mr      r3, r30
    bl      __ct__11J3DAnmColorFv
    lis     r3, 0x803e
    addi    r0, r3, 0x1290
    stw     r0, 0xc(r30)
    li      r0, 0x0
    stw     r0, 0x24(r30)
    stw     r0, 0x28(r30)
    stw     r0, 0x2c(r30)
    stw     r0, 0x30(r30)
    stw     r0, 0x34(r30)
branch_0x802e8e7c:
    stw     r30, 0x88(sp)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x84
    bl      load__19J3DAnmKeyLoader_v15FPCv
    addi    r31, r3, 0x0
    addi    r3, sp, 0x84
    li      r4, -0x1
    bl      __dt__19J3DAnmKeyLoader_v15Fv
    mr      r3, r31
    b       branch_0x802e938c

branch_0x802e8ea4:
    addi    r3, sp, 0x7c
    bl      __ct__19J3DAnmKeyLoader_v15Fv
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802e8ef4
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __ct__10J3DAnmBaseFs
    lis     r3, 0x803e
    addi    r0, r3, 0x1300
    stw     r0, 0xc(r30)
    li      r5, 0x0
    lis     r3, 0x803e
    stw     r5, 0x10(r30)
    li      r4, 0x3
    addi    r0, r3, 0x12f0
    stw     r4, 0x8(r30)
    stw     r0, 0xc(r30)
    stw     r5, 0x14(r30)
branch_0x802e8ef4:
    stw     r30, 0x80(sp)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x7c
    bl      load__19J3DAnmKeyLoader_v15FPCv
    addi    r31, r3, 0x0
    addi    r3, sp, 0x7c
    li      r4, -0x1
    bl      __dt__19J3DAnmKeyLoader_v15Fv
    mr      r3, r31
    b       branch_0x802e938c

branch_0x802e8f1c:
    addi    r3, sp, 0x74
    bl      __ct__19J3DAnmKeyLoader_v15Fv
    li      r3, 0x70
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802e8f9c
    mr      r3, r30
    bl      __ct__10J3DAnmBaseFv
    lis     r3, 0x803e
    addi    r0, r3, 0x143c
    stw     r0, 0xc(r30)
    li      r3, 0x0
    li      r0, 0x4
    stw     r3, 0x10(r30)
    sth     r3, 0x14(r30)
    sth     r3, 0x1c(r30)
    sth     r3, 0x1e(r30)
    sth     r3, 0x20(r30)
    stw     r3, 0x18(r30)
    stw     r3, 0x24(r30)
    stw     r3, 0x28(r30)
    stw     r3, 0x2c(r30)
    sth     r3, 0x54(r30)
    sth     r3, 0x40(r30)
    sth     r3, 0x42(r30)
    sth     r3, 0x44(r30)
    stw     r3, 0x58(r30)
    stw     r3, 0x48(r30)
    stw     r3, 0x4c(r30)
    stw     r3, 0x50(r30)
    stw     r3, 0x6c(r30)
    stw     r0, 0x8(r30)
branch_0x802e8f9c:
    stw     r30, 0x78(sp)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x74
    bl      load__19J3DAnmKeyLoader_v15FPCv
    addi    r31, r3, 0x0
    addi    r3, sp, 0x74
    li      r4, -0x1
    bl      __dt__19J3DAnmKeyLoader_v15Fv
    mr      r3, r31
    b       branch_0x802e938c

branch_0x802e8fc4:
    addi    r3, sp, 0x6c
    bl      __ct__19J3DAnmKeyLoader_v15Fv
    li      r3, 0x5c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802e9054
    mr      r3, r30
    bl      __ct__10J3DAnmBaseFv
    lis     r3, 0x803e
    addi    r0, r3, 0x1430
    stw     r0, 0xc(r30)
    li      r3, 0x0
    li      r0, 0x5
    sth     r3, 0x10(r30)
    sth     r3, 0x12(r30)
    sth     r3, 0x14(r30)
    sth     r3, 0x16(r30)
    sth     r3, 0x18(r30)
    sth     r3, 0x1a(r30)
    sth     r3, 0x1c(r30)
    sth     r3, 0x1e(r30)
    sth     r3, 0x20(r30)
    sth     r3, 0x22(r30)
    stw     r3, 0x24(r30)
    stw     r3, 0x28(r30)
    stw     r3, 0x2c(r30)
    stw     r3, 0x30(r30)
    stw     r3, 0x3c(r30)
    stw     r3, 0x40(r30)
    stw     r3, 0x44(r30)
    stw     r3, 0x48(r30)
    stw     r3, 0x4c(r30)
    stw     r3, 0x50(r30)
    stw     r3, 0x54(r30)
    stw     r3, 0x58(r30)
    stw     r0, 0x8(r30)
branch_0x802e9054:
    stw     r30, 0x70(sp)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x6c
    bl      load__19J3DAnmKeyLoader_v15FPCv
    addi    r31, r3, 0x0
    addi    r3, sp, 0x6c
    li      r4, -0x1
    bl      __dt__19J3DAnmKeyLoader_v15Fv
    mr      r3, r31
    b       branch_0x802e938c

branch_0x802e907c:
    addi    r3, sp, 0x64
    bl      __ct__19J3DAnmKeyLoader_v15Fv
    li      r3, 0x34
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802e90b4
    mr      r3, r30
    bl      __ct__14J3DAnmVtxColorFv
    lis     r3, 0x803e
    addi    r0, r3, 0x12c0
    stw     r0, 0xc(r30)
    li      r0, 0x0
    stw     r0, 0x1c(r30)
    stw     r0, 0x20(r30)
branch_0x802e90b4:
    stw     r30, 0x68(sp)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x64
    bl      load__19J3DAnmKeyLoader_v15FPCv
    addi    r31, r3, 0x0
    addi    r3, sp, 0x64
    li      r4, -0x1
    bl      __dt__19J3DAnmKeyLoader_v15Fv
    mr      r3, r31
    b       branch_0x802e938c

branch_0x802e90dc:
    addi    r3, sp, 0x5c
    bl      __ct__20J3DAnmFullLoader_v15Fv
    li      r3, 0x28
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802e9130
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __ct__10J3DAnmBaseFs
    lis     r3, 0x803e
    addi    r0, r3, 0x1334
    stw     r0, 0xc(r30)
    li      r4, 0x0
    lis     r3, 0x803e
    stw     r4, 0x10(r30)
    addi    r0, r3, 0x1344
    stw     r4, 0x14(r30)
    stw     r4, 0x18(r30)
    stw     r4, 0x8(r30)
    stw     r0, 0xc(r30)
    stw     r4, 0x24(r30)
branch_0x802e9130:
    stw     r30, 0x60(sp)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x5c
    bl      load__20J3DAnmFullLoader_v15FPCv
    addi    r31, r3, 0x0
    addi    r3, sp, 0x5c
    li      r4, -0x1
    bl      __dt__20J3DAnmFullLoader_v15Fv
    mr      r3, r31
    b       branch_0x802e938c

branch_0x802e9158:
    addi    r3, sp, 0x54
    bl      __ct__20J3DAnmFullLoader_v15Fv
    li      r3, 0x38
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802e919c
    mr      r3, r30
    bl      __ct__11J3DAnmColorFv
    lis     r3, 0x803e
    addi    r0, r3, 0x12b0
    stw     r0, 0xc(r30)
    li      r0, 0x0
    stw     r0, 0x24(r30)
    stw     r0, 0x28(r30)
    stw     r0, 0x2c(r30)
    stw     r0, 0x30(r30)
    stw     r0, 0x34(r30)
branch_0x802e919c:
    stw     r30, 0x58(sp)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x54
    bl      load__20J3DAnmFullLoader_v15FPCv
    addi    r31, r3, 0x0
    addi    r3, sp, 0x54
    li      r4, -0x1
    bl      __dt__20J3DAnmFullLoader_v15Fv
    mr      r3, r31
    b       branch_0x802e938c

branch_0x802e91c4:
    addi    r3, sp, 0x4c
    bl      __ct__20J3DAnmFullLoader_v15Fv
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802e9210
    mr      r3, r30
    bl      __ct__10J3DAnmBaseFv
    lis     r3, 0x803e
    addi    r0, r3, 0x1424
    stw     r0, 0xc(r30)
    li      r3, 0x0
    li      r0, 0x2
    stw     r3, 0x10(r30)
    stw     r3, 0x14(r30)
    stw     r0, 0x8(r30)
    sth     r3, 0x1a(r30)
    stw     r3, 0x1c(r30)
    stw     r3, 0x20(r30)
branch_0x802e9210:
    stw     r30, 0x50(sp)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x4c
    bl      load__20J3DAnmFullLoader_v15FPCv
    addi    r31, r3, 0x0
    addi    r3, sp, 0x4c
    li      r4, -0x1
    bl      __dt__20J3DAnmFullLoader_v15Fv
    mr      r3, r31
    b       branch_0x802e938c

branch_0x802e9238:
    addi    r3, sp, 0x44
    bl      __ct__20J3DAnmFullLoader_v15Fv
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802e9280
    mr      r3, r30
    bl      __ct__10J3DAnmBaseFv
    lis     r3, 0x803e
    addi    r0, r3, 0x1418
    stw     r0, 0xc(r30)
    li      r3, 0x0
    li      r0, 0x6
    sth     r3, 0x10(r30)
    stw     r3, 0x14(r30)
    sth     r3, 0x12(r30)
    stw     r3, 0x18(r30)
    stw     r0, 0x8(r30)
branch_0x802e9280:
    stw     r30, 0x48(sp)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x44
    bl      load__20J3DAnmFullLoader_v15FPCv
    addi    r31, r3, 0x0
    addi    r3, sp, 0x44
    li      r4, -0x1
    bl      __dt__20J3DAnmFullLoader_v15Fv
    mr      r3, r31
    b       branch_0x802e938c

branch_0x802e92a8:
    addi    r3, sp, 0x3c
    bl      __ct__20J3DAnmFullLoader_v15Fv
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802e92f8
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __ct__10J3DAnmBaseFs
    lis     r3, 0x803e
    addi    r0, r3, 0x1300
    stw     r0, 0xc(r30)
    li      r5, 0x0
    lis     r3, 0x803e
    stw     r5, 0x10(r30)
    li      r4, 0x3
    addi    r0, r3, 0x1310
    stw     r4, 0x8(r30)
    stw     r0, 0xc(r30)
    stw     r5, 0x14(r30)
branch_0x802e92f8:
    stw     r30, 0x40(sp)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x3c
    bl      load__20J3DAnmFullLoader_v15FPCv
    addi    r31, r3, 0x0
    addi    r3, sp, 0x3c
    li      r4, -0x1
    bl      __dt__20J3DAnmFullLoader_v15Fv
    mr      r3, r31
    b       branch_0x802e938c

branch_0x802e9320:
    addi    r3, sp, 0x34
    bl      __ct__20J3DAnmFullLoader_v15Fv
    li      r3, 0x34
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802e9358
    mr      r3, r30
    bl      __ct__14J3DAnmVtxColorFv
    lis     r3, 0x803e
    addi    r0, r3, 0x12e0
    stw     r0, 0xc(r30)
    li      r0, 0x0
    stw     r0, 0x1c(r30)
    stw     r0, 0x20(r30)
branch_0x802e9358:
    stw     r30, 0x38(sp)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x34
    bl      load__20J3DAnmFullLoader_v15FPCv
    addi    r31, r3, 0x0
    addi    r3, sp, 0x34
    li      r4, -0x1
    bl      __dt__20J3DAnmFullLoader_v15Fv
    mr      r3, r31
    b       branch_0x802e938c

branch_0x802e9380:
    li      r3, 0x0
    b       branch_0x802e938c

branch_0x802e9388:
    li      r3, 0x0
branch_0x802e938c:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    addi    sp, sp, 0xa0
    blr


.globl __ct__14J3DAnmVtxColorFv
__ct__14J3DAnmVtxColorFv: # 0x802e93a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    bl      __ct__10J3DAnmBaseFv
    lis     r3, 0x803e
    addi    r0, r3, 0x12d0
    stw     r0, 0xc(r31)
    li      r3, 0x7
    li      r0, 0x0
    stw     r3, 0x8(r31)
    mr      r3, r31
    sth     r0, 0x10(r31)
    sth     r0, 0x12(r31)
    stw     r0, 0x14(r31)
    stw     r0, 0x18(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__11J3DAnmColorFv
__ct__11J3DAnmColorFv: # 0x802e93fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__10J3DAnmBaseFv
    lis     r3, 0x803e
    addi    r0, r3, 0x12a0
    stw     r0, 0xc(r31)
    li      r4, 0x0
    li      r0, 0x1
    sth     r4, 0x10(r31)
    mr      r3, r31
    sth     r4, 0x12(r31)
    sth     r4, 0x14(r31)
    sth     r4, 0x16(r31)
    sth     r4, 0x18(r31)
    stw     r4, 0x1c(r31)
    stw     r4, 0x20(r31)
    stw     r0, 0x8(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__20J3DAnmFullLoader_v15Fv
__ct__20J3DAnmFullLoader_v15Fv: # 0x802e9460
    lis     r4, 0x803e
    addi    r0, r4, 0x1408
    lis     r4, 0x803e
    stw     r0, 0x0(r3)
    addi    r0, r4, 0x13f8
    stw     r0, 0x0(r3)
    blr


.globl __dt__12J3DAnmLoaderFv
__dt__12J3DAnmLoaderFv: # 0x802e947c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e94b0
    lis     r3, 0x803e
    addi    r3, r3, 0x1408
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x802e94b0
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e94b0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__20J3DAnmFullLoader_v15Fv
__dt__20J3DAnmFullLoader_v15Fv: # 0x802e94c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e950c
    lis     r3, 0x803e
    addi    r0, r3, 0x13f8
    stw     r0, 0x0(r31)
    beq-    branch_0x802e94fc
    lis     r3, 0x803e
    addi    r0, r3, 0x1408
    stw     r0, 0x0(r31)
branch_0x802e94fc:
    extsh.  r0, r4
    ble-    branch_0x802e950c
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e950c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__19J3DAnmKeyLoader_v15Fv
__ct__19J3DAnmKeyLoader_v15Fv: # 0x802e9524
    lis     r4, 0x803e
    addi    r0, r4, 0x1408
    lis     r4, 0x803e
    stw     r0, 0x0(r3)
    addi    r0, r4, 0x13e8
    stw     r0, 0x0(r3)
    blr


.globl __dt__19J3DAnmKeyLoader_v15Fv
__dt__19J3DAnmKeyLoader_v15Fv: # 0x802e9540
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e9584
    lis     r3, 0x803e
    addi    r0, r3, 0x13e8
    stw     r0, 0x0(r31)
    beq-    branch_0x802e9574
    lis     r3, 0x803e
    addi    r0, r3, 0x1408
    stw     r0, 0x0(r31)
branch_0x802e9574:
    extsh.  r0, r4
    ble-    branch_0x802e9584
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e9584:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__20J3DAnmFullLoader_v15FPCv
load__20J3DAnmFullLoader_v15FPCv: # 0x802e959c
    mflr    r0
    lis     r5, 0x5643
    stw     r0, 0x4(sp)
    lis     r6, 0x5041
    lis     r9, 0x5450
    stwu    sp, -0x38(sp)
    lis     r8, 0x434c
    lis     r7, 0x414e
    stmw    r22, 0x10(sp)
    addi    r31, r4, 0x0
    lis     r4, 0x5641
    addi    r30, r3, 0x0
    addi    r23, r31, 0x20
    addi    r29, r4, 0x4631
    addi    r28, r5, 0x4631
    addi    r27, r6, 0x4631
    addi    r24, r9, 0x5431
    addi    r25, r8, 0x4631
    addi    r26, r7, 0x4631
    li      r22, 0x0
    b       branch_0x802e96a4

branch_0x802e95f0:
    lwz     r0, 0x0(r23)
    cmpw    r0, r24
    beq-    branch_0x802e965c
    bge-    branch_0x802e9624
    cmpw    r0, r25
    beq-    branch_0x802e966c
    bge-    branch_0x802e9618
    cmpw    r0, r26
    beq-    branch_0x802e963c
    b       branch_0x802e9698

branch_0x802e9618:
    cmpw    r0, r27
    beq-    branch_0x802e964c
    b       branch_0x802e9698

branch_0x802e9624:
    cmpw    r0, r28
    beq-    branch_0x802e968c
    bge-    branch_0x802e9698
    cmpw    r0, r29
    beq-    branch_0x802e967c
    b       branch_0x802e9698

branch_0x802e963c:
    addi    r3, r30, 0x0
    addi    r4, r23, 0x0
    bl      readAnmTransform__20J3DAnmFullLoader_v15FPC23J3DAnmTransformFullData
    b       branch_0x802e9698

branch_0x802e964c:
    addi    r3, r30, 0x0
    addi    r4, r23, 0x0
    bl      readAnmColor__20J3DAnmFullLoader_v15FPC19J3DAnmColorFullData
    b       branch_0x802e9698

branch_0x802e965c:
    addi    r3, r30, 0x0
    addi    r4, r23, 0x0
    bl      readAnmTexPattern__20J3DAnmFullLoader_v15FPC24J3DAnmTexPatternFullData
    b       branch_0x802e9698

branch_0x802e966c:
    addi    r3, r30, 0x0
    addi    r4, r23, 0x0
    bl      readAnmCluster__20J3DAnmFullLoader_v15FPC21J3DAnmClusterFullData
    b       branch_0x802e9698

branch_0x802e967c:
    addi    r3, r30, 0x0
    addi    r4, r23, 0x0
    bl      readAnmVisibility__20J3DAnmFullLoader_v15FPC24J3DAnmVisibilityFullData
    b       branch_0x802e9698

branch_0x802e968c:
    addi    r3, r30, 0x0
    addi    r4, r23, 0x0
    bl      readAnmVtxColor__20J3DAnmFullLoader_v15FPC22J3DAnmVtxColorFullData
branch_0x802e9698:
    lwz     r0, 0x4(r23)
    addi    r22, r22, 0x1
    add     r23, r23, r0
branch_0x802e96a4:
    lwz     r0, 0xc(r31)
    cmplw   r22, r0
    blt+    branch_0x802e95f0
    lwz     r3, 0x4(r30)
    lmw     r22, 0x10(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl readAnmTransform__20J3DAnmFullLoader_v15FPC23J3DAnmTransformFullData
readAnmTransform__20J3DAnmFullLoader_v15FPC23J3DAnmTransformFullData: # 0x802e96c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r4
    lwz     r31, 0x4(r3)
    mr      r3, r30
    lhz     r0, 0xc(r4)
    sth     r0, 0x22(r31)
    lha     r0, 0xa(r4)
    sth     r0, 0x2(r31)
    lbz     r0, 0x8(r4)
    stb     r0, 0x0(r31)
    lfs     f0, 0x2f0(rtoc)
    stfs    f0, 0x4(r31)
    lwz     r4, 0x14(r4)
    bl      JSUConvertOffsetToPtr_24J3DAnmTransformFullTable___FPCvPCv
    stw     r3, 0x24(r31)
    mr      r3, r30
    lwz     r4, 0x18(r30)
    bl      JSUConvertOffsetToPtr_f___FPCvPCv
    stw     r3, 0x10(r31)
    mr      r3, r30
    lwz     r4, 0x1c(r30)
    bl      JSUConvertOffsetToPtr_s___FPCvPCv
    stw     r3, 0x14(r31)
    mr      r3, r30
    lwz     r4, 0x20(r30)
    bl      JSUConvertOffsetToPtr_f___FPCvPCv
    stw     r3, 0x18(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl readAnmColor__20J3DAnmFullLoader_v15FPC19J3DAnmColorFullData
readAnmColor__20J3DAnmFullLoader_v15FPC19J3DAnmColorFullData: # 0x802e975c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r4
    stw     r29, 0x14(sp)
    lwz     r31, 0x4(r3)
    mr      r3, r30
    lha     r0, 0xc(r4)
    sth     r0, 0x2(r31)
    lbz     r0, 0x8(r4)
    stb     r0, 0x0(r31)
    lfs     f0, 0x2f0(rtoc)
    stfs    f0, 0x4(r31)
    lhz     r0, 0xe(r4)
    sth     r0, 0x18(r31)
    lwz     r4, 0x18(r4)
    bl      JSUConvertOffsetToPtr_20J3DAnmColorFullTable___FPCvPCv
    stw     r3, 0x34(r31)
    mr      r3, r30
    lwz     r4, 0x24(r30)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    stw     r3, 0x24(r31)
    mr      r3, r30
    lwz     r4, 0x28(r30)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    stw     r3, 0x28(r31)
    mr      r3, r30
    lwz     r4, 0x2c(r30)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    stw     r3, 0x2c(r31)
    mr      r3, r30
    lwz     r4, 0x30(r30)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    stw     r3, 0x30(r31)
    mr      r3, r30
    lwz     r4, 0x1c(r30)
    bl      JSUConvertOffsetToPtr_Us___FPCvPCv
    stw     r3, 0x1c(r31)
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802e9824
    mr      r3, r30
    lwz     r4, 0x20(r30)
    bl      JSUConvertOffsetToPtr_7ResNTAB___FPCvPCv
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    bl      __ct__10JUTNameTabFPC7ResNTAB
branch_0x802e9824:
    stw     r29, 0x20(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl readAnmTexPattern__20J3DAnmFullLoader_v15FPC24J3DAnmTexPatternFullData
readAnmTexPattern__20J3DAnmFullLoader_v15FPC24J3DAnmTexPatternFullData: # 0x802e9844
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r4
    stw     r29, 0x14(sp)
    lwz     r31, 0x4(r3)
    mr      r3, r30
    lha     r0, 0xa(r4)
    sth     r0, 0x2(r31)
    lbz     r0, 0x8(r4)
    stb     r0, 0x0(r31)
    lfs     f0, 0x2f0(rtoc)
    stfs    f0, 0x4(r31)
    lhz     r0, 0xc(r4)
    sth     r0, 0x1a(r31)
    lhz     r0, 0xe(r4)
    sth     r0, 0x18(r31)
    lwz     r4, 0x10(r4)
    bl      JSUConvertOffsetToPtr_25J3DAnmTexPatternFullTable___FPCvPCv
    stw     r3, 0x14(r31)
    mr      r3, r30
    lwz     r4, 0x14(r30)
    bl      JSUConvertOffsetToPtr_Us___FPCvPCv
    stw     r3, 0x10(r31)
    mr      r3, r30
    lwz     r4, 0x18(r30)
    bl      JSUConvertOffsetToPtr_Us___FPCvPCv
    stw     r3, 0x1c(r31)
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802e98e4
    mr      r3, r30
    lwz     r4, 0x1c(r30)
    bl      JSUConvertOffsetToPtr_7ResNTAB___FPCvPCv
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    bl      __ct__10JUTNameTabFPC7ResNTAB
branch_0x802e98e4:
    stw     r29, 0x20(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl readAnmVisibility__20J3DAnmFullLoader_v15FPC24J3DAnmVisibilityFullData
readAnmVisibility__20J3DAnmFullLoader_v15FPC24J3DAnmVisibilityFullData: # 0x802e9904
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r4
    lwz     r31, 0x4(r3)
    mr      r3, r30
    lha     r0, 0xa(r4)
    sth     r0, 0x2(r31)
    lbz     r0, 0x8(r4)
    stb     r0, 0x0(r31)
    lfs     f0, 0x2f0(rtoc)
    stfs    f0, 0x4(r31)
    lhz     r0, 0xc(r4)
    sth     r0, 0x10(r31)
    lhz     r0, 0xe(r4)
    sth     r0, 0x12(r31)
    lwz     r4, 0x10(r4)
    bl      JSUConvertOffsetToPtr_25J3DAnmVisibilityFullTable___FPCvPCv
    stw     r3, 0x14(r31)
    mr      r3, r30
    lwz     r4, 0x14(r30)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    stw     r3, 0x18(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl readAnmCluster__20J3DAnmFullLoader_v15FPC21J3DAnmClusterFullData
readAnmCluster__20J3DAnmFullLoader_v15FPC21J3DAnmClusterFullData: # 0x802e9980
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r4
    lwz     r31, 0x4(r3)
    mr      r3, r30
    lha     r0, 0xa(r4)
    sth     r0, 0x2(r31)
    lbz     r0, 0x8(r4)
    stb     r0, 0x0(r31)
    lfs     f0, 0x2f0(rtoc)
    stfs    f0, 0x4(r31)
    lwz     r4, 0x10(r4)
    bl      JSUConvertOffsetToPtr_22J3DAnmClusterFullTable___FPCvPCv
    stw     r3, 0x14(r31)
    mr      r3, r30
    lwz     r4, 0x14(r30)
    bl      JSUConvertOffsetToPtr_f___FPCvPCv
    stw     r3, 0x10(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl readAnmVtxColor__20J3DAnmFullLoader_v15FPC22J3DAnmVtxColorFullData
readAnmVtxColor__20J3DAnmFullLoader_v15FPC22J3DAnmVtxColorFullData: # 0x802e99ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r4
    stw     r29, 0x14(sp)
    lwz     r31, 0x4(r3)
    mr      r3, r30
    lha     r0, 0xa(r4)
    sth     r0, 0x2(r31)
    lbz     r0, 0x8(r4)
    stb     r0, 0x0(r31)
    lfs     f0, 0x2f0(rtoc)
    stfs    f0, 0x4(r31)
    lhz     r0, 0xc(r4)
    sth     r0, 0x10(r31)
    lhz     r0, 0xe(r4)
    sth     r0, 0x12(r31)
    lwz     r4, 0x18(r4)
    bl      JSUConvertOffsetToPtr_20J3DAnmColorFullTable___FPCvPCv
    stw     r3, 0x1c(r31)
    mr      r3, r30
    lwz     r4, 0x1c(r30)
    bl      JSUConvertOffsetToPtr_20J3DAnmColorFullTable___FPCvPCv
    stw     r3, 0x20(r31)
    mr      r3, r30
    lwz     r4, 0x20(r30)
    bl      JSUConvertOffsetToPtr_23J3DAnmVtxColorIndexData___FPCvPCv
    stw     r3, 0x14(r31)
    mr      r3, r30
    lwz     r4, 0x24(r30)
    bl      JSUConvertOffsetToPtr_23J3DAnmVtxColorIndexData___FPCvPCv
    stw     r3, 0x18(r31)
    mr      r3, r30
    lwz     r4, 0x28(r30)
    bl      JSUConvertOffsetToPtr_Us___FPCvPCv
    lwz     r4, 0x2c(r30)
    addi    r29, r3, 0x0
    addi    r3, r30, 0x0
    bl      JSUConvertOffsetToPtr_Us___FPCvPCv
    li      r6, 0x0
    li      r4, 0x0
    b       branch_0x802e9ac0

branch_0x802e9a9c:
    lwz     r0, 0x14(r31)
    addi    r5, r4, 0x4
    addi    r6, r6, 0x1
    add     r5, r0, r5
    lwz     r0, 0x0(r5)
    addi    r4, r4, 0x8
    slwi    r0, r0, 1
    add     r0, r29, r0
    stw     r0, 0x0(r5)
branch_0x802e9ac0:
    lhz     r0, 0x10(r31)
    cmpw    r6, r0
    blt+    branch_0x802e9a9c
    li      r6, 0x0
    li      r4, 0x0
    b       branch_0x802e9afc

branch_0x802e9ad8:
    lwz     r0, 0x18(r31)
    addi    r5, r4, 0x4
    addi    r6, r6, 0x1
    add     r5, r0, r5
    lwz     r0, 0x0(r5)
    addi    r4, r4, 0x8
    slwi    r0, r0, 1
    add     r0, r3, r0
    stw     r0, 0x0(r5)
branch_0x802e9afc:
    lhz     r0, 0x12(r31)
    cmpw    r6, r0
    blt+    branch_0x802e9ad8
    mr      r3, r30
    lwz     r4, 0x30(r30)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    stw     r3, 0x24(r31)
    mr      r3, r30
    lwz     r4, 0x34(r30)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    stw     r3, 0x28(r31)
    mr      r3, r30
    lwz     r4, 0x38(r30)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    stw     r3, 0x2c(r31)
    mr      r3, r30
    lwz     r4, 0x3c(r30)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    stw     r3, 0x30(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl load__19J3DAnmKeyLoader_v15FPCv
load__19J3DAnmKeyLoader_v15FPCv: # 0x802e9b64
    mflr    r0
    lis     r5, 0x5643
    stw     r0, 0x4(sp)
    lis     r6, 0x5041
    lis     r9, 0x5452
    stwu    sp, -0x38(sp)
    lis     r8, 0x434c
    lis     r7, 0x414e
    stmw    r22, 0x10(sp)
    addi    r31, r4, 0x0
    lis     r4, 0x5454
    addi    r30, r3, 0x0
    addi    r23, r31, 0x20
    addi    r29, r4, 0x4b31
    addi    r28, r5, 0x4b31
    addi    r27, r6, 0x4b31
    addi    r24, r9, 0x4b31
    addi    r25, r8, 0x4b31
    addi    r26, r7, 0x4b31
    li      r22, 0x0
    b       branch_0x802e9c6c

branch_0x802e9bb8:
    lwz     r0, 0x0(r23)
    cmpw    r0, r24
    beq-    branch_0x802e9c44
    bge-    branch_0x802e9bec
    cmpw    r0, r25
    beq-    branch_0x802e9c24
    bge-    branch_0x802e9be0
    cmpw    r0, r26
    beq-    branch_0x802e9c04
    b       branch_0x802e9c60

branch_0x802e9be0:
    cmpw    r0, r27
    beq-    branch_0x802e9c14
    b       branch_0x802e9c60

branch_0x802e9bec:
    cmpw    r0, r28
    beq-    branch_0x802e9c54
    bge-    branch_0x802e9c60
    cmpw    r0, r29
    beq-    branch_0x802e9c34
    b       branch_0x802e9c60

branch_0x802e9c04:
    addi    r3, r30, 0x0
    addi    r4, r23, 0x0
    bl      readAnmTransform__19J3DAnmKeyLoader_v15FPC22J3DAnmTransformKeyData
    b       branch_0x802e9c60

branch_0x802e9c14:
    addi    r3, r30, 0x0
    addi    r4, r23, 0x0
    bl      readAnmColor__19J3DAnmKeyLoader_v15FPC18J3DAnmColorKeyData
    b       branch_0x802e9c60

branch_0x802e9c24:
    addi    r3, r30, 0x0
    addi    r4, r23, 0x0
    bl      readAnmCluster__19J3DAnmKeyLoader_v15FPC20J3DAnmClusterKeyData
    b       branch_0x802e9c60

branch_0x802e9c34:
    addi    r3, r30, 0x0
    addi    r4, r23, 0x0
    bl      readAnmTextureSRT__19J3DAnmKeyLoader_v15FPC23J3DAnmTextureSRTKeyData
    b       branch_0x802e9c60

branch_0x802e9c44:
    addi    r3, r30, 0x0
    addi    r4, r23, 0x0
    bl      readAnmTevReg__19J3DAnmKeyLoader_v15FPC19J3DAnmTevRegKeyData
    b       branch_0x802e9c60

branch_0x802e9c54:
    addi    r3, r30, 0x0
    addi    r4, r23, 0x0
    bl      readAnmVtxColor__19J3DAnmKeyLoader_v15FPC21J3DAnmVtxColorKeyData
branch_0x802e9c60:
    lwz     r0, 0x4(r23)
    addi    r22, r22, 0x1
    add     r23, r23, r0
branch_0x802e9c6c:
    lwz     r0, 0xc(r31)
    cmplw   r22, r0
    blt+    branch_0x802e9bb8
    lwz     r3, 0x4(r30)
    lmw     r22, 0x10(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl readAnmTransform__19J3DAnmKeyLoader_v15FPC22J3DAnmTransformKeyData
readAnmTransform__19J3DAnmKeyLoader_v15FPC22J3DAnmTransformKeyData: # 0x802e9c90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r4
    lwz     r31, 0x4(r3)
    mr      r3, r30
    lhz     r0, 0xc(r4)
    sth     r0, 0x22(r31)
    lha     r0, 0xa(r4)
    sth     r0, 0x2(r31)
    lbz     r0, 0x8(r4)
    stb     r0, 0x0(r31)
    lbz     r0, 0x9(r4)
    stw     r0, 0x24(r31)
    lfs     f0, 0x2f0(rtoc)
    stfs    f0, 0x4(r31)
    lwz     r4, 0x14(r4)
    bl      JSUConvertOffsetToPtr_23J3DAnmTransformKeyTable___FPCvPCv
    stw     r3, 0x28(r31)
    mr      r3, r30
    lwz     r4, 0x18(r30)
    bl      JSUConvertOffsetToPtr_f___FPCvPCv
    stw     r3, 0x10(r31)
    mr      r3, r30
    lwz     r4, 0x1c(r30)
    bl      JSUConvertOffsetToPtr_s___FPCvPCv
    stw     r3, 0x14(r31)
    mr      r3, r30
    lwz     r4, 0x20(r30)
    bl      JSUConvertOffsetToPtr_f___FPCvPCv
    stw     r3, 0x18(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl readAnmTextureSRT__19J3DAnmKeyLoader_v15FPC23J3DAnmTextureSRTKeyData
readAnmTextureSRT__19J3DAnmKeyLoader_v15FPC23J3DAnmTextureSRTKeyData: # 0x802e9d2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r4
    stw     r29, 0x14(sp)
    lwz     r31, 0x4(r3)
    mr      r3, r30
    lhz     r0, 0xc(r4)
    sth     r0, 0x14(r31)
    lha     r0, 0xa(r4)
    sth     r0, 0x2(r31)
    lbz     r0, 0x8(r4)
    stb     r0, 0x0(r31)
    lbz     r0, 0x9(r4)
    stw     r0, 0x10(r31)
    lfs     f0, 0x2f0(rtoc)
    stfs    f0, 0x4(r31)
    lhz     r0, 0xc(r4)
    sth     r0, 0x14(r31)
    lhz     r0, 0xe(r4)
    sth     r0, 0x1c(r31)
    lhz     r0, 0x10(r4)
    sth     r0, 0x1e(r31)
    lhz     r0, 0x12(r4)
    sth     r0, 0x20(r31)
    lwz     r4, 0x14(r4)
    bl      JSUConvertOffsetToPtr_23J3DAnmTransformKeyTable___FPCvPCv
    stw     r3, 0x18(r31)
    mr      r3, r30
    lwz     r4, 0x18(r30)
    bl      JSUConvertOffsetToPtr_Us___FPCvPCv
    stw     r3, 0x34(r31)
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802e9ddc
    mr      r3, r30
    lwz     r4, 0x1c(r30)
    bl      JSUConvertOffsetToPtr_7ResNTAB___FPCvPCv
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    bl      __ct__10JUTNameTabFPC7ResNTAB
branch_0x802e9ddc:
    stw     r29, 0x38(r31)
    mr      r3, r30
    lwz     r4, 0x20(r30)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    stw     r3, 0x30(r31)
    mr      r3, r30
    lwz     r4, 0x24(r30)
    bl      JSUConvertOffsetToPtr_3Vec___FPCvPCv
    stw     r3, 0x3c(r31)
    mr      r3, r30
    lwz     r4, 0x28(r30)
    bl      JSUConvertOffsetToPtr_f___FPCvPCv
    stw     r3, 0x24(r31)
    mr      r3, r30
    lwz     r4, 0x2c(r30)
    bl      JSUConvertOffsetToPtr_s___FPCvPCv
    stw     r3, 0x28(r31)
    mr      r3, r30
    lwz     r4, 0x30(r30)
    bl      JSUConvertOffsetToPtr_f___FPCvPCv
    stw     r3, 0x2c(r31)
    lwz     r0, 0x44(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x802e9e6c
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802e9e64
    mr      r3, r30
    lwz     r4, 0x44(r30)
    bl      JSUConvertOffsetToPtr_7ResNTAB___FPCvPCv
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    bl      __ct__10JUTNameTabFPC7ResNTAB
branch_0x802e9e64:
    stw     r29, 0x64(r31)
    b       branch_0x802e9e74

branch_0x802e9e6c:
    li      r0, 0x0
    stw     r0, 0x64(r31)
branch_0x802e9e74:
    lhz     r0, 0x34(r30)
    mr      r3, r30
    sth     r0, 0x54(r31)
    lhz     r0, 0x36(r30)
    sth     r0, 0x40(r31)
    lhz     r0, 0x38(r30)
    sth     r0, 0x42(r31)
    lhz     r0, 0x3a(r30)
    sth     r0, 0x44(r31)
    lwz     r4, 0x3c(r30)
    bl      JSUConvertOffsetToPtr_23J3DAnmTransformKeyTable___FPCvPCv
    stw     r3, 0x58(r31)
    mr      r3, r30
    lwz     r4, 0x40(r30)
    bl      JSUConvertOffsetToPtr_Us___FPCvPCv
    stw     r3, 0x60(r31)
    mr      r3, r30
    lwz     r4, 0x48(r30)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    stw     r3, 0x5c(r31)
    mr      r3, r30
    lwz     r4, 0x4c(r30)
    bl      JSUConvertOffsetToPtr_3Vec___FPCvPCv
    stw     r3, 0x68(r31)
    mr      r3, r30
    lwz     r4, 0x50(r30)
    bl      JSUConvertOffsetToPtr_f___FPCvPCv
    stw     r3, 0x48(r31)
    mr      r3, r30
    lwz     r4, 0x54(r30)
    bl      JSUConvertOffsetToPtr_s___FPCvPCv
    stw     r3, 0x4c(r31)
    mr      r3, r30
    lwz     r4, 0x58(r30)
    bl      JSUConvertOffsetToPtr_f___FPCvPCv
    stw     r3, 0x50(r31)
    li      r0, 0x0
    stw     r0, 0x6c(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl readAnmColor__19J3DAnmKeyLoader_v15FPC18J3DAnmColorKeyData
readAnmColor__19J3DAnmKeyLoader_v15FPC18J3DAnmColorKeyData: # 0x802e9f28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r4
    stw     r29, 0x14(sp)
    lwz     r31, 0x4(r3)
    mr      r3, r30
    lha     r0, 0xc(r4)
    sth     r0, 0x2(r31)
    lbz     r0, 0x8(r4)
    stb     r0, 0x0(r31)
    lfs     f0, 0x2f0(rtoc)
    stfs    f0, 0x4(r31)
    lhz     r0, 0xe(r4)
    sth     r0, 0x18(r31)
    lhz     r0, 0x10(r4)
    sth     r0, 0x10(r31)
    lhz     r0, 0x12(r4)
    sth     r0, 0x12(r31)
    lhz     r0, 0x14(r4)
    sth     r0, 0x14(r31)
    lhz     r0, 0x16(r4)
    sth     r0, 0x16(r31)
    lwz     r4, 0x18(r4)
    bl      JSUConvertOffsetToPtr_19J3DAnmColorKeyTable___FPCvPCv
    stw     r3, 0x34(r31)
    mr      r3, r30
    lwz     r4, 0x24(r30)
    bl      JSUConvertOffsetToPtr_s___FPCvPCv
    stw     r3, 0x24(r31)
    mr      r3, r30
    lwz     r4, 0x28(r30)
    bl      JSUConvertOffsetToPtr_s___FPCvPCv
    stw     r3, 0x28(r31)
    mr      r3, r30
    lwz     r4, 0x2c(r30)
    bl      JSUConvertOffsetToPtr_s___FPCvPCv
    stw     r3, 0x2c(r31)
    mr      r3, r30
    lwz     r4, 0x30(r30)
    bl      JSUConvertOffsetToPtr_s___FPCvPCv
    stw     r3, 0x30(r31)
    mr      r3, r30
    lwz     r4, 0x1c(r30)
    bl      JSUConvertOffsetToPtr_Us___FPCvPCv
    stw     r3, 0x1c(r31)
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802ea010
    mr      r3, r30
    lwz     r4, 0x20(r30)
    bl      JSUConvertOffsetToPtr_7ResNTAB___FPCvPCv
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    bl      __ct__10JUTNameTabFPC7ResNTAB
branch_0x802ea010:
    stw     r29, 0x20(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl readAnmCluster__19J3DAnmKeyLoader_v15FPC20J3DAnmClusterKeyData
readAnmCluster__19J3DAnmKeyLoader_v15FPC20J3DAnmClusterKeyData: # 0x802ea030
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r4
    lwz     r31, 0x4(r3)
    mr      r3, r30
    lha     r0, 0xa(r4)
    sth     r0, 0x2(r31)
    lbz     r0, 0x8(r4)
    stb     r0, 0x0(r31)
    lfs     f0, 0x2f0(rtoc)
    stfs    f0, 0x4(r31)
    lwz     r4, 0x10(r4)
    bl      JSUConvertOffsetToPtr_21J3DAnmClusterKeyTable___FPCvPCv
    stw     r3, 0x14(r31)
    mr      r3, r30
    lwz     r4, 0x14(r30)
    bl      JSUConvertOffsetToPtr_f___FPCvPCv
    stw     r3, 0x10(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl readAnmTevReg__19J3DAnmKeyLoader_v15FPC19J3DAnmTevRegKeyData
readAnmTevReg__19J3DAnmKeyLoader_v15FPC19J3DAnmTevRegKeyData: # 0x802ea09c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r4
    stw     r29, 0x14(sp)
    lwz     r31, 0x4(r3)
    mr      r3, r30
    lha     r0, 0xa(r4)
    sth     r0, 0x2(r31)
    lbz     r0, 0x8(r4)
    stb     r0, 0x0(r31)
    lfs     f0, 0x2f0(rtoc)
    stfs    f0, 0x4(r31)
    lhz     r0, 0xc(r4)
    sth     r0, 0x10(r31)
    lwz     r4, 0x20(r4)
    bl      JSUConvertOffsetToPtr_18J3DAnmCRegKeyTable___FPCvPCv
    stw     r3, 0x34(r31)
    mr      r3, r30
    lwz     r4, 0x28(r30)
    bl      JSUConvertOffsetToPtr_Us___FPCvPCv
    stw     r3, 0x24(r31)
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802ea124
    mr      r3, r30
    lwz     r4, 0x30(r30)
    bl      JSUConvertOffsetToPtr_7ResNTAB___FPCvPCv
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    bl      __ct__10JUTNameTabFPC7ResNTAB
branch_0x802ea124:
    stw     r29, 0x28(r31)
    mr      r3, r30
    lhz     r0, 0xe(r30)
    sth     r0, 0x12(r31)
    lwz     r4, 0x24(r30)
    bl      JSUConvertOffsetToPtr_18J3DAnmKRegKeyTable___FPCvPCv
    stw     r3, 0x38(r31)
    mr      r3, r30
    lwz     r4, 0x2c(r30)
    bl      JSUConvertOffsetToPtr_Us___FPCvPCv
    stw     r3, 0x2c(r31)
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802ea178
    mr      r3, r30
    lwz     r4, 0x34(r30)
    bl      JSUConvertOffsetToPtr_7ResNTAB___FPCvPCv
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    bl      __ct__10JUTNameTabFPC7ResNTAB
branch_0x802ea178:
    stw     r29, 0x30(r31)
    mr      r3, r30
    lhz     r0, 0x10(r30)
    sth     r0, 0x14(r31)
    lhz     r0, 0x12(r30)
    sth     r0, 0x16(r31)
    lhz     r0, 0x14(r30)
    sth     r0, 0x18(r31)
    lhz     r0, 0x16(r30)
    sth     r0, 0x1a(r31)
    lwz     r4, 0x38(r30)
    bl      JSUConvertOffsetToPtr_s___FPCvPCv
    stw     r3, 0x3c(r31)
    mr      r3, r30
    lwz     r4, 0x3c(r30)
    bl      JSUConvertOffsetToPtr_s___FPCvPCv
    stw     r3, 0x40(r31)
    mr      r3, r30
    lwz     r4, 0x40(r30)
    bl      JSUConvertOffsetToPtr_s___FPCvPCv
    stw     r3, 0x44(r31)
    mr      r3, r30
    lwz     r4, 0x44(r30)
    bl      JSUConvertOffsetToPtr_s___FPCvPCv
    stw     r3, 0x48(r31)
    mr      r3, r30
    lhz     r0, 0x18(r30)
    sth     r0, 0x1c(r31)
    lhz     r0, 0x1a(r30)
    sth     r0, 0x1e(r31)
    lhz     r0, 0x1c(r30)
    sth     r0, 0x20(r31)
    lhz     r0, 0x1e(r30)
    sth     r0, 0x22(r31)
    lwz     r4, 0x48(r30)
    bl      JSUConvertOffsetToPtr_s___FPCvPCv
    stw     r3, 0x4c(r31)
    mr      r3, r30
    lwz     r4, 0x4c(r30)
    bl      JSUConvertOffsetToPtr_s___FPCvPCv
    stw     r3, 0x50(r31)
    mr      r3, r30
    lwz     r4, 0x50(r30)
    bl      JSUConvertOffsetToPtr_s___FPCvPCv
    stw     r3, 0x54(r31)
    mr      r3, r30
    lwz     r4, 0x54(r30)
    bl      JSUConvertOffsetToPtr_s___FPCvPCv
    stw     r3, 0x58(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl readAnmVtxColor__19J3DAnmKeyLoader_v15FPC21J3DAnmVtxColorKeyData
readAnmVtxColor__19J3DAnmKeyLoader_v15FPC21J3DAnmVtxColorKeyData: # 0x802ea258
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r4
    stw     r29, 0x14(sp)
    lwz     r31, 0x4(r3)
    mr      r3, r30
    lha     r0, 0xa(r4)
    sth     r0, 0x2(r31)
    lbz     r0, 0x8(r4)
    stb     r0, 0x0(r31)
    lfs     f0, 0x2f0(rtoc)
    stfs    f0, 0x4(r31)
    lhz     r0, 0xc(r4)
    sth     r0, 0x10(r31)
    lhz     r0, 0xe(r4)
    sth     r0, 0x12(r31)
    lwz     r4, 0x18(r4)
    bl      JSUConvertOffsetToPtr_19J3DAnmColorKeyTable___FPCvPCv
    stw     r3, 0x1c(r31)
    mr      r3, r30
    lwz     r4, 0x1c(r30)
    bl      JSUConvertOffsetToPtr_19J3DAnmColorKeyTable___FPCvPCv
    stw     r3, 0x20(r31)
    mr      r3, r30
    lwz     r4, 0x20(r30)
    bl      JSUConvertOffsetToPtr_23J3DAnmVtxColorIndexData___FPCvPCv
    stw     r3, 0x14(r31)
    mr      r3, r30
    lwz     r4, 0x24(r30)
    bl      JSUConvertOffsetToPtr_23J3DAnmVtxColorIndexData___FPCvPCv
    stw     r3, 0x18(r31)
    mr      r3, r30
    lwz     r4, 0x28(r30)
    bl      JSUConvertOffsetToPtr_Us___FPCvPCv
    lwz     r4, 0x2c(r30)
    addi    r29, r3, 0x0
    addi    r3, r30, 0x0
    bl      JSUConvertOffsetToPtr_Us___FPCvPCv
    li      r6, 0x0
    li      r4, 0x0
    b       branch_0x802ea32c

branch_0x802ea308:
    lwz     r0, 0x14(r31)
    addi    r5, r4, 0x4
    addi    r6, r6, 0x1
    add     r5, r0, r5
    lwz     r0, 0x0(r5)
    addi    r4, r4, 0x8
    slwi    r0, r0, 1
    add     r0, r29, r0
    stw     r0, 0x0(r5)
branch_0x802ea32c:
    lhz     r0, 0x10(r31)
    cmpw    r6, r0
    blt+    branch_0x802ea308
    li      r6, 0x0
    li      r4, 0x0
    b       branch_0x802ea368

branch_0x802ea344:
    lwz     r0, 0x18(r31)
    addi    r5, r4, 0x4
    addi    r6, r6, 0x1
    add     r5, r0, r5
    lwz     r0, 0x0(r5)
    addi    r4, r4, 0x8
    slwi    r0, r0, 1
    add     r0, r3, r0
    stw     r0, 0x0(r5)
branch_0x802ea368:
    lhz     r0, 0x12(r31)
    cmpw    r6, r0
    blt+    branch_0x802ea344
    mr      r3, r30
    lwz     r4, 0x30(r30)
    bl      JSUConvertOffsetToPtr_s___FPCvPCv
    stw     r3, 0x24(r31)
    mr      r3, r30
    lwz     r4, 0x34(r30)
    bl      JSUConvertOffsetToPtr_s___FPCvPCv
    stw     r3, 0x28(r31)
    mr      r3, r30
    lwz     r4, 0x38(r30)
    bl      JSUConvertOffsetToPtr_s___FPCvPCv
    stw     r3, 0x2c(r31)
    mr      r3, r30
    lwz     r4, 0x3c(r30)
    bl      JSUConvertOffsetToPtr_s___FPCvPCv
    stw     r3, 0x30(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __dt__20J3DAnmVisibilityFullFv
__dt__20J3DAnmVisibilityFullFv: # 0x802ea3d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802ea418
    lis     r3, 0x803e
    addi    r0, r3, 0x1418
    stw     r0, 0xc(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10J3DAnmBaseFv
    extsh.  r0, r31
    ble-    branch_0x802ea418
    mr      r3, r30
    bl      __dl__FPv
branch_0x802ea418:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__16J3DAnmTexPatternFv
__dt__16J3DAnmTexPatternFv: # 0x802ea434
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802ea47c
    lis     r3, 0x803e
    addi    r0, r3, 0x1424
    stw     r0, 0xc(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10J3DAnmBaseFv
    extsh.  r0, r31
    ble-    branch_0x802ea47c
    mr      r3, r30
    bl      __dl__FPv
branch_0x802ea47c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15J3DAnmTevRegKeyFv
__dt__15J3DAnmTevRegKeyFv: # 0x802ea498
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802ea4e0
    lis     r3, 0x803e
    addi    r0, r3, 0x1430
    stw     r0, 0xc(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10J3DAnmBaseFv
    extsh.  r0, r31
    ble-    branch_0x802ea4e0
    mr      r3, r30
    bl      __dl__FPv
branch_0x802ea4e0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__19J3DAnmTextureSRTKeyFv
__dt__19J3DAnmTextureSRTKeyFv: # 0x802ea4fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802ea544
    lis     r3, 0x803e
    addi    r0, r3, 0x143c
    stw     r0, 0xc(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10J3DAnmBaseFv
    extsh.  r0, r31
    ble-    branch_0x802ea544
    mr      r3, r30
    bl      __dl__FPv
branch_0x802ea544:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl JSUConvertOffsetToPtr_18J3DAnmKRegKeyTable___FPCvPCv
JSUConvertOffsetToPtr_18J3DAnmKRegKeyTable___FPCvPCv: # 0x802ea560
    cmplwi  r4, 0x0
    bne-    branch_0x802ea570
    li      r3, 0x0
    blr

branch_0x802ea570:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_18J3DAnmCRegKeyTable___FPCvPCv
JSUConvertOffsetToPtr_18J3DAnmCRegKeyTable___FPCvPCv: # 0x802ea578
    cmplwi  r4, 0x0
    bne-    branch_0x802ea588
    li      r3, 0x0
    blr

branch_0x802ea588:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_21J3DAnmClusterKeyTable___FPCvPCv
JSUConvertOffsetToPtr_21J3DAnmClusterKeyTable___FPCvPCv: # 0x802ea590
    cmplwi  r4, 0x0
    bne-    branch_0x802ea5a0
    li      r3, 0x0
    blr

branch_0x802ea5a0:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_19J3DAnmColorKeyTable___FPCvPCv
JSUConvertOffsetToPtr_19J3DAnmColorKeyTable___FPCvPCv: # 0x802ea5a8
    cmplwi  r4, 0x0
    bne-    branch_0x802ea5b8
    li      r3, 0x0
    blr

branch_0x802ea5b8:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_3Vec___FPCvPCv
JSUConvertOffsetToPtr_3Vec___FPCvPCv: # 0x802ea5c0
    cmplwi  r4, 0x0
    bne-    branch_0x802ea5d0
    li      r3, 0x0
    blr

branch_0x802ea5d0:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_23J3DAnmTransformKeyTable___FPCvPCv
JSUConvertOffsetToPtr_23J3DAnmTransformKeyTable___FPCvPCv: # 0x802ea5d8
    cmplwi  r4, 0x0
    bne-    branch_0x802ea5e8
    li      r3, 0x0
    blr

branch_0x802ea5e8:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_23J3DAnmVtxColorIndexData___FPCvPCv
JSUConvertOffsetToPtr_23J3DAnmVtxColorIndexData___FPCvPCv: # 0x802ea5f0
    cmplwi  r4, 0x0
    bne-    branch_0x802ea600
    li      r3, 0x0
    blr

branch_0x802ea600:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_22J3DAnmClusterFullTable___FPCvPCv
JSUConvertOffsetToPtr_22J3DAnmClusterFullTable___FPCvPCv: # 0x802ea608
    cmplwi  r4, 0x0
    bne-    branch_0x802ea618
    li      r3, 0x0
    blr

branch_0x802ea618:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_25J3DAnmVisibilityFullTable___FPCvPCv
JSUConvertOffsetToPtr_25J3DAnmVisibilityFullTable___FPCvPCv: # 0x802ea620
    cmplwi  r4, 0x0
    bne-    branch_0x802ea630
    li      r3, 0x0
    blr

branch_0x802ea630:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_25J3DAnmTexPatternFullTable___FPCvPCv
JSUConvertOffsetToPtr_25J3DAnmTexPatternFullTable___FPCvPCv: # 0x802ea638
    cmplwi  r4, 0x0
    bne-    branch_0x802ea648
    li      r3, 0x0
    blr

branch_0x802ea648:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_20J3DAnmColorFullTable___FPCvPCv
JSUConvertOffsetToPtr_20J3DAnmColorFullTable___FPCvPCv: # 0x802ea650
    cmplwi  r4, 0x0
    bne-    branch_0x802ea660
    li      r3, 0x0
    blr

branch_0x802ea660:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_s___FPCvPCv
JSUConvertOffsetToPtr_s___FPCvPCv: # 0x802ea668
    cmplwi  r4, 0x0
    bne-    branch_0x802ea678
    li      r3, 0x0
    blr

branch_0x802ea678:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_24J3DAnmTransformFullTable___FPCvPCv
JSUConvertOffsetToPtr_24J3DAnmTransformFullTable___FPCvPCv: # 0x802ea680
    cmplwi  r4, 0x0
    bne-    branch_0x802ea690
    li      r3, 0x0
    blr

branch_0x802ea690:
    add     r3, r3, r4
    blr

