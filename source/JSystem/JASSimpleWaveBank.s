
.globl __ct__Q28JASystem15TSimpleWaveBankFv
__ct__Q28JASystem15TSimpleWaveBankFv: # 0x80310248
    mflr    r0
    lis     r4, __vvt__Q38JASystem13WaveArcLoader7TObject@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    stw     r3, 0x8(sp)
    lis     r3, __vvt__Q28JASystem9TWaveBank@h
    addi    r0, r3, __vvt__Q28JASystem9TWaveBank@l
    lwz     r30, 0x8(sp)
    lis     r3, __vvt__Q28JASystem15TSimpleWaveBank@h
    addi    r3, r3, __vvt__Q28JASystem15TSimpleWaveBank@l
    stw     r0, 0x0(r30)
    addi    r0, r4, __vvt__Q38JASystem13WaveArcLoader7TObject@l
    stw     r0, 0x4(r30)
    addi    r0, r3, 0x14
    stw     r3, 0x0(r30)
    addi    r3, r30, 0x14
    stw     r0, 0x4(r30)
    stw     r31, 0x8(r30)
    stw     r31, 0xc(r30)
    stw     r31, 0x10(r30)
    bl      __ct__Q38JASystem6Kernel5THeapFv
    stw     r31, 0x40(r30)
    mr      r3, r30
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__Q28JASystem15TSimpleWaveBankFv
__dt__Q28JASystem15TSimpleWaveBankFv: # 0x803102c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80310338
    lis     r3, __vvt__Q28JASystem15TSimpleWaveBank@h
    addi    r3, r3, __vvt__Q28JASystem15TSimpleWaveBank@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x14
    lis     r3, __dt__Q38JASystem15TSimpleWaveBank11TWaveHandleFv@h
    stw     r0, 0x4(r30)
    addi    r4, r3, __dt__Q38JASystem15TSimpleWaveBank11TWaveHandleFv@l
    lwz     r3, 0x8(r30)
    bl      __destroy_new_array
    lwz     r3, 0x10(r30)
    bl      __dla__FPv
    cmplwi  r30, 0x0
    beq-    branch_0x80310328
    lis     r3, __vvt__Q28JASystem9TWaveBank@h
    addi    r0, r3, __vvt__Q28JASystem9TWaveBank@l
    stw     r0, 0x0(r30)
branch_0x80310328:
    extsh.  r0, r31
    ble-    branch_0x80310338
    mr      r3, r30
    bl      __dl__FPv
branch_0x80310338:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__Q38JASystem15TSimpleWaveBank11TWaveHandleFv
__dt__Q38JASystem15TSimpleWaveBank11TWaveHandleFv: # 0x80310354
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80310398
    lis     r3, __vvt__Q38JASystem15TSimpleWaveBank11TWaveHandle@h
    addi    r0, r3, __vvt__Q38JASystem15TSimpleWaveBank11TWaveHandle@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80310388
    lis     r3, __vvt__Q28JASystem11TWaveHandle@h
    addi    r0, r3, __vvt__Q28JASystem11TWaveHandle@l
    stw     r0, 0x0(r31)
branch_0x80310388:
    extsh.  r0, r4
    ble-    branch_0x80310398
    mr      r3, r31
    bl      __dl__FPv
branch_0x80310398:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setWaveTableSize__Q28JASystem15TSimpleWaveBankFUl
setWaveTableSize__Q28JASystem15TSimpleWaveBankFUl: # 0x803103b0
    mflr    r0
    lis     r5, __dt__Q38JASystem15TSimpleWaveBank11TWaveHandleFv@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, __dt__Q38JASystem15TSimpleWaveBank11TWaveHandleFv@l
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    addi    r4, r31, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    lwz     r3, 0x8(r3)
    bl      __destroy_new_array
    bl      getCurrentHeap__Q28JASystem9TWaveBankFv
    mulli   r5, r30, 0x34
    addi    r4, r3, 0x0
    addi    r3, r5, 0x8
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    lis     r4, __ct__Q38JASystem15TSimpleWaveBank11TWaveHandleFv@h
    addi    r4, r4, __ct__Q38JASystem15TSimpleWaveBank11TWaveHandleFv@l
    addi    r5, r31, 0x0
    addi    r7, r30, 0x0
    li      r6, 0x34
    bl      __construct_new_array
    stw     r3, 0x8(r29)
    stw     r30, 0xc(r29)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __ct__Q38JASystem15TSimpleWaveBank11TWaveHandleFv
__ct__Q38JASystem15TSimpleWaveBank11TWaveHandleFv: # 0x80310438
    lis     r4, __vvt__Q28JASystem11TWaveHandle@h
    addi    r0, r4, __vvt__Q28JASystem11TWaveHandle@l
    lis     r4, __vvt__Q38JASystem15TSimpleWaveBank11TWaveHandle@h
    stw     r0, 0x0(r3)
    addi    r0, r4, __vvt__Q38JASystem15TSimpleWaveBank11TWaveHandle@l
    stw     r0, 0x0(r3)
    li      r0, 0x0
    stw     r0, 0x30(r3)
    blr


