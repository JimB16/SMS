
.globl saveOption__12TFlagManagerFR21JSUMemoryOutputStream
saveOption__12TFlagManagerFR21JSUMemoryOutputStream: # 0x8029344c
    mflr    r0
    li      r5, 0x4
    stw     r0, 0x4(sp)
    li      r0, 0x2
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    addi    r4, sp, 0x10
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x10(sp)
    bl      write__15JSUOutputStreamFPCvl
    addi    r3, r30, 0x0
    lis     r4, 0x9
    bl      getBool__12TFlagManagerCFUl
    clrlwi  r0, r3, 24
    cntlzw  r0, r0
    srwi    r4, r0, 5
    addi    r3, r30, 0x0
    lis     r5, 0x7
    bl      setBool__12TFlagManagerFbUl
    addi    r3, r30, 0x0
    lis     r4, 0xa
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x1
    beq-    branch_0x802934f4
    bge-    branch_0x802934c8
    cmpwi   r3, 0x0
    bge-    branch_0x802934d4
    b       branch_0x80293530

branch_0x802934c8:
    cmpwi   r3, 0x3
    bge-    branch_0x80293530
    b       branch_0x80293514

branch_0x802934d4:
    li      r3, 0x0
    bl      OSSetSoundMode
    lis     r4, 0x7
    addi    r3, r30, 0x0
    addi    r5, r4, 0x1
    li      r4, 0x0
    bl      setBool__12TFlagManagerFbUl
    b       branch_0x80293530

branch_0x802934f4:
    li      r3, 0x1
    bl      OSSetSoundMode
    lis     r4, 0x7
    addi    r3, r30, 0x0
    addi    r5, r4, 0x1
    li      r4, 0x0
    bl      setBool__12TFlagManagerFbUl
    b       branch_0x80293530

branch_0x80293514:
    li      r3, 0x1
    bl      OSSetSoundMode
    lis     r4, 0x7
    addi    r3, r30, 0x0
    addi    r5, r4, 0x1
    li      r4, 0x1
    bl      setBool__12TFlagManagerFbUl
branch_0x80293530:
    lis     r4, 0xa
    addi    r3, r30, 0x0
    addi    r4, r4, 0x1
    bl      getFlag__12TFlagManagerCFUl
    addi    r5, r3, 0x0
    addi    r3, r30, 0x0
    lis     r4, 0x8
    bl      setFlag__12TFlagManagerFUll
    lis     r4, 0x9
    addi    r3, r30, 0x0
    addi    r4, r4, 0x1
    bl      getBool__12TFlagManagerCFUl
    lis     r5, 0x7
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    addi    r5, r5, 0x2
    bl      setBool__12TFlagManagerFbUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x284
    li      r5, 0x1
    bl      write__15JSUOutputStreamFPCvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x288
    li      r5, 0x4
    bl      write__15JSUOutputStreamFPCvl
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl loadOption__12TFlagManagerFR20JSUMemoryInputStream
loadOption__12TFlagManagerFR20JSUMemoryInputStream: # 0x802935ac
    mflr    r0
    li      r5, 0x4
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r4, 0x0
    addi    r4, sp, 0x28
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    stb     r0, 0x284(r3)
    addi    r3, r31, 0x0
    stw     r0, 0x288(r30)
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x28(sp)
    cmplwi  r0, 0x2
    bne-    branch_0x80293610
    addi    r3, r31, 0x0
    addi    r4, r30, 0x284
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x288
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
branch_0x80293610:
    addi    r3, r30, 0x0
    lis     r4, 0x7
    bl      getBool__12TFlagManagerCFUl
    clrlwi  r0, r3, 24
    cntlzw  r0, r0
    srwi    r4, r0, 5
    addi    r3, r30, 0x0
    lis     r5, 0x9
    bl      setBool__12TFlagManagerFbUl
    bl      OSGetSoundMode
    cmplwi  r3, 0x0
    bne-    branch_0x80293654
    addi    r3, r30, 0x0
    lis     r4, 0xa
    li      r5, 0x0
    bl      setFlag__12TFlagManagerFUll
    b       branch_0x80293684

branch_0x80293654:
    lis     r4, 0x7
    addi    r3, r30, 0x0
    addi    r4, r4, 0x1
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80293674
    li      r5, 0x2
    b       branch_0x80293678

branch_0x80293674:
    li      r5, 0x1
branch_0x80293678:
    addi    r3, r30, 0x0
    lis     r4, 0xa
    bl      setFlag__12TFlagManagerFUll
branch_0x80293684:
    addi    r3, r30, 0x0
    lis     r4, 0x8
    bl      getFlag__12TFlagManagerCFUl
    lis     r4, 0xa
    addi    r5, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r4, 0x1
    bl      setFlag__12TFlagManagerFUll
    lis     r4, 0x7
    addi    r3, r30, 0x0
    addi    r4, r4, 0x2
    bl      getBool__12TFlagManagerCFUl
    lis     r5, 0x9
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    addi    r5, r5, 0x1
    bl      setBool__12TFlagManagerFbUl
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl correctOptFlag__12TFlagManagerFv
correctOptFlag__12TFlagManagerFv: # 0x802936e0
    mflr    r0
    lis     r4, 0x7
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    bl      getBool__12TFlagManagerCFUl
    clrlwi  r0, r3, 24
    cntlzw  r0, r0
    srwi    r4, r0, 5
    addi    r3, r31, 0x0
    lis     r5, 0x9
    bl      setBool__12TFlagManagerFbUl
    bl      OSGetSoundMode
    cmplwi  r3, 0x0
    bne-    branch_0x80293734
    addi    r3, r31, 0x0
    lis     r4, 0xa
    li      r5, 0x0
    bl      setFlag__12TFlagManagerFUll
    b       branch_0x80293764

branch_0x80293734:
    lis     r4, 0x7
    addi    r3, r31, 0x0
    addi    r4, r4, 0x1
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80293754
    li      r5, 0x2
    b       branch_0x80293758

branch_0x80293754:
    li      r5, 0x1
branch_0x80293758:
    addi    r3, r31, 0x0
    lis     r4, 0xa
    bl      setFlag__12TFlagManagerFUll
branch_0x80293764:
    addi    r3, r31, 0x0
    lis     r4, 0x8
    bl      getFlag__12TFlagManagerCFUl
    lis     r4, 0xa
    addi    r5, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r4, 0x1
    bl      setFlag__12TFlagManagerFUll
    lis     r4, 0x7
    addi    r3, r31, 0x0
    addi    r4, r4, 0x2
    bl      getBool__12TFlagManagerCFUl
    lis     r5, 0x9
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    addi    r5, r5, 0x1
    bl      setBool__12TFlagManagerFbUl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl resetOpt__12TFlagManagerFv
resetOpt__12TFlagManagerFv: # 0x802937bc
    li      r0, 0x0
    stb     r0, 0x284(r3)
    stw     r0, 0x288(r3)
    blr


