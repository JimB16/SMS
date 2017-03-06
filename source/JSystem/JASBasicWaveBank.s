
.globl __ct__Q28JASystem14TBasicWaveBankFv
__ct__Q28JASystem14TBasicWaveBankFv: # 0x8030ea10
    lis     r4, 0x803e
    addi    r0, r4, 0x26ec
    lis     r4, 0x803e
    stw     r0, 0x0(r3)
    addi    r0, r4, 0x26d8
    stw     r0, 0x0(r3)
    li      r0, 0x0
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
    stw     r0, 0x10(r3)
    blr


.globl __dt__Q28JASystem9TWaveBankFv
__dt__Q28JASystem9TWaveBankFv: # 0x8030ea40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8030ea74
    lis     r3, 0x803e
    addi    r3, r3, 0x26ec
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x8030ea74
    mr      r3, r31
    bl      __dl__FPv
branch_0x8030ea74:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__Q28JASystem14TBasicWaveBankFv
__dt__Q28JASystem14TBasicWaveBankFv: # 0x8030ea8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8030eaf4
    lis     r3, 0x803e
    addi    r0, r3, 0x26d8
    stw     r0, 0x0(r30)
    lwz     r3, 0x4(r30)
    bl      __dla__FPv
    lis     r4, 0x8031
    lwz     r3, 0xc(r30)
    subi    r4, r4, 0x121c
    bl      __destroy_new_array
    cmplwi  r30, 0x0
    beq-    branch_0x8030eae4
    lis     r3, 0x803e
    addi    r0, r3, 0x26ec
    stw     r0, 0x0(r30)
branch_0x8030eae4:
    extsh.  r0, r31
    ble-    branch_0x8030eaf4
    mr      r3, r30
    bl      __dl__FPv
branch_0x8030eaf4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getWaveGroup__Q28JASystem14TBasicWaveBankFi
getWaveGroup__Q28JASystem14TBasicWaveBankFi: # 0x8030eb10
    lwz     r0, 0x10(r3)
    cmplw   r4, r0
    blt-    branch_0x8030eb24
    li      r3, 0x0
    blr

branch_0x8030eb24:
    lwz     r3, 0xc(r3)
    slwi    r0, r4, 6
    add     r3, r3, r0
    blr


.globl setGroupCount__Q28JASystem14TBasicWaveBankFUl
setGroupCount__Q28JASystem14TBasicWaveBankFUl: # 0x8030eb34
    mflr    r0
    lis     r5, 0x8031
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    subi    r31, r5, 0x121c
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    addi    r4, r31, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    lwz     r3, 0xc(r3)
    bl      __destroy_new_array
    stw     r30, 0x10(r29)
    bl      getCurrentHeap__Q28JASystem9TWaveBankFv
    slwi    r5, r30, 6
    addi    r4, r3, 0x0
    addi    r3, r5, 0x8
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    lis     r4, 0x8031
    subi    r4, r4, 0x12bc
    addi    r5, r31, 0x0
    addi    r7, r30, 0x0
    li      r6, 0x40
    bl      __construct_new_array
    stw     r3, 0xc(r29)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl setWaveTableSize__Q28JASystem14TBasicWaveBankFUl