.globl getWaveHandle__Q28JASystem15TSimpleWaveBankCFUl
getWaveHandle__Q28JASystem15TSimpleWaveBankCFUl: # 0x8031045c
    lwz     r0, 0xc(r3)
    cmplw   r4, r0
    blt-    branch_0x80310470
    li      r3, 0x0
    blr

branch_0x80310470:
    mulli   r0, r4, 0x34
    lwz     r3, 0x8(r3)
    add     r3, r3, r0
    blr


.globl setWaveInfo__Q28JASystem15TSimpleWaveBankFUlRCQ28JASystem9TWaveInfo
setWaveInfo__Q28JASystem15TSimpleWaveBankFUlRCQ28JASystem9TWaveInfo: # 0x80310480
    mulli   r9, r4, 0x34
    lwz     r6, 0x8(r3)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    add     r8, r6, r9
    stw     r4, 0x4(r8)
    addi    r6, r3, 0x40
    addi    r4, r3, 0x14
    stw     r0, 0x8(r8)
    lwz     r7, 0x8(r5)
    lwz     r0, 0xc(r5)
    stw     r7, 0xc(r8)
    stw     r0, 0x10(r8)
    lwz     r7, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r7, 0x14(r8)
    stw     r0, 0x18(r8)
    lwz     r7, 0x18(r5)
    lwz     r0, 0x1c(r5)
    stw     r7, 0x1c(r8)
    stw     r0, 0x20(r8)
    lwz     r7, 0x20(r5)
    lwz     r0, 0x24(r5)
    stw     r7, 0x24(r8)
    stw     r0, 0x28(r8)
    lwz     r0, 0x28(r5)
    stw     r0, 0x2c(r8)
    lwz     r0, 0x8(r3)
    add     r5, r0, r9
    stw     r6, 0x28(r5)
    lwz     r0, 0x8(r3)
    add     r3, r0, r9
    stw     r4, 0x30(r3)
    blr


.globl setWaveArcFileName__Q28JASystem15TSimpleWaveBankFPCc
setWaveArcFileName__Q28JASystem15TSimpleWaveBankFPCc: # 0x80310508
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r4
    stw     r29, 0x14(sp)
    mr      r29, r3
    lwz     r3, 0x10(r3)
    bl      __dla__FPv
    mr      r3, r30
    bl      strlen
    mr      r31, r3
    bl      getCurrentHeap__Q28JASystem9TWaveBankFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x1
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, 0x10(r29)
    mr      r4, r30
    lwz     r3, 0x10(r29)
    bl      strcpy
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl getWaveInfo__Q38JASystem15TSimpleWaveBank11TWaveHandleCFv
getWaveInfo__Q38JASystem15TSimpleWaveBank11TWaveHandleCFv: # 0x8031057c
    addi    r3, r3, 0x4
    blr


.globl getWavePtr__Q38JASystem15TSimpleWaveBank11TWaveHandleCFv
getWavePtr__Q38JASystem15TSimpleWaveBank11TWaveHandleCFv: # 0x80310584
    lwz     r4, 0x30(r3)
    lwz     r4, 0x8(r4)
    cmplwi  r4, 0x0
    bne-    branch_0x8031059c
    li      r3, 0x0
    blr

branch_0x8031059c:
    lwz     r0, 0xc(r3)
    add     r3, r4, r0
    blr


.globl getType__Q28JASystem15TSimpleWaveBankCFv
getType__Q28JASystem15TSimpleWaveBankCFv: # 0x803105a8
    lis     r3, unk_534d504c@h
    addi    r3, r3, unk_534d504c@l
    blr


.globl getHeap__Q28JASystem15TSimpleWaveBankFv
getHeap__Q28JASystem15TSimpleWaveBankFv: # 0x803105b4
    addi    r3, r3, 0x14
    blr


.globl getWaveArcFileName__Q28JASystem15TSimpleWaveBankCFv
getWaveArcFileName__Q28JASystem15TSimpleWaveBankCFv: # 0x803105bc
    lwz     r3, 0x10(r3)
    blr


.globl unk_803105c4
unk_803105c4: # 0x803105c4
    addi    r3, r3, -0x4
    b       getHeap__Q28JASystem15TSimpleWaveBankFv


.globl unk_803105cc
unk_803105cc: # 0x803105cc
    addi    r3, r3, -0x4
    b       getWaveArcFileName__Q28JASystem15TSimpleWaveBankCFv


.globl unk_803105d4
unk_803105d4: # 0x803105d4
    addi    r3, r3, -0x4
    b       getLoadFlagPtr__Q28JASystem15TSimpleWaveBankFv

