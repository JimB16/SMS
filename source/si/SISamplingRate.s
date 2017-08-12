
.globl SISetSamplingRate
SISetSamplingRate: # 0x803699f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    cmplwi  r29, 0xb
    lis     r3, XYNTSC@ha
    addi    r31, r3, XYNTSC@l
    ble-    branch_0x80369a28
    li      r29, 0xb
branch_0x80369a28:
    bl      OSDisableInterrupts
    stw     r29, R13Off_m0x5760(r13)
    mr      r30, r3
    bl      VIGetTvFormat
    cmpwi   r3, 0x2
    beq-    branch_0x80369a60
    bge-    branch_0x80369a54
    cmpwi   r3, 0x0
    beq-    branch_0x80369a60
    bge-    branch_0x80369a68
    b       branch_0x80369a70

branch_0x80369a54:
    cmpwi   r3, 0x5
    beq-    branch_0x80369a60
    b       branch_0x80369a70

branch_0x80369a60:
    mr      r4, r31
    b       branch_0x80369a84

branch_0x80369a68:
    addi    r4, r31, 0x30
    b       branch_0x80369a84

branch_0x80369a70:
    addi    r3, r31, 0x60
    crxor   6, 6, 6
    bl      OSReport
    li      r29, 0x0
    addi    r4, r31, 0x0
branch_0x80369a84:
    lis     r3, 0xcc00
    lhz     r0, 0x206c(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x80369a9c
    li      r5, 0x2
    b       branch_0x80369aa0

branch_0x80369a9c:
    li      r5, 0x1
branch_0x80369aa0:
    slwi    r3, r29, 2
    lhzx    r0, r4, r3
    add     r3, r4, r3
    lbz     r4, 0x2(r3)
    mullw   r3, r5, r0
    bl      SISetXY
    mr      r3, r30
    bl      OSRestoreInterrupts
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl SIRefreshSamplingRate
SIRefreshSamplingRate: # 0x80369adc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, R13Off_m0x5760(r13)
    bl      SISetSamplingRate
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

