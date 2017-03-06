
.globl storeBuffer__14JAIStreamEntryFPP8JAISoundP8JAIActorUlUlUcPv
storeBuffer__14JAIStreamEntryFPP8JAISoundP8JAIActorUlUlUcPv: # 0x80305104
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r23, 0x2c(sp)
    mr      r23, r3
    addi    r26, r6, 0x0
    addi    r29, r9, 0x0
    addi    r25, r5, 0x0
    addi    r24, r4, 0x0
    addi    r27, r7, 0x0
    addi    r28, r8, 0x0
    addi    r5, r26, 0x0
    addi    r6, r29, 0x0
    lwz     r3, 0x0(r3)
    lwz     r30, 0x0(r3)
    addi    r3, r23, 0x0
    bl      checkSoundHandle__8JAIEntryFPP8JAISoundUlPv
    cmplwi  r3, 0x0
    bne-    branch_0x803051f0
    lwz     r3, 0x0(r23)
    addi    r4, r30, 0x21c
    bl      getControllerHandle__8JAIBasicFP13JAILinkBuffer
    mr.     r31, r3
    bne-    branch_0x80305170
    li      r0, 0x0
    stw     r0, 0x0(r24)
    b       branch_0x803051f0

branch_0x80305170:
    lwz     r3, 0x0(r23)
    bl      getStreamParameter__8JAIBasicFv
    stw     r3, 0x38(r31)
    lwz     r0, 0x38(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80305194
    li      r0, 0x0
    stw     r0, 0x0(r24)
    b       branch_0x803051f0

branch_0x80305194:
    mr      r3, r31
    bl      getStreamParameter__8JAISoundFv
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    bl      initStreamParameter__7JAIDataFP18JAIStreamParameter
    li      r0, 0x1
    stb     r0, 0x1(r31)
    li      r3, 0xa
    li      r0, 0x0
    stb     r3, 0x2(r31)
    addi    r3, r23, 0x0
    addi    r4, r31, 0x0
    lwz     r7, 0x0(r23)
    addi    r5, r24, 0x0
    addi    r6, r25, 0x0
    lwz     r9, 0x0(r7)
    addi    r7, r26, 0x0
    addi    r8, r27, 0x0
    lwz     r11, 0x184(r9)
    addi    r9, r28, 0x0
    addi    r10, r29, 0x0
    stb     r0, 0x2(r11)
    bl      initSoundParameter__8JAIEntryFP8JAISoundPP8JAISoundP8JAIActorUlUlUcPv
branch_0x803051f0:
    lmw     r23, 0x2c(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr

