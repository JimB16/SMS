
.globl storeBuffer__10JAISeEntryFPP8JAISoundP8JAIActorUlUlUcPv
storeBuffer__10JAISeEntryFPP8JAISoundP8JAIActorUlUlUcPv: # 0x80304a9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stmw    r15, 0x6c(sp)
    addi    r19, r3, 0x0
    mr.     r20, r4
    addi    r15, r5, 0x0
    addi    r21, r6, 0x0
    addi    r22, r7, 0x0
    addi    r23, r8, 0x0
    addi    r24, r9, 0x0
    lwz     r3, 0x0(r3)
    lwz     r30, 0x0(r3)
    beq-    branch_0x80304afc
    lwz     r3, 0x0(r20)
    cmplwi  r3, 0x0
    beq-    branch_0x80304afc
    lwz     r0, 0x8(r3)
    cmplw   r0, r21
    bne-    branch_0x80304afc
    bne-    branch_0x80304b18
    rlwinm  r0, r21, 0, 20, 21
    cmplwi  r0, 0x800
    bne-    branch_0x80304b18
branch_0x80304afc:
    addi    r3, r19, 0x0
    addi    r4, r20, 0x0
    addi    r5, r21, 0x0
    addi    r6, r24, 0x0
    bl      checkSoundHandle__8JAIEntryFPP8JAISoundUlPv
    cmplwi  r3, 0x0
    bne-    branch_0x80304e04
branch_0x80304b18:
    lwz     r3, 0x0(r19)
    mr      r4, r21
    bl      changeIDToCategory__8JAIBasicFUl
    clrlwi  r0, r3, 24
    lwz     r3, 0x1e8(r30)
    mulli   r31, r0, 0xc
    add     r3, r3, r31
    cmplwi  r15, 0x0
    lwz     r29, 0x4(r3)
    mr      r28, r15
    bne-    branch_0x80304b50
    lis     r3, 0x8040
    addi    r0, r3, 0x74f8
    mr      r28, r0
branch_0x80304b50:
    lwz     r3, 0x0(r19)
    rlwinm  r0, r21, 21, 23, 30
    lwz     r4, 0x4(r30)
    rlwinm  r15, r21, 0, 20, 20
    lbz     r3, 0x10(r3)
    lwz     r27, 0x0(r28)
    addi    r17, sp, 0x28
    slwi    r3, r3, 2
    lwzx    r3, r4, r3
    li      r26, 0x0
    add     r3, r3, r0
    lbz     r25, 0x1(r3)
    b       branch_0x80304d08

branch_0x80304b84:
    lwz     r0, 0x20(r29)
    cmplw   r0, r27
    bne-    branch_0x80304d04
    lwz     r0, 0x8(r29)
    cmplw   r0, r21
    bne-    branch_0x80304c04
    lwz     r3, 0x0(r19)
    mr      r4, r24
    bl      getSoundSwBit__8JAIBasicFPv
    rlwinm. r0, r3, 0, 12, 12
    bne-    branch_0x80304c04
    cmplwi  r15, 0x0
    bne-    branch_0x80304bec
    lbz     r0, 0x1(r29)
    cmplwi  r0, 0x5
    bne-    branch_0x80304bec
    li      r0, 0x4
    cmplwi  r20, 0x0
    stb     r0, 0x1(r29)
    beq-    branch_0x80304e04
    lwz     r0, 0x0(r20)
    cmplwi  r0, 0x0
    bne-    branch_0x80304e04
    stw     r20, 0x34(r29)
    stw     r29, 0x0(r20)
    b       branch_0x80304e04

branch_0x80304bec:
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      stop__8JAISoundFUl
    li      r29, 0x0
    li      r26, 0xff
    b       branch_0x80304d08

branch_0x80304c04:
    clrlwi. r16, r26, 24
    bne-    branch_0x80304c18
    slwi    r0, r16, 2
    stwx    r29, r17, r0
    b       branch_0x80304cf8

branch_0x80304c18:
    mr      r3, r29
    bl      getInfoPriority__8JAISoundFv
    clrlwi  r18, r3, 24
    lwz     r3, 0x28(sp)
    bl      getInfoPriority__8JAISoundFv
    clrlwi  r0, r3, 24
    cmplw   r0, r18
    bge-    branch_0x80304c44
    slwi    r0, r16, 2
    stwx    r29, r17, r0
    b       branch_0x80304cf8

