
.globl checkSoundHandle__8JAIEntryFPP8JAISoundUlPv
checkSoundHandle__8JAIEntryFPP8JAISoundUlPv: # 0x8030493c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    li      r30, 0x0
    stw     r29, 0x2c(sp)
    mr.     r29, r4
    stw     r28, 0x28(sp)
    addi    r28, r3, 0x0
    beq-    branch_0x803049d4
    lwz     r3, 0x0(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x803049d4
    lwz     r0, 0x8(r3)
    clrrwi  r4, r5, 30
    clrrwi  r0, r0, 30
    cmplw   r4, r0
    beq-    branch_0x80304994
    li      r4, 0x0
    bl      stop__8JAISoundFUl
    b       branch_0x803049d4

branch_0x80304994:
    lwz     r3, 0x0(r28)
    mr      r4, r6
    bl      getSoundPrioity__8JAIBasicFPv
    lwz     r4, 0x0(r29)
    clrlwi  r31, r3, 24
    lwz     r3, 0x0(r28)
    lwz     r4, 0x3c(r4)
    bl      getSoundPrioity__8JAIBasicFPv
    clrlwi  r0, r3, 24
    cmplw   r0, r31
    bgt-    branch_0x803049d0
    lwz     r3, 0x0(r29)
    li      r4, 0x0
    bl      stop__8JAISoundFUl
    b       branch_0x803049d4

branch_0x803049d0:
    li      r30, 0x1
branch_0x803049d4:
    lwz     r0, 0x3c(sp)
    mr      r3, r30
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl initSoundParameter__8JAIEntryFP8JAISoundPP8JAISoundP8JAIActorUlUlUcPv
initSoundParameter__8JAIEntryFP8JAISoundPP8JAISoundP8JAIActorUlUlUcPv: # 0x803049f8
    cmplwi  r6, 0x0
    stw     r7, 0x8(r4)
    beq-    branch_0x80304a4c
    lwz     r0, 0x0(r6)
    stw     r0, 0x20(r4)
    lwz     r0, 0x0(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80304a34
    lwz     r0, 0x4(r6)
    stw     r0, 0x24(r4)
    lwz     r0, 0x8(r6)
    stw     r0, 0x28(r4)
    lwz     r0, 0xc(r6)
    stw     r0, 0x18(r4)
    b       branch_0x80304a60

branch_0x80304a34:
    li      r0, 0x0
    stw     r0, 0x24(r4)
    stw     r0, 0x28(r4)
    lwz     r0, 0xc(r6)
    stw     r0, 0x18(r4)
    b       branch_0x80304a60

branch_0x80304a4c:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r0, 0x24(r4)
    stw     r0, 0x28(r4)
    stw     r0, 0x18(r4)
branch_0x80304a60:
    stw     r5, 0x34(r4)
    li      r3, 0xa
    li      r0, 0x0
    stw     r8, 0x10(r4)
    cmplwi  r5, 0x0
    stb     r9, 0x4(r4)
    stw     r10, 0x3c(r4)
    stb     r3, 0x2(r4)
    lbz     r3, -0x74d0(r13)
    stb     r3, 0x5(r4)
    sth     r0, 0x6(r4)
    stw     r0, 0x14(r4)
    beqlr-    

    stw     r4, 0x0(r5)
    blr