setWaveTableSize__Q28JASystem14TBasicWaveBankFUl: # 0x8030ebbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r3, 0x4(r3)
    bl      __dla__FPv
    bl      getCurrentHeap__Q28JASystem9TWaveBankFv
    addi    r4, r3, 0x0
    slwi    r3, r31, 2
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, 0x4(r30)
    slwi    r4, r31, 2
    lwz     r3, 0x4(r30)
    bl      bzero__Q28JASystem4CalcFPvUl
    stw     r31, 0x8(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl incWaveTable__Q28JASystem14TBasicWaveBankFPCQ38JASystem14TBasicWaveBank10TWaveGroup
incWaveTable__Q28JASystem14TBasicWaveBankFPCQ38JASystem14TBasicWaveBank10TWaveGroup: # 0x8030ec20
    li      r5, 0x0
    addi    r6, r5, 0x0
    li      r9, 0x0
    b       branch_0x8030ec70

branch_0x8030ec30:
    lwz     r0, 0x34(r4)
    lwz     r7, 0x4(r3)
    add     r8, r0, r5
    lwz     r0, 0x34(r8)
    slwi    r0, r0, 2
    stw     r6, 0x3c(r8)
    add     r10, r7, r0
    lwz     r0, 0x0(r10)
    stw     r0, 0x38(r8)
    lwz     r7, 0x0(r10)
    cmplwi  r7, 0x0
    beq-    branch_0x8030ec64
    stw     r8, 0x3c(r7)
branch_0x8030ec64:
    stw     r8, 0x0(r10)
    addi    r9, r9, 0x1
    addi    r5, r5, 0x40
branch_0x8030ec70:
    lwz     r0, 0x38(r4)
    cmplw   r9, r0
    blt+    branch_0x8030ec30
    blr


.globl decWaveTable__Q28JASystem14TBasicWaveBankFPCQ38JASystem14TBasicWaveBank10TWaveGroup
decWaveTable__Q28JASystem14TBasicWaveBankFPCQ38JASystem14TBasicWaveBank10TWaveGroup: # 0x8030ec80
    li      r8, 0x0
    li      r5, 0x0
    b       branch_0x8030ed00

branch_0x8030ec8c:
    lwz     r0, 0x34(r4)
    lwz     r6, 0x4(r3)
    add     r7, r0, r5
    lwz     r0, 0x34(r7)
    slwi    r0, r0, 2
    add     r6, r6, r0
    lwz     r9, 0x0(r6)
    b       branch_0x8030ecf0

branch_0x8030ecac:
    cmplw   r9, r7
    bne-    branch_0x8030ecec
    lwz     r7, 0x3c(r9)
    cmplwi  r7, 0x0
    bne-    branch_0x8030eccc
    lwz     r0, 0x38(r9)
    stw     r0, 0x0(r6)
    b       branch_0x8030ecd4

branch_0x8030eccc:
    lwz     r0, 0x38(r9)
    stw     r0, 0x38(r7)
branch_0x8030ecd4:
    lwz     r6, 0x38(r9)
    cmplwi  r6, 0x0
    beq-    branch_0x8030ecf8
    lwz     r0, 0x3c(r9)
    stw     r0, 0x3c(r6)
    b       branch_0x8030ecf8

branch_0x8030ecec:
    lwz     r9, 0x38(r9)
branch_0x8030ecf0:
    cmplwi  r9, 0x0
    bne+    branch_0x8030ecac
branch_0x8030ecf8:
    addi    r8, r8, 0x1
    addi    r5, r5, 0x40
branch_0x8030ed00:
    lwz     r0, 0x38(r4)
    cmplw   r8, r0
    blt+    branch_0x8030ec8c
    blr


.globl getWaveHandle__Q28JASystem14TBasicWaveBankCFUl
getWaveHandle__Q28JASystem14TBasicWaveBankCFUl: # 0x8030ed10
    lwz     r0, 0x8(r3)
    cmplw   r4, r0
    blt-    branch_0x8030ed24
    li      r3, 0x0
    blr

branch_0x8030ed24:
    lwz     r3, 0x4(r3)
    slwi    r0, r4, 2
    lwzx    r0, r3, r0
    cmplwi  r0, 0x0
    mr      r3, r0
    bnelr-    

    li      r3, 0x0
    blr


.globl __ct__Q38JASystem14TBasicWaveBank10TWaveGroupFv
__ct__Q38JASystem14TBasicWaveBank10TWaveGroupFv: # 0x8030ed44
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x26c4
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    lis     r3, 0x803e
    stw     r0, 0x0(r31)
    addi    r0, r3, 0x26b0
    addi    r3, r31, 0x4
    stw     r0, 0x0(r31)
    bl      __ct__Q38JASystem6Kernel5THeapFv
    li      r0, 0x0
    stw     r0, 0x30(r31)
    mr      r3, r31
    stw     r0, 0x34(r31)
    stw     r0, 0x38(r31)
    stw     r0, 0x3c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__Q38JASystem6Kernel5THeapFv
__dt__Q38JASystem6Kernel5THeapFv: # 0x8030eda4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8030edcc
    extsh.  r0, r4
    ble-    branch_0x8030edcc
    mr      r3, r31
    bl      __dl__FPv
branch_0x8030edcc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__Q38JASystem14TBasicWaveBank10TWaveGroupFv
__dt__Q38JASystem14TBasicWaveBank10TWaveGroupFv: # 0x8030ede4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8030ee38
    lis     r3, 0x803e
    addi    r0, r3, 0x26b0
    stw     r0, 0x0(r30)
    lis     r3, 0x8031
    subi    r4, r3, 0x11ac
    lwz     r3, 0x34(r30)
    bl      __destroy_new_array
    lwz     r3, 0x3c(r30)
    bl      __dla__FPv
    extsh.  r0, r31
    ble-    branch_0x8030ee38
    mr      r3, r30
    bl      __dl__FPv
branch_0x8030ee38:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__Q38JASystem14TBasicWaveBank9TWaveInfoFv
__dt__Q38JASystem14TBasicWaveBank9TWaveInfoFv: # 0x8030ee54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8030ee9c
    beq-    branch_0x8030ee8c
    lis     r3, 0x803e
    addi    r0, r3, 0x269c
    stw     r0, 0x0(r31)
    beq-    branch_0x8030ee8c
    lis     r3, 0x803e
    addi    r0, r3, 0x2688
    stw     r0, 0x0(r31)
branch_0x8030ee8c:
    extsh.  r0, r4
    ble-    branch_0x8030ee9c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8030ee9c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setWaveArcFileName__Q38JASystem14TBasicWaveBank10TWaveGroupFPCc
setWaveArcFileName__Q38JASystem14TBasicWaveBank10TWaveGroupFPCc: # 0x8030eeb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r4
    stw     r29, 0x14(sp)
    mr      r29, r3
    lwz     r3, 0x3c(r3)
    bl      __dla__FPv
    mr      r3, r30
    bl      strlen
    mr      r31, r3
    bl      getCurrentHeap__Q28JASystem9TWaveBankFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x1
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, 0x3c(r29)
    mr      r4, r30
    lwz     r3, 0x3c(r29)
    bl      strcpy
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl setWaveCount__Q38JASystem14TBasicWaveBank10TWaveGroupFUl
setWaveCount__Q38JASystem14TBasicWaveBank10TWaveGroupFUl: # 0x8030ef28
    mflr    r0
    lis     r5, 0x8031
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x18(sp)
    subi    r30, r5, 0x11ac
    stw     r29, 0x14(sp)
    addi    r29, r4, 0x0
    addi    r4, r30, 0x0
    lwz     r3, 0x34(r3)
    bl      __destroy_new_array
    stw     r29, 0x38(r31)
    bl      getCurrentHeap__Q28JASystem9TWaveBankFv
    slwi    r5, r29, 6
    addi    r4, r3, 0x0
    addi    r3, r5, 0x8
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    lis     r4, 0x8031
    subi    r4, r4, 0xf38
    addi    r5, r30, 0x0
    addi    r7, r29, 0x0
    li      r6, 0x40
    bl      __construct_new_array
    cmplwi  r29, 0x0
    stw     r3, 0x34(r31)
    addi    r3, r29, 0x0
    addi    r8, r31, 0x4
    addi    r6, r31, 0x30
    li      r4, 0x0
    ble-    branch_0x8030f0ac
    srwi.   r0, r3, 3
    mtctr   r0
    beq-    branch_0x8030f088
branch_0x8030efb8:
    lwz     r5, 0x34(r31)
    addi    r7, r4, 0x30
    addi    r0, r4, 0x28
    stwx    r8, r5, r7
    addi    r7, r4, 0x70
    lwz     r5, 0x34(r31)
    stwx    r6, r5, r0
    addi    r0, r4, 0x68
    lwz     r5, 0x34(r31)
    stwx    r8, r5, r7
    addi    r7, r4, 0xb0
    lwz     r5, 0x34(r31)
    stwx    r6, r5, r0
    addi    r0, r4, 0xa8
    lwz     r5, 0x34(r31)
    stwx    r8, r5, r7
    addi    r7, r4, 0xf0
    lwz     r5, 0x34(r31)
    stwx    r6, r5, r0
    addi    r0, r4, 0xe8
    lwz     r5, 0x34(r31)
    stwx    r8, r5, r7
    addi    r7, r4, 0x130
    lwz     r5, 0x34(r31)
    stwx    r6, r5, r0
    addi    r0, r4, 0x128
    lwz     r5, 0x34(r31)
    stwx    r8, r5, r7
    addi    r7, r4, 0x170
    lwz     r5, 0x34(r31)
    stwx    r6, r5, r0
    addi    r0, r4, 0x168
    lwz     r5, 0x34(r31)
    stwx    r8, r5, r7
    addi    r7, r4, 0x1b0
    lwz     r5, 0x34(r31)
    stwx    r6, r5, r0
    addi    r0, r4, 0x1a8
    lwz     r5, 0x34(r31)
    stwx    r8, r5, r7
    addi    r7, r4, 0x1f0
    lwz     r5, 0x34(r31)
    stwx    r6, r5, r0
    addi    r0, r4, 0x1e8
    addi    r4, r4, 0x200
    lwz     r5, 0x34(r31)
    stwx    r8, r5, r7
    lwz     r5, 0x34(r31)
    stwx    r6, r5, r0
    bdnz+      branch_0x8030efb8
    andi.   r3, r3, 0x7
    beq-    branch_0x8030f0ac
branch_0x8030f088:
    mtctr   r3
branch_0x8030f08c:
    lwz     r5, 0x34(r31)
    addi    r7, r4, 0x30
    addi    r0, r4, 0x28
    stwx    r8, r5, r7
    addi    r4, r4, 0x40
    lwz     r5, 0x34(r31)
    stwx    r6, r5, r0
    bdnz+      branch_0x8030f08c
branch_0x8030f0ac:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __ct__Q38JASystem14TBasicWaveBank9TWaveInfoFv
__ct__Q38JASystem14TBasicWaveBank9TWaveInfoFv: # 0x8030f0c8
    lis     r4, 0x803e
    addi    r0, r4, 0x2688
    lis     r4, 0x803e
    stw     r0, 0x0(r3)
    addi    r0, r4, 0x269c
    stw     r0, 0x0(r3)
    li      r0, 0x0
    stw     r0, 0x30(r3)
    stw     r0, 0x34(r3)
    stw     r0, 0x38(r3)
    stw     r0, 0x3c(r3)
    blr


.globl __dt__Q38JASystem14TBasicWaveBank11TWaveHandleFv
__dt__Q38JASystem14TBasicWaveBank11TWaveHandleFv: # 0x8030f0f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8030f13c
    lis     r3, 0x803e
    addi    r0, r3, 0x269c
    stw     r0, 0x0(r31)
    beq-    branch_0x8030f12c
    lis     r3, 0x803e
    addi    r0, r3, 0x2688
    stw     r0, 0x0(r31)
branch_0x8030f12c:
    extsh.  r0, r4
    ble-    branch_0x8030f13c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8030f13c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__Q28JASystem11TWaveHandleFv
__dt__Q28JASystem11TWaveHandleFv: # 0x8030f154
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8030f188
    lis     r3, 0x803e
    addi    r3, r3, 0x2688
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x8030f188
    mr      r3, r31
    bl      __dl__FPv
branch_0x8030f188:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setWaveInfo__Q38JASystem14TBasicWaveBank10TWaveGroupFiUlRCQ28JASystem9TWaveInfo
setWaveInfo__Q38JASystem14TBasicWaveBank10TWaveGroupFiUlRCQ28JASystem9TWaveInfo: # 0x8030f1a0
    lwz     r0, 0x34(r3)
    slwi    r8, r4, 6
    addi    r4, r3, 0x30
    add     r7, r0, r8
    stw     r5, 0x34(r7)
    lwz     r7, 0x34(r3)
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    add     r7, r7, r8
    stw     r5, 0x4(r7)
    stw     r0, 0x8(r7)
    lwz     r5, 0x8(r6)
    lwz     r0, 0xc(r6)
    stw     r5, 0xc(r7)
    stw     r0, 0x10(r7)
    lwz     r5, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r5, 0x14(r7)
    stw     r0, 0x18(r7)
    lwz     r5, 0x18(r6)
    lwz     r0, 0x1c(r6)
    stw     r5, 0x1c(r7)
    stw     r0, 0x20(r7)
    lwz     r5, 0x20(r6)
    lwz     r0, 0x24(r6)
    stw     r5, 0x24(r7)
    stw     r0, 0x28(r7)
    lwz     r0, 0x28(r6)
    stw     r0, 0x2c(r7)
    lwz     r0, 0x34(r3)
    add     r3, r0, r8
    stw     r4, 0x28(r3)
    blr


.globl getWaveInfo__Q38JASystem14TBasicWaveBank11TWaveHandleCFv
getWaveInfo__Q38JASystem14TBasicWaveBank11TWaveHandleCFv: # 0x8030f224
    addi    r3, r3, 0x4
    blr


.globl getWavePtr__Q38JASystem14TBasicWaveBank11TWaveHandleCFv
getWavePtr__Q38JASystem14TBasicWaveBank11TWaveHandleCFv: # 0x8030f22c
    lwz     r4, 0x30(r3)
    lwz     r4, 0x8(r4)
    cmplwi  r4, 0x0
    bne-    branch_0x8030f244
    li      r3, 0x0
    blr

branch_0x8030f244:
    lwz     r0, 0xc(r3)
    add     r3, r4, r0
    blr


.globl getWaveArcFileName__Q38JASystem14TBasicWaveBank10TWaveGroupCFv
getWaveArcFileName__Q38JASystem14TBasicWaveBank10TWaveGroupCFv: # 0x8030f250
    lwz     r3, 0x3c(r3)
    blr


.globl getHeap__Q38JASystem14TBasicWaveBank10TWaveGroupFv
getHeap__Q38JASystem14TBasicWaveBank10TWaveGroupFv: # 0x8030f258
    addi    r3, r3, 0x4
    blr


.globl getType__Q28JASystem14TBasicWaveBankCFv
getType__Q28JASystem14TBasicWaveBankCFv: # 0x8030f260
    lis     r3, 0x4253
    addi    r3, r3, 0x4943
    blr