.globl saveFail__12TFlagManagerFv
saveFail__12TFlagManagerFv: # 0x802937cc
    mflr    r0
    lis     r4, 0x2
    stw     r0, 0x4(sp)
    li      r5, -0x1
    stwu    sp, -0x8(sp)
    lwz     r0, 0x2a0(r3)
    lwz     r6, 0x2a4(r3)
    stw     r6, 0x29c(r3)
    stw     r0, 0x298(r3)
    bl      incFlag__12TFlagManagerFUll
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl saveSuccess__12TFlagManagerFv
saveSuccess__12TFlagManagerFv: # 0x80293804
    mflr    r0
    li      r5, 0x77
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2a8
    bl      memcpy
    addi    r3, r31, 0x320
    addi    r4, r31, 0x78
    li      r5, 0x54
    bl      memcpy
    lwz     r0, 0x298(r31)
    lwz     r3, 0x29c(r31)
    stw     r3, 0x37c(r31)
    stw     r0, 0x378(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl save__12TFlagManagerFR21JSUMemoryOutputStream
save__12TFlagManagerFR21JSUMemoryOutputStream: # 0x8029385c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    mr      r29, r4
    stw     r28, 0x40(sp)
    mr      r28, r3
    lwz     r0, 0x298(r3)
    lwz     r3, 0x29c(r3)
    stw     r3, 0x2a4(r28)
    stw     r0, 0x2a0(r28)
    bl      OSGetTime
    stw     r4, 0x29c(r28)
    lis     r4, 0x2
    li      r5, 0x1
    stw     r3, 0x298(r28)
    mr      r3, r28
    bl      incFlag__12TFlagManagerFUll
    li      r0, 0x4
    stw     r0, 0x30(sp)
    addi    r3, r29, 0x0
    addi    r4, sp, 0x30
    li      r5, 0x4
    bl      write__15JSUOutputStreamFPCvl
    lwz     r0, 0x298(r28)
    mr      r3, r29
    lwz     r6, 0x29c(r28)
    addi    r4, sp, 0x28
    li      r5, 0x8
    stw     r6, 0x2c(sp)
    stw     r0, 0x28(sp)
    bl      write__15JSUOutputStreamFPCvl
    li      r31, 0x0
    stw     r31, 0x24(sp)
    addi    r3, r29, 0x0
    addi    r4, sp, 0x20
    stw     r31, 0x20(sp)
    li      r5, 0x8
    bl      write__15JSUOutputStreamFPCvl
    addi    r3, r28, 0x0
    lis     r4, 0x2
    bl      getFlag__12TFlagManagerCFUl
    stw     r3, 0x18(sp)
    addi    r3, r29, 0x0
    addi    r4, sp, 0x18
    li      r5, 0x4
    bl      write__15JSUOutputStreamFPCvl
    addi    r3, r28, 0x0
    lis     r4, 0x4
    bl      getFlag__12TFlagManagerCFUl
    sth     r3, 0x16(sp)
    addi    r3, r29, 0x0
    addi    r4, sp, 0x16
    li      r5, 0x2
    bl      write__15JSUOutputStreamFPCvl
    sth     r31, 0x14(sp)
    addi    r3, r29, 0x0
    addi    r4, sp, 0x14
    li      r5, 0x2
    bl      write__15JSUOutputStreamFPCvl
    li      r30, 0x0
branch_0x80293958:
    stw     r31, 0x10(sp)
    addi    r3, r29, 0x0
    addi    r4, sp, 0x10
    li      r5, 0x4
    bl      write__15JSUOutputStreamFPCvl
    addi    r30, r30, 0x1
    cmpwi   r30, 0x10
    blt+    branch_0x80293958
    addi    r3, r29, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x77
    bl      write__15JSUOutputStreamFPCvl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    li      r4, 0x189
    li      r5, 0x0
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r3, r29, 0x0
    addi    r4, r28, 0x78
    li      r5, 0x54
    bl      write__15JSUOutputStreamFPCvl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    li      r4, 0x1ac
    li      r5, 0x0
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl correctFlag__12TFlagManagerFv
correctFlag__12TFlagManagerFv: # 0x802939f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lis     r31, 0x2
    addi    r4, r31, 0x1
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x3
    bge-    branch_0x80293a34
    addi    r3, r28, 0x0
    addi    r4, r31, 0x1
    li      r5, 0x3
    bl      setFlag__12TFlagManagerFUll
branch_0x80293a34:
    lis     r31, 0x2
    addi    r3, r28, 0x0
    addi    r4, r31, 0x2
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    bne-    branch_0x80293a5c
    addi    r3, r28, 0x0
    addi    r4, r31, 0x2
    li      r5, 0xdac
    bl      setFlag__12TFlagManagerFUll
branch_0x80293a5c:
    lis     r31, 0x2
    addi    r3, r28, 0x0
    addi    r4, r31, 0x3
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    bne-    branch_0x80293a84
    addi    r3, r28, 0x0
    addi    r4, r31, 0x3
    li      r5, 0xbb8
    bl      setFlag__12TFlagManagerFUll
branch_0x80293a84:
    lis     r31, 0x2
    addi    r3, r28, 0x0
    addi    r4, r31, 0x14
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    bne-    branch_0x80293aac
    addi    r3, r28, 0x0
    addi    r4, r31, 0x14
    li      r5, 0xfa0
    bl      setFlag__12TFlagManagerFUll
branch_0x80293aac:
    lis     r31, 0x2
    addi    r3, r28, 0x0
    addi    r4, r31, 0x4
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    bne-    branch_0x80293ad4
    addi    r3, r28, 0x0
    addi    r4, r31, 0x4
    li      r5, 0xbb8
    bl      setFlag__12TFlagManagerFUll
branch_0x80293ad4:
    lis     r31, 0x1
    addi    r3, r28, 0x0
    addi    r5, r31, 0x39a
    li      r4, 0x1
    bl      setBool__12TFlagManagerFbUl
    addi    r3, r28, 0x0
    addi    r5, r31, 0x39d
    li      r4, 0x1
    bl      setBool__12TFlagManagerFbUl
    addi    r31, r31, 0x77
    li      r30, 0x0
    lis     r29, 0x1
    b       branch_0x80293b24

branch_0x80293b08:
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    beq-    branch_0x80293b20
    addi    r30, r30, 0x1
branch_0x80293b20:
    addi    r29, r29, 0x1
branch_0x80293b24:
    cmplw   r29, r31
    ble+    branch_0x80293b08
    addi    r3, r28, 0x0
    addi    r5, r30, 0x0
    lis     r4, 0x4
    bl      setFlag__12TFlagManagerFUll
    lis     r3, 0x1
    addi    r30, r3, 0x78
    addi    r31, r3, 0x365
    li      r29, 0x0
    b       branch_0x80293b6c

branch_0x80293b50:
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    beq-    branch_0x80293b68
    addi    r29, r29, 0x1
branch_0x80293b68:
    addi    r30, r30, 0x1
branch_0x80293b6c:
    cmplw   r30, r31
    ble+    branch_0x80293b50
    lis     r4, 0x4
    addi    r3, r28, 0x0
    addi    r5, r29, 0x0
    addi    r4, r4, 0x1
    bl      setFlag__12TFlagManagerFUll
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl firstStart__12TFlagManagerFv
firstStart__12TFlagManagerFv: # 0x80293ba8
    mflr    r0
    li      r10, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x2
    mtctr   r0
    addi    r9, r10, 0x0
    stwu    sp, -0x20(sp)
    addi    r8, r10, 0x0
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    addi    r7, r10, 0x0
    addi    r6, r10, 0x0
    addi    r5, r10, 0x0
    addi    r4, r10, 0x0
    addi    r3, r10, 0x0
    addi    r0, r10, 0x0
branch_0x80293be8:
    add     r11, r31, r10
    stb     r9, 0x0(r11)
    addi    r10, r10, 0x8
    stb     r8, 0x1(r11)
    stb     r7, 0x2(r11)
    stb     r6, 0x3(r11)
    stb     r5, 0x4(r11)
    stb     r4, 0x5(r11)
    stb     r3, 0x6(r11)
    stb     r0, 0x7(r11)
    add     r11, r31, r10
    addi    r10, r10, 0x8
    stb     r9, 0x0(r11)
    stb     r8, 0x1(r11)
    stb     r7, 0x2(r11)
    stb     r6, 0x3(r11)
    stb     r5, 0x4(r11)
    stb     r4, 0x5(r11)
    stb     r3, 0x6(r11)
    stb     r0, 0x7(r11)
    add     r11, r31, r10
    addi    r10, r10, 0x8
    stb     r9, 0x0(r11)
    stb     r8, 0x1(r11)
    stb     r7, 0x2(r11)
    stb     r6, 0x3(r11)
    stb     r5, 0x4(r11)
    stb     r4, 0x5(r11)
    stb     r3, 0x6(r11)
    stb     r0, 0x7(r11)
    add     r11, r31, r10
    addi    r10, r10, 0x8
    stb     r9, 0x0(r11)
    stb     r8, 0x1(r11)
    stb     r7, 0x2(r11)
    stb     r6, 0x3(r11)
    stb     r5, 0x4(r11)
    stb     r4, 0x5(r11)
    stb     r3, 0x6(r11)
    stb     r0, 0x7(r11)
    add     r11, r31, r10
    addi    r10, r10, 0x8
    stb     r9, 0x0(r11)
    stb     r8, 0x1(r11)
    stb     r7, 0x2(r11)
    stb     r6, 0x3(r11)
    stb     r5, 0x4(r11)
    stb     r4, 0x5(r11)
    stb     r3, 0x6(r11)
    stb     r0, 0x7(r11)
    add     r11, r31, r10
    addi    r10, r10, 0x8
    stb     r9, 0x0(r11)
    stb     r8, 0x1(r11)
    stb     r7, 0x2(r11)
    stb     r6, 0x3(r11)
    stb     r5, 0x4(r11)
    stb     r4, 0x5(r11)
    stb     r3, 0x6(r11)
    stb     r0, 0x7(r11)
    add     r11, r31, r10
    addi    r10, r10, 0x8
    stb     r9, 0x0(r11)
    stb     r8, 0x1(r11)
    stb     r7, 0x2(r11)
    stb     r6, 0x3(r11)
    stb     r5, 0x4(r11)
    stb     r4, 0x5(r11)
    stb     r3, 0x6(r11)
    stb     r0, 0x7(r11)
    bdnz+      branch_0x80293be8
    subfic  r0, r10, 0x77
    cmpwi   r10, 0x77
    mtctr   r0
    add     r3, r31, r10
    li      r0, 0x0
    bge-    branch_0x80293d28
branch_0x80293d1c:
    stb     r0, 0x0(r3)
    addi    r3, r3, 0x1
    bdnz+      branch_0x80293d1c
branch_0x80293d28:
    li      r4, 0x0
    stw     r4, 0x78(r31)
    li      r3, 0x10
    subfic  r0, r3, 0x15
    stw     r4, 0x7c(r31)
    cmpwi   r3, 0x15
    mtctr   r0
    slwi    r3, r3, 2
    stw     r4, 0x80(r31)
    stw     r4, 0x84(r31)
    stw     r4, 0x88(r31)
    stw     r4, 0x8c(r31)
    stw     r4, 0x90(r31)
    stw     r4, 0x94(r31)
    stw     r4, 0x98(r31)
    stw     r4, 0x9c(r31)
    stw     r4, 0xa0(r31)
    stw     r4, 0xa4(r31)
    stw     r4, 0xa8(r31)
    stw     r4, 0xac(r31)
    stw     r4, 0xb0(r31)
    stw     r4, 0xb4(r31)
    bge-    branch_0x80293d94
branch_0x80293d84:
    addi    r0, r3, 0x78
    stwx    r4, r31, r0
    addi    r3, r3, 0x4
    bdnz+      branch_0x80293d84
branch_0x80293d94:
    li      r0, 0x0
    stw     r0, 0x29c(r31)
    mr      r3, r31
    stw     r0, 0x298(r31)
    stw     r0, 0x2a4(r31)
    stw     r0, 0x2a0(r31)
    bl      resetGame__12TFlagManagerFv
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2a8
    li      r5, 0x77
    bl      memcpy
    addi    r3, r31, 0x320
    addi    r4, r31, 0x78
    li      r5, 0x54
    bl      memcpy
    lwz     r0, 0x298(r31)
    mr      r3, r31
    lwz     r4, 0x29c(r31)
    stw     r4, 0x37c(r31)
    stw     r0, 0x378(r31)
    bl      correctFlag__12TFlagManagerFv
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl restore__12TFlagManagerFv
restore__12TFlagManagerFv: # 0x80293dfc
    mflr    r0
    li      r10, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x2
    mtctr   r0
    addi    r9, r10, 0x0
    stwu    sp, -0x20(sp)
    addi    r8, r10, 0x0
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    addi    r7, r10, 0x0
    addi    r6, r10, 0x0
    addi    r5, r10, 0x0
    addi    r4, r10, 0x0
    addi    r3, r10, 0x0
    addi    r0, r10, 0x0
branch_0x80293e3c:
    add     r11, r31, r10
    stb     r9, 0x0(r11)
    addi    r10, r10, 0x8
    stb     r8, 0x1(r11)
    stb     r7, 0x2(r11)
    stb     r6, 0x3(r11)
    stb     r5, 0x4(r11)
    stb     r4, 0x5(r11)
    stb     r3, 0x6(r11)
    stb     r0, 0x7(r11)
    add     r11, r31, r10
    addi    r10, r10, 0x8
    stb     r9, 0x0(r11)
    stb     r8, 0x1(r11)
    stb     r7, 0x2(r11)
    stb     r6, 0x3(r11)
    stb     r5, 0x4(r11)
    stb     r4, 0x5(r11)
    stb     r3, 0x6(r11)
    stb     r0, 0x7(r11)
    add     r11, r31, r10
    addi    r10, r10, 0x8
    stb     r9, 0x0(r11)
    stb     r8, 0x1(r11)
    stb     r7, 0x2(r11)
    stb     r6, 0x3(r11)
    stb     r5, 0x4(r11)
    stb     r4, 0x5(r11)
    stb     r3, 0x6(r11)
    stb     r0, 0x7(r11)
    add     r11, r31, r10
    addi    r10, r10, 0x8
    stb     r9, 0x0(r11)
    stb     r8, 0x1(r11)
    stb     r7, 0x2(r11)
    stb     r6, 0x3(r11)
    stb     r5, 0x4(r11)
    stb     r4, 0x5(r11)
    stb     r3, 0x6(r11)
    stb     r0, 0x7(r11)
    add     r11, r31, r10
    addi    r10, r10, 0x8
    stb     r9, 0x0(r11)
    stb     r8, 0x1(r11)
    stb     r7, 0x2(r11)
    stb     r6, 0x3(r11)
    stb     r5, 0x4(r11)
    stb     r4, 0x5(r11)
    stb     r3, 0x6(r11)
    stb     r0, 0x7(r11)
    add     r11, r31, r10
    addi    r10, r10, 0x8
    stb     r9, 0x0(r11)
    stb     r8, 0x1(r11)
    stb     r7, 0x2(r11)
    stb     r6, 0x3(r11)
    stb     r5, 0x4(r11)
    stb     r4, 0x5(r11)
    stb     r3, 0x6(r11)
    stb     r0, 0x7(r11)
    add     r11, r31, r10
    addi    r10, r10, 0x8
    stb     r9, 0x0(r11)
    stb     r8, 0x1(r11)
    stb     r7, 0x2(r11)
    stb     r6, 0x3(r11)
    stb     r5, 0x4(r11)
    stb     r4, 0x5(r11)
    stb     r3, 0x6(r11)
    stb     r0, 0x7(r11)
    bdnz+      branch_0x80293e3c
    subfic  r0, r10, 0x77
    cmpwi   r10, 0x77
    mtctr   r0
    add     r3, r31, r10
    li      r0, 0x0
    bge-    branch_0x80293f7c
branch_0x80293f70:
    stb     r0, 0x0(r3)
    addi    r3, r3, 0x1
    bdnz+      branch_0x80293f70
branch_0x80293f7c:
    li      r4, 0x0
    stw     r4, 0x78(r31)
    li      r3, 0x10
    subfic  r0, r3, 0x15
    stw     r4, 0x7c(r31)
    cmpwi   r3, 0x15
    mtctr   r0
    slwi    r3, r3, 2
    stw     r4, 0x80(r31)
    stw     r4, 0x84(r31)
    stw     r4, 0x88(r31)
    stw     r4, 0x8c(r31)
    stw     r4, 0x90(r31)
    stw     r4, 0x94(r31)
    stw     r4, 0x98(r31)
    stw     r4, 0x9c(r31)
    stw     r4, 0xa0(r31)
    stw     r4, 0xa4(r31)
    stw     r4, 0xa8(r31)
    stw     r4, 0xac(r31)
    stw     r4, 0xb0(r31)
    stw     r4, 0xb4(r31)
    bge-    branch_0x80293fe8
branch_0x80293fd8:
    addi    r0, r3, 0x78
    stwx    r4, r31, r0
    addi    r3, r3, 0x4
    bdnz+      branch_0x80293fd8
branch_0x80293fe8:
    li      r0, 0x0
    stw     r0, 0x29c(r31)
    mr      r3, r31
    stw     r0, 0x298(r31)
    stw     r0, 0x2a4(r31)
    stw     r0, 0x2a0(r31)
    bl      resetGame__12TFlagManagerFv
    lwz     r0, 0x378(r31)
    mr      r3, r31
    lwz     r6, 0x37c(r31)
    addi    r4, r31, 0x2a8
    li      r5, 0x77
    stw     r6, 0x29c(r31)
    stw     r0, 0x298(r31)
    bl      memcpy
    addi    r3, r31, 0x78
    addi    r4, r31, 0x320
    li      r5, 0x54
    bl      memcpy
    mr      r3, r31
    bl      correctFlag__12TFlagManagerFv
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl load__12TFlagManagerFR20JSUMemoryInputStream
load__12TFlagManagerFR20JSUMemoryInputStream: # 0x80294050
    mflr    r0
    li      r10, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x2
    mtctr   r0
    addi    r9, r10, 0x0
    stwu    sp, -0x48(sp)
    addi    r8, r10, 0x0
    stw     r31, 0x44(sp)
    addi    r31, r4, 0x0
    addi    r7, r10, 0x0
    stw     r30, 0x40(sp)
    addi    r30, r3, 0x0
    addi    r6, r10, 0x0
    stw     r29, 0x3c(sp)
    addi    r5, r10, 0x0
    addi    r4, r10, 0x0
    addi    r3, r10, 0x0
    addi    r0, r10, 0x0
branch_0x8029409c:
    add     r11, r30, r10
    stb     r9, 0x0(r11)
    addi    r10, r10, 0x8
    stb     r8, 0x1(r11)
    stb     r7, 0x2(r11)
    stb     r6, 0x3(r11)
    stb     r5, 0x4(r11)
    stb     r4, 0x5(r11)
    stb     r3, 0x6(r11)
    stb     r0, 0x7(r11)
    add     r11, r30, r10
    addi    r10, r10, 0x8
    stb     r9, 0x0(r11)
    stb     r8, 0x1(r11)
    stb     r7, 0x2(r11)
    stb     r6, 0x3(r11)
    stb     r5, 0x4(r11)
    stb     r4, 0x5(r11)
    stb     r3, 0x6(r11)
    stb     r0, 0x7(r11)
    add     r11, r30, r10
    addi    r10, r10, 0x8
    stb     r9, 0x0(r11)
    stb     r8, 0x1(r11)
    stb     r7, 0x2(r11)
    stb     r6, 0x3(r11)
    stb     r5, 0x4(r11)
    stb     r4, 0x5(r11)
    stb     r3, 0x6(r11)
    stb     r0, 0x7(r11)
    add     r11, r30, r10
    addi    r10, r10, 0x8
    stb     r9, 0x0(r11)
    stb     r8, 0x1(r11)
    stb     r7, 0x2(r11)
    stb     r6, 0x3(r11)
    stb     r5, 0x4(r11)
    stb     r4, 0x5(r11)
    stb     r3, 0x6(r11)
    stb     r0, 0x7(r11)
    add     r11, r30, r10
    addi    r10, r10, 0x8
    stb     r9, 0x0(r11)
    stb     r8, 0x1(r11)
    stb     r7, 0x2(r11)
    stb     r6, 0x3(r11)
    stb     r5, 0x4(r11)
    stb     r4, 0x5(r11)
    stb     r3, 0x6(r11)
    stb     r0, 0x7(r11)
    add     r11, r30, r10
    addi    r10, r10, 0x8
    stb     r9, 0x0(r11)
    stb     r8, 0x1(r11)
    stb     r7, 0x2(r11)
    stb     r6, 0x3(r11)
    stb     r5, 0x4(r11)
    stb     r4, 0x5(r11)
    stb     r3, 0x6(r11)
    stb     r0, 0x7(r11)
    add     r11, r30, r10
    addi    r10, r10, 0x8
    stb     r9, 0x0(r11)
    stb     r8, 0x1(r11)
    stb     r7, 0x2(r11)
    stb     r6, 0x3(r11)
    stb     r5, 0x4(r11)
    stb     r4, 0x5(r11)
    stb     r3, 0x6(r11)
    stb     r0, 0x7(r11)
    bdnz+      branch_0x8029409c
    subfic  r0, r10, 0x77
    cmpwi   r10, 0x77
    mtctr   r0
    add     r3, r30, r10
    li      r0, 0x0
    bge-    branch_0x802941dc
branch_0x802941d0:
    stb     r0, 0x0(r3)
    addi    r3, r3, 0x1
    bdnz+      branch_0x802941d0
branch_0x802941dc:
    li      r4, 0x0
    stw     r4, 0x78(r30)
    li      r3, 0x10
    subfic  r0, r3, 0x15
    stw     r4, 0x7c(r30)
    cmpwi   r3, 0x15
    mtctr   r0
    slwi    r3, r3, 2
    stw     r4, 0x80(r30)
    stw     r4, 0x84(r30)
    stw     r4, 0x88(r30)
    stw     r4, 0x8c(r30)
    stw     r4, 0x90(r30)
    stw     r4, 0x94(r30)
    stw     r4, 0x98(r30)
    stw     r4, 0x9c(r30)
    stw     r4, 0xa0(r30)
    stw     r4, 0xa4(r30)
    stw     r4, 0xa8(r30)
    stw     r4, 0xac(r30)
    stw     r4, 0xb0(r30)
    stw     r4, 0xb4(r30)
    bge-    branch_0x80294248
branch_0x80294238:
    addi    r0, r3, 0x78
    stwx    r4, r30, r0
    addi    r3, r3, 0x4
    bdnz+      branch_0x80294238
branch_0x80294248:
    li      r29, 0x0
    stw     r29, 0x29c(r30)
    mr      r3, r30
    stw     r29, 0x298(r30)
    stw     r29, 0x2a4(r30)
    stw     r29, 0x2a0(r30)
    bl      resetGame__12TFlagManagerFv
    addi    r3, r31, 0x0
    addi    r4, sp, 0x30
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x30(sp)
    cmplwi  r0, 0x4
    bne-    branch_0x80294348
    addi    r3, r31, 0x0
    addi    r4, r30, 0x298
    li      r5, 0x8
    bl      read__14JSUInputStreamFPvl
    stw     r29, 0x2c(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x28
    stw     r29, 0x28(sp)
    li      r5, 0x8
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, sp, 0x20
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, sp, 0x1e
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, sp, 0x1c
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    li      r29, 0x0
branch_0x802942dc:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r29, r29, 0x1
    cmpwi   r29, 0x10
    blt+    branch_0x802942dc
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    li      r5, 0x77
    bl      read__14JSUInputStreamFPvl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x189
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x78
    li      r5, 0x54
    bl      read__14JSUInputStreamFPvl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x1ac
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x80294348:
    addi    r4, r30, 0x0
    addi    r3, r30, 0x2a8
    li      r5, 0x77
    bl      memcpy
    addi    r3, r30, 0x320
    addi    r4, r30, 0x78
    li      r5, 0x54
    bl      memcpy
    lwz     r0, 0x298(r30)
    mr      r3, r30
    lwz     r4, 0x29c(r30)
    stw     r4, 0x37c(r30)
    stw     r0, 0x378(r30)
    bl      correctFlag__12TFlagManagerFv
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    blr


.globl setNozzleRight__12TFlagManagerFUcUc
setNozzleRight__12TFlagManagerFUcUc: # 0x8029439c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    addi    r3, r4, 0x0
    bl      SMS_getShineStage__FUc
    clrlwi. r0, r3, 24
    beq-    branch_0x802943d0
    cmplwi  r0, 0xa
    blt-    branch_0x802943d4
branch_0x802943d0:
    li      r3, 0x1
branch_0x802943d4:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x2
    blt-    branch_0x802943e4
    li      r31, 0x0
branch_0x802943e4:
    clrlwi  r3, r3, 24
    subi    r0, r3, 0x1
    slwi    r3, r0, 1
    addis   r0, r3, 0x1
    clrlwi  r4, r31, 24
    add     r31, r0, r4
    addi    r31, r31, 0x366
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    bne-    branch_0x80294424
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x1
    bl      setFlag__12TFlagManagerFUll
branch_0x80294424:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl getNozzleRight__12TFlagManagerCFUcUc
getNozzleRight__12TFlagManagerCFUcUc: # 0x8029443c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r3, r4, 0x0
    bl      SMS_getShineStage__FUc
    clrlwi. r0, r3, 24
    beq-    branch_0x80294470
    cmplwi  r0, 0xa
    blt-    branch_0x80294474
branch_0x80294470:
    li      r3, 0x1
branch_0x80294474:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x2
    blt-    branch_0x80294484
    li      r31, 0x0
branch_0x80294484:
    clrlwi  r3, r3, 24
    subi    r0, r3, 0x1
    slwi    r3, r0, 1
    addis   r0, r3, 0x1
    clrlwi  r4, r31, 24
    add     r4, r0, r4
    addi    r3, r30, 0x0
    addi    r4, r4, 0x366
    bl      getFlag__12TFlagManagerCFUl
    neg     r3, r3
    subic   r0, r3, 0x1
    subfe   r3, r0, r3
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setBlueCoinFlag__12TFlagManagerFUcUc
setBlueCoinFlag__12TFlagManagerFUcUc: # 0x802944cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    addi    r3, r4, 0x0
    bl      SMS_getShineStage__FUc
    clrlwi. r0, r3, 24
    beq-    branch_0x80294500
    cmplwi  r0, 0xa
    blt-    branch_0x80294504
branch_0x80294500:
    li      r3, 0x1
branch_0x80294504:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x32
    blt-    branch_0x80294514
    li      r31, 0x0
branch_0x80294514:
    clrlwi  r3, r3, 24
    subi    r0, r3, 0x1
    mulli   r3, r0, 0x32
    addis   r0, r3, 0x1
    clrlwi  r4, r31, 24
    add     r31, r0, r4
    addi    r31, r31, 0x78
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    bne-    branch_0x80294568
    lis     r4, 0x4
    addi    r3, r30, 0x0
    addi    r4, r4, 0x1
    li      r5, 0x1
    bl      incFlag__12TFlagManagerFUll
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x1
    bl      setFlag__12TFlagManagerFUll
branch_0x80294568:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl getBlueCoinFlag__12TFlagManagerCFUcUc
getBlueCoinFlag__12TFlagManagerCFUcUc: # 0x80294580
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r3, r4, 0x0
    bl      SMS_getShineStage__FUc
    clrlwi. r0, r3, 24
    beq-    branch_0x802945b4
    cmplwi  r0, 0xa
    blt-    branch_0x802945b8
branch_0x802945b4:
    li      r3, 0x1
branch_0x802945b8:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x32
    blt-    branch_0x802945c8
    li      r31, 0x0
branch_0x802945c8:
    clrlwi  r3, r3, 24
    subi    r0, r3, 0x1
    mulli   r3, r0, 0x32
    addis   r0, r3, 0x1
    clrlwi  r4, r31, 24
    add     r4, r0, r4
    addi    r3, r30, 0x0
    addi    r4, r4, 0x78
    bl      getFlag__12TFlagManagerCFUl
    neg     r3, r3
    subic   r0, r3, 0x1
    subfe   r3, r0, r3
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl incGoldCoinFlag__12TFlagManagerFUcl
incGoldCoinFlag__12TFlagManagerFUcl: # 0x80294610
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    lis     r30, 0x4
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    addi    r4, r30, 0x2
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    bl      incFlag__12TFlagManagerFUll
    clrlwi  r3, r29, 24
    addis   r29, r3, 0x2
    addi    r29, r29, 0x5
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    bl      getFlag__12TFlagManagerCFUl
    addi    r31, r3, 0x0
    addi    r3, r28, 0x0
    addi    r4, r30, 0x2
    bl      getFlag__12TFlagManagerCFUl
    cmpw    r3, r31
    ble-    branch_0x8029468c
    addi    r3, r28, 0x0
    addi    r4, r30, 0x2
    bl      getFlag__12TFlagManagerCFUl
    addi    r5, r3, 0x0
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    bl      setFlag__12TFlagManagerFUll
branch_0x8029468c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl setShineFlag__12TFlagManagerFUc
setShineFlag__12TFlagManagerFUc: # 0x802946ac
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 24
    cmplwi  r0, 0x78
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    blt-    branch_0x802946d4
    li      r4, 0x0
branch_0x802946d4:
    clrlwi  r3, r4, 24
    addis   r31, r3, 0x1
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    bne-    branch_0x80294710
    addi    r3, r30, 0x0
    lis     r4, 0x4
    li      r5, 0x1
    bl      incFlag__12TFlagManagerFUll
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x1
    bl      setFlag__12TFlagManagerFUll
branch_0x80294710:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getShineFlag__12TFlagManagerCFUc
getShineFlag__12TFlagManagerCFUc: # 0x80294728
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 24
    cmplwi  r0, 0x78
    stwu    sp, -0x8(sp)
    blt-    branch_0x80294744
    li      r4, 0x0
branch_0x80294744:
    clrlwi  r4, r4, 24
    addis   r4, r4, 0x1
    bl      getFlag__12TFlagManagerCFUl
    neg     r3, r3
    subic   r0, r3, 0x1
    subfe   r3, r0, r3
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl incMario__12TFlagManagerFl
incMario__12TFlagManagerFl: # 0x8029476c
    mflr    r0
    addi    r5, r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    lis     r31, 0x2
    addi    r4, r31, 0x1
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      incFlag__12TFlagManagerFUll
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x63
    ble-    branch_0x802947b8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1
    li      r5, 0x63
    bl      setFlag__12TFlagManagerFUll
branch_0x802947b8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl decFlag__12TFlagManagerFUll
decFlag__12TFlagManagerFUll: # 0x802947d0
    mflr    r0
    neg     r5, r5
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      incFlag__12TFlagManagerFUll
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl incFlag__12TFlagManagerFUll
incFlag__12TFlagManagerFUll: # 0x802947f4
    srwi    r0, r4, 16
    cmplwi  r0, 0xa
    clrlwi  r7, r4, 16
    bgtlr-    

    lis     r6, 0x803e
    subi    r6, r6, 0x1248
    slwi    r0, r0, 2
    lwzx    r0, r6, r0
    mtctr   r0
    bctr       
    lis     r6, 0x2
    addi    r0, r6, 0x15
    cmplw   r4, r0
    bgelr-    

    slwi    r0, r7, 2
    add     r3, r3, r0
    lwz     r0, 0x78(r3)
    add     r0, r0, r5
    stw     r0, 0x78(r3)
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0x28f244, 0x802948e4 - 0x80294844

.globl setBool__12TFlagManagerFbUl
setBool__12TFlagManagerFbUl: # 0x802948e4
    mflr    r0
    stw     r0, 0x4(sp)
    srwi    r0, r5, 16
    cmplwi  r0, 0xa
    stwu    sp, -0x8(sp)
    bgt-    branch_0x80294a14
    lis     r6, 0x803e
    subi    r6, r6, 0x121c
    slwi    r0, r0, 2
    lwzx    r0, r6, r0
    mtctr   r0
    bctr       
    lis     r6, 0x1
    addi    r0, r6, 0x3b4
    cmplw   r5, r0
    bge-    branch_0x80294a14
    clrlwi. r0, r4, 24
    beq-    branch_0x80294934
    li      r0, 0x1
    b       branch_0x80294938

branch_0x80294934:
    li      r0, 0x0
branch_0x80294938:
    addi    r4, r5, 0x0
    mr      r5, r0
    bl      setFlag__12TFlagManagerFUll
    b       branch_0x80294a14


.incbin "./baserom/code/Text_0x80005600.bin", 0x28f348, 0x80294a14 - 0x80294948
branch_0x80294a14:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getBool__12TFlagManagerCFUl
getBool__12TFlagManagerCFUl: # 0x80294a24
    mflr    r0
    stw     r0, 0x4(sp)
    srwi    r0, r4, 16
    cmplwi  r0, 0x9
    stwu    sp, -0x8(sp)
    bgt-    branch_0x80294b08
    lis     r5, 0x803e
    subi    r5, r5, 0x11f0
    slwi    r0, r0, 2
    lwzx    r0, r5, r0
    mtctr   r0
    bctr       
    lis     r5, 0x1
    addi    r0, r5, 0x3b4
    cmplw   r4, r0
    bge-    branch_0x80294b08
    bl      getFlag__12TFlagManagerCFUl
    neg     r3, r3
    subic   r0, r3, 0x1
    subfe   r3, r0, r3
    b       branch_0x80294b0c


.incbin "./baserom/code/Text_0x80005600.bin", 0x28f478, 0x80294b08 - 0x80294a78
branch_0x80294b08:
    li      r3, 0x0
branch_0x80294b0c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setFlag__12TFlagManagerFUll
setFlag__12TFlagManagerFUll: # 0x80294b1c
    srwi    r8, r4, 16
    cmplwi  r8, 0xa
    clrlwi  r0, r4, 16
    bgtlr-    

    lis     r6, 0x803e
    subi    r7, r6, 0x11c8
    slwi    r6, r8, 2
    lwzx    r6, r7, r6
    mtctr   r6
    bctr       
    lis     r6, 0x1
    addi    r6, r6, 0x3b4
    cmplw   r4, r6
    bgelr-    

    srwi    r4, r0, 3
    add     r6, r3, r4
    clrlwi  r4, r0, 29
    lbz     r3, 0x0(r6)
    li      r0, 0x1
    slw     r0, r0, r4
    andc    r0, r3, r0
    stb     r0, 0x0(r6)
    clrlwi  r0, r5, 31
    slw     r0, r0, r4
    lbz     r3, 0x0(r6)
    or      r0, r3, r0
    stb     r0, 0x0(r6)
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0x28f58c, 0x80294d4c - 0x80294b8c

.globl getFlag__12TFlagManagerCFUl
getFlag__12TFlagManagerCFUl: # 0x80294d4c
    srwi    r7, r4, 16
    cmplwi  r7, 0xa
    clrlwi  r0, r4, 16
    bgt-    branch_0x80294eec
    lis     r5, 0x803e
    subi    r6, r5, 0x119c
    slwi    r5, r7, 2
    lwzx    r5, r6, r5
    mtctr   r5
    bctr       
    lis     r5, 0x1
    addi    r5, r5, 0x3b4
    cmplw   r4, r5
    bge-    branch_0x80294eec
    srwi    r4, r0, 3
    lbzx    r3, r3, r4
    clrlwi  r0, r0, 29
    sraw    r0, r3, r0
    clrlwi  r3, r0, 31
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0x28f79c, 0x80294eec - 0x80294d9c
branch_0x80294eec:
    li      r3, 0x0
    blr


.globl resetStage__12TFlagManagerFv
resetStage__12TFlagManagerFv: # 0x80294ef4
    stwu    sp, -0x20(sp)
    li      r6, 0x8
    subfic  r0, r6, 0xd
    stw     r31, 0x1c(sp)
    li      r4, 0x0
    cmpwi   r6, 0xd
    mtctr   r0
    stb     r4, 0xe4(r3)
    stb     r4, 0xe5(r3)
    stb     r4, 0xe6(r3)
    stb     r4, 0xe7(r3)
    stb     r4, 0xe8(r3)
    stb     r4, 0xe9(r3)
    stb     r4, 0xea(r3)
    stb     r4, 0xeb(r3)
    bge-    branch_0x80294f44
branch_0x80294f34:
    addi    r0, r6, 0xe4
    stbx    r4, r3, r0
    addi    r6, r6, 0x1
    bdnz+      branch_0x80294f34
branch_0x80294f44:
    li      r0, 0x2
    li      r4, 0x0
    mtctr   r0
    addi    r11, r4, 0x0
    addi    r10, r4, 0x0
    addi    r9, r4, 0x0
    addi    r8, r4, 0x0
    addi    r7, r4, 0x0
    addi    r6, r4, 0x0
    addi    r5, r4, 0x0
    addi    r0, r4, 0x0
    li      r31, 0x0
branch_0x80294f74:
    add     r12, r3, r4
    stw     r11, 0xf4(r12)
    addi    r4, r4, 0x20
    addi    r31, r31, 0x30
    stw     r10, 0xf8(r12)
    stw     r9, 0xfc(r12)
    stw     r8, 0x100(r12)
    stw     r7, 0x104(r12)
    stw     r6, 0x108(r12)
    stw     r5, 0x10c(r12)
    stw     r0, 0x110(r12)
    add     r12, r3, r4
    addi    r4, r4, 0x20
    stw     r11, 0xf4(r12)
    stw     r10, 0xf8(r12)
    stw     r9, 0xfc(r12)
    stw     r8, 0x100(r12)
    stw     r7, 0x104(r12)
    stw     r6, 0x108(r12)
    stw     r5, 0x10c(r12)
    stw     r0, 0x110(r12)
    add     r12, r3, r4
    addi    r4, r4, 0x20
    stw     r11, 0xf4(r12)
    stw     r10, 0xf8(r12)
    stw     r9, 0xfc(r12)
    stw     r8, 0x100(r12)
    stw     r7, 0x104(r12)
    stw     r6, 0x108(r12)
    stw     r5, 0x10c(r12)
    stw     r0, 0x110(r12)
    add     r12, r3, r4
    addi    r4, r4, 0x20
    stw     r11, 0xf4(r12)
    stw     r10, 0xf8(r12)
    stw     r9, 0xfc(r12)
    stw     r8, 0x100(r12)
    stw     r7, 0x104(r12)
    stw     r6, 0x108(r12)
    stw     r5, 0x10c(r12)
    stw     r0, 0x110(r12)
    add     r12, r3, r4
    addi    r4, r4, 0x20
    stw     r11, 0xf4(r12)
    stw     r10, 0xf8(r12)
    stw     r9, 0xfc(r12)
    stw     r8, 0x100(r12)
    stw     r7, 0x104(r12)
    stw     r6, 0x108(r12)
    stw     r5, 0x10c(r12)
    stw     r0, 0x110(r12)
    add     r12, r3, r4
    addi    r4, r4, 0x20
    stw     r11, 0xf4(r12)
    stw     r10, 0xf8(r12)
    stw     r9, 0xfc(r12)
    stw     r8, 0x100(r12)
    stw     r7, 0x104(r12)
    stw     r6, 0x108(r12)
    stw     r5, 0x10c(r12)
    stw     r0, 0x110(r12)
    bdnz+      branch_0x80294f74
    subfic  r0, r31, 0x64
    cmpwi   r31, 0x64
    mtctr   r0
    slwi    r4, r31, 2
    li      r5, 0x0
    bge-    branch_0x80295094
branch_0x80295084:
    addi    r0, r4, 0xf4
    stwx    r5, r3, r0
    addi    r4, r4, 0x4
    bdnz+      branch_0x80295084
branch_0x80295094:
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    blr


.globl resetGame__12TFlagManagerFv
resetGame__12TFlagManagerFv: # 0x802950a0
    stwu    sp, -0x38(sp)
    li      r5, 0x8
    subfic  r0, r5, 0xd
    stw     r31, 0x34(sp)
    li      r4, 0x0
    cmpwi   r5, 0xd
    mtctr   r0
    stb     r4, 0xcc(r3)
    stb     r4, 0xcd(r3)
    stb     r4, 0xce(r3)
    stb     r4, 0xcf(r3)
    stw     r4, 0xd0(r3)
    stw     r4, 0xd4(r3)
    stw     r4, 0xd8(r3)
    stw     r4, 0xdc(r3)
    stw     r4, 0xe0(r3)
    stb     r4, 0xe4(r3)
    stb     r4, 0xe5(r3)
    stb     r4, 0xe6(r3)
    stb     r4, 0xe7(r3)
    stb     r4, 0xe8(r3)
    stb     r4, 0xe9(r3)
    stb     r4, 0xea(r3)
    stb     r4, 0xeb(r3)
    bge-    branch_0x80295114
branch_0x80295104:
    addi    r0, r5, 0xe4
    stbx    r4, r3, r0
    addi    r5, r5, 0x1
    bdnz+      branch_0x80295104
branch_0x80295114:
    li      r0, 0x2
    li      r12, 0x0
    mtctr   r0
    addi    r4, r12, 0x0
    addi    r11, r12, 0x0
    addi    r10, r12, 0x0
    addi    r9, r12, 0x0
    addi    r8, r12, 0x0
    addi    r7, r12, 0x0
    addi    r6, r12, 0x0
    addi    r5, r12, 0x0
    addi    r0, r12, 0x0
branch_0x80295144:
    add     r31, r3, r4
    stw     r11, 0xf4(r31)
    addi    r4, r4, 0x20
    addi    r12, r12, 0x30
    stw     r10, 0xf8(r31)
    stw     r9, 0xfc(r31)
    stw     r8, 0x100(r31)
    stw     r7, 0x104(r31)
    stw     r6, 0x108(r31)
    stw     r5, 0x10c(r31)
    stw     r0, 0x110(r31)
    add     r31, r3, r4
    addi    r4, r4, 0x20
    stw     r11, 0xf4(r31)
    stw     r10, 0xf8(r31)
    stw     r9, 0xfc(r31)
    stw     r8, 0x100(r31)
    stw     r7, 0x104(r31)
    stw     r6, 0x108(r31)
    stw     r5, 0x10c(r31)
    stw     r0, 0x110(r31)
    add     r31, r3, r4
    addi    r4, r4, 0x20
    stw     r11, 0xf4(r31)
    stw     r10, 0xf8(r31)
    stw     r9, 0xfc(r31)
    stw     r8, 0x100(r31)
    stw     r7, 0x104(r31)
    stw     r6, 0x108(r31)
    stw     r5, 0x10c(r31)
    stw     r0, 0x110(r31)
    add     r31, r3, r4
    addi    r4, r4, 0x20
    stw     r11, 0xf4(r31)
    stw     r10, 0xf8(r31)
    stw     r9, 0xfc(r31)
    stw     r8, 0x100(r31)
    stw     r7, 0x104(r31)
    stw     r6, 0x108(r31)
    stw     r5, 0x10c(r31)
    stw     r0, 0x110(r31)
    add     r31, r3, r4
    addi    r4, r4, 0x20
    stw     r11, 0xf4(r31)
    stw     r10, 0xf8(r31)
    stw     r9, 0xfc(r31)
    stw     r8, 0x100(r31)
    stw     r7, 0x104(r31)
    stw     r6, 0x108(r31)
    stw     r5, 0x10c(r31)
    stw     r0, 0x110(r31)
    add     r31, r3, r4
    addi    r4, r4, 0x20
    stw     r11, 0xf4(r31)
    stw     r10, 0xf8(r31)
    stw     r9, 0xfc(r31)
    stw     r8, 0x100(r31)
    stw     r7, 0x104(r31)
    stw     r6, 0x108(r31)
    stw     r5, 0x10c(r31)
    stw     r0, 0x110(r31)
    bdnz+      branch_0x80295144
    subfic  r0, r12, 0x64
    cmpwi   r12, 0x64
    mtctr   r0
    slwi    r4, r12, 2
    li      r5, 0x0
    bge-    branch_0x80295264
branch_0x80295254:
    addi    r0, r4, 0xf4
    stwx    r5, r3, r0
    addi    r4, r4, 0x4
    bdnz+      branch_0x80295254
branch_0x80295264:
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    blr


.globl resetCard__12TFlagManagerFv
resetCard__12TFlagManagerFv: # 0x80295270
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x2
    mtctr   r0
    li      r0, 0x0
    stwu    sp, -0x8(sp)
branch_0x8029528c:
    add     r4, r3, r5
    stb     r0, 0x0(r4)
    addi    r5, r5, 0x8
    stb     r0, 0x1(r4)
    stb     r0, 0x2(r4)
    stb     r0, 0x3(r4)
    stb     r0, 0x4(r4)
    stb     r0, 0x5(r4)
    stb     r0, 0x6(r4)
    stb     r0, 0x7(r4)
    add     r4, r3, r5
    addi    r5, r5, 0x8
    stb     r0, 0x0(r4)
    stb     r0, 0x1(r4)
    stb     r0, 0x2(r4)
    stb     r0, 0x3(r4)
    stb     r0, 0x4(r4)
    stb     r0, 0x5(r4)
    stb     r0, 0x6(r4)
    stb     r0, 0x7(r4)
    add     r4, r3, r5
    addi    r5, r5, 0x8
    stb     r0, 0x0(r4)
    stb     r0, 0x1(r4)
    stb     r0, 0x2(r4)
    stb     r0, 0x3(r4)
    stb     r0, 0x4(r4)
    stb     r0, 0x5(r4)
    stb     r0, 0x6(r4)
    stb     r0, 0x7(r4)
    add     r4, r3, r5
    addi    r5, r5, 0x8
    stb     r0, 0x0(r4)
    stb     r0, 0x1(r4)
    stb     r0, 0x2(r4)
    stb     r0, 0x3(r4)
    stb     r0, 0x4(r4)
    stb     r0, 0x5(r4)
    stb     r0, 0x6(r4)
    stb     r0, 0x7(r4)
    add     r4, r3, r5
    addi    r5, r5, 0x8
    stb     r0, 0x0(r4)
    stb     r0, 0x1(r4)
    stb     r0, 0x2(r4)
    stb     r0, 0x3(r4)
    stb     r0, 0x4(r4)
    stb     r0, 0x5(r4)
    stb     r0, 0x6(r4)
    stb     r0, 0x7(r4)
    add     r4, r3, r5
    addi    r5, r5, 0x8
    stb     r0, 0x0(r4)
    stb     r0, 0x1(r4)
    stb     r0, 0x2(r4)
    stb     r0, 0x3(r4)
    stb     r0, 0x4(r4)
    stb     r0, 0x5(r4)
    stb     r0, 0x6(r4)
    stb     r0, 0x7(r4)
    add     r4, r3, r5
    addi    r5, r5, 0x8
    stb     r0, 0x0(r4)
    stb     r0, 0x1(r4)
    stb     r0, 0x2(r4)
    stb     r0, 0x3(r4)
    stb     r0, 0x4(r4)
    stb     r0, 0x5(r4)
    stb     r0, 0x6(r4)
    stb     r0, 0x7(r4)
    bdnz+      branch_0x8029528c
    subfic  r0, r5, 0x77
    cmpwi   r5, 0x77
    mtctr   r0
    add     r4, r3, r5
    li      r0, 0x0
    bge-    branch_0x802953cc
branch_0x802953c0:
    stb     r0, 0x0(r4)
    addi    r4, r4, 0x1
    bdnz+      branch_0x802953c0
branch_0x802953cc:
    li      r5, 0x0
    stw     r5, 0x78(r3)
    li      r4, 0x10
    subfic  r0, r4, 0x15
    stw     r5, 0x7c(r3)
    cmpwi   r4, 0x15
    mtctr   r0
    slwi    r4, r4, 2
    stw     r5, 0x80(r3)
    stw     r5, 0x84(r3)
    stw     r5, 0x88(r3)
    stw     r5, 0x8c(r3)
    stw     r5, 0x90(r3)
    stw     r5, 0x94(r3)
    stw     r5, 0x98(r3)
    stw     r5, 0x9c(r3)
    stw     r5, 0xa0(r3)
    stw     r5, 0xa4(r3)
    stw     r5, 0xa8(r3)
    stw     r5, 0xac(r3)
    stw     r5, 0xb0(r3)
    stw     r5, 0xb4(r3)
    bge-    branch_0x80295438
branch_0x80295428:
    addi    r0, r4, 0x78
    stwx    r5, r3, r0
    addi    r4, r4, 0x4
    bdnz+      branch_0x80295428
branch_0x80295438:
    li      r0, 0x0
    stw     r0, 0x29c(r3)
    stw     r0, 0x298(r3)
    stw     r0, 0x2a4(r3)
    stw     r0, 0x2a0(r3)
    stb     r0, 0xcc(r3)
    stb     r0, 0xcd(r3)
    stb     r0, 0xce(r3)
    stb     r0, 0xcf(r3)
    stw     r0, 0xd0(r3)
    stw     r0, 0xd4(r3)
    stw     r0, 0xd8(r3)
    stw     r0, 0xdc(r3)
    stw     r0, 0xe0(r3)
    bl      resetStage__12TFlagManagerFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl start__12TFlagManagerFP7JKRHeap
start__12TFlagManagerFP7JKRHeap: # 0x80295484
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    lwz     r0, -0x6060(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x8029550c
    addi    r4, r3, 0x0
    li      r3, 0x380
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    mr.     r31, r3
    beq-    branch_0x80295508
    mr      r3, r31
    bl      resetCard__12TFlagManagerFv
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2a8
    li      r5, 0x77
    bl      memcpy
    addi    r3, r31, 0x320
    addi    r4, r31, 0x78
    li      r5, 0x54
    bl      memcpy
    lwz     r0, 0x298(r31)
    mr      r3, r31
    lwz     r4, 0x29c(r31)
    stw     r4, 0x37c(r31)
    stw     r0, 0x378(r31)
    bl      correctFlag__12TFlagManagerFv
    mr      r3, r31
    bl      resetOpt__12TFlagManagerFv
    mr      r3, r31
    bl      correctOptFlag__12TFlagManagerFv
branch_0x80295508:
    stw     r31, -0x6060(r13)
branch_0x8029550c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    lwz     r3, -0x6060(r13)
    mtlr    r0
    blr