branch_0x80304c44:
    cmplwi  r16, 0x0
    li      r10, 0x0
    li      r11, 0x0
    ble-    branch_0x80304cf4
    cmplwi  r16, 0x8
    subi    r3, r16, 0x8
    ble-    branch_0x80304cc8
    addi    r0, r3, 0x7
    srwi    r0, r0, 3
    cmplwi  r3, 0x0
    mtctr   r0
    ble-    branch_0x80304cc8
branch_0x80304c74:
    addi    r3, sp, 0x28
    add     r3, r3, r11
    lwz     r0, 0x0(r3)
    addi    r10, r10, 0x8
    addi    r11, r11, 0x20
    stw     r0, 0x4(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    lwz     r0, 0x8(r3)
    stw     r0, 0xc(r3)
    lwz     r0, 0xc(r3)
    stw     r0, 0x10(r3)
    lwz     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    lwz     r0, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x18(r3)
    stw     r0, 0x1c(r3)
    lwz     r0, 0x1c(r3)
    stw     r0, 0x20(r3)
    bdnz+      branch_0x80304c74
branch_0x80304cc8:
    subf    r0, r10, r16
    cmplw   r10, r16
    mtctr   r0
    slwi    r3, r10, 2
    bge-    branch_0x80304cf4
branch_0x80304cdc:
    addi    r4, sp, 0x28
    add     r4, r4, r3
    lwz     r0, 0x0(r4)
    addi    r3, r3, 0x4
    stw     r0, 0x4(r4)
    bdnz+      branch_0x80304cdc
branch_0x80304cf4:
    stw     r29, 0x28(sp)
branch_0x80304cf8:
    lwz     r29, 0x30(r29)
    addi    r26, r26, 0x1
    b       branch_0x80304d08

branch_0x80304d04:
    lwz     r29, 0x30(r29)
branch_0x80304d08:
    cmplwi  r29, 0x0
    bne+    branch_0x80304b84
    clrlwi  r0, r26, 24
    cmplw   r0, r25
    bne-    branch_0x80304d80
    lwz     r3, 0x0(r19)
    mr      r4, r24
    bl      getSoundPrioity__8JAIBasicFPv
    clrlwi  r15, r3, 24
    lwz     r3, 0x28(sp)
    bl      getInfoPriority__8JAISoundFv
    clrlwi  r0, r3, 24
    cmplw   r0, r15
    bgt-    branch_0x80304e04
    lwz     r3, 0x0(r19)
    mr      r4, r24
    bl      getSoundPrioity__8JAIBasicFPv
    clrlwi  r15, r3, 24
    lwz     r3, 0x28(sp)
    bl      getInfoPriority__8JAISoundFv
    clrlwi  r0, r3, 24
    cmplw   r0, r15
    bne-    branch_0x80304d74
    lwz     r3, 0x28(sp)
    lbz     r0, 0x1(r3)
    cmplwi  r0, 0x5
    beq-    branch_0x80304e04
branch_0x80304d74:
    lwz     r3, 0x0(r19)
    lwz     r4, 0x28(sp)
    bl      releaseSeRegist__8JAIBasicFP8JAISound
branch_0x80304d80:
    lwz     r0, 0x1e8(r30)
    lwz     r3, 0x0(r19)
    add     r4, r0, r31
    bl      getControllerHandle__8JAIBasicFP13JAILinkBuffer
    mr.     r15, r3
    bne-    branch_0x80304dac
    cmplwi  r20, 0x0
    beq-    branch_0x80304e04
    li      r0, 0x0
    stw     r0, 0x0(r20)
    b       branch_0x80304e04

branch_0x80304dac:
    lwz     r3, 0x0(r19)
    bl      getSeParametermeterPointer__8JAIBasicFv
    stw     r3, 0x38(r15)
    lwz     r0, 0x38(r15)
    cmplwi  r0, 0x0
    bne-    branch_0x80304dd0
    li      r0, 0x0
    stw     r0, 0x0(r20)
    b       branch_0x80304e04

branch_0x80304dd0:
    li      r0, 0x1
    stb     r0, 0x1(r15)
    addi    r3, r19, 0x0
    addi    r4, r15, 0x0
    addi    r5, r20, 0x0
    addi    r6, r28, 0x0
    addi    r7, r21, 0x0
    addi    r8, r22, 0x0
    addi    r9, r23, 0x0
    addi    r10, r24, 0x0
    bl      initSoundParameter__8JAIEntryFP8JAISoundPP8JAISoundP8JAIActorUlUlUcPv
    b       branch_0x80304e04


.incbin "./baserom/code/Text_0x80005600.bin", 0x2ff800, 0x80304e04 - 0x80304e00
branch_0x80304e04:
    lmw     r15, 0x6c(sp)
    lwz     r0, 0xb4(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr

