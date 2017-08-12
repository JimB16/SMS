
.globl GetFontCode
GetFontCode: # 0x80344a0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      OSGetFontEncode
    clrlwi  r0, r3, 16
    cmplwi  r0, 0x1
    bne-    branch_0x80344b74
    clrlwi  r0, r31, 16
    cmplwi  r0, 0x20
    blt-    branch_0x80344a5c
    cmplwi  r0, 0xdf
    bgt-    branch_0x80344a5c
    lis     r3, HankakuToCode@h
    addi    r3, r3, HankakuToCode@l
    slwi    r0, r0, 1
    add     r3, r3, r0
    lhz     r3, -0x40(r3)
    b       branch_0x80344b94

branch_0x80344a5c:
    clrlwi  r0, r31, 16
    cmplwi  r0, 0x889e
    ble-    branch_0x80344ae0
    cmplwi  r0, 0x9872
    bgt-    branch_0x80344ae0
    srawi   r3, r0, 8
    clrlwi  r4, r0, 24
    addi    r0, r3, -0x88
    cmplwi  r4, 0x40
    mulli   r5, r0, 0xbc
    li      r3, 0x0
    addi    r0, r3, 0x0
    blt-    branch_0x80344a9c
    cmplwi  r4, 0xfc
    bgt-    branch_0x80344a9c
    li      r0, 0x1
branch_0x80344a9c:
    cmpwi   r0, 0x0
    beq-    branch_0x80344ab4
    clrlwi  r0, r4, 24
    cmplwi  r0, 0x7f
    beq-    branch_0x80344ab4
    li      r3, 0x1
branch_0x80344ab4:
    cmpwi   r3, 0x0
    bne-    branch_0x80344ac4
    li      r3, 0x0
    b       branch_0x80344b94

branch_0x80344ac4:
    addi    r3, r4, -0x40
    cmpwi   r3, 0x40
    blt-    branch_0x80344ad4
    addi    r3, r3, -0x1
branch_0x80344ad4:
    addi    r3, r3, 0x2be
    add     r3, r5, r3
    b       branch_0x80344b94

branch_0x80344ae0:
    clrlwi  r0, r31, 16
    cmplwi  r0, 0x8140
    blt-    branch_0x80344b90
    cmplwi  r0, 0x879e
    bge-    branch_0x80344b90
    srawi   r3, r0, 8
    clrlwi  r4, r0, 24
    addi    r0, r3, -0x81
    cmplwi  r4, 0x40
    mulli   r5, r0, 0xbc
    li      r3, 0x0
    addi    r0, r3, 0x0
    blt-    branch_0x80344b20
    cmplwi  r4, 0xfc
    bgt-    branch_0x80344b20
    li      r0, 0x1
branch_0x80344b20:
    cmpwi   r0, 0x0
    beq-    branch_0x80344b38
    clrlwi  r0, r4, 24
    cmplwi  r0, 0x7f
    beq-    branch_0x80344b38
    li      r3, 0x1
branch_0x80344b38:
    cmpwi   r3, 0x0
    bne-    branch_0x80344b48
    li      r3, 0x0
    b       branch_0x80344b94

branch_0x80344b48:
    addi    r3, r4, -0x40
    cmpwi   r3, 0x40
    blt-    branch_0x80344b58
    addi    r3, r3, -0x1
branch_0x80344b58:
    add     r0, r5, r3
    lis     r3, Zenkaku2Code@h
    slwi    r4, r0, 1
    addi    r0, r3, Zenkaku2Code@l
    add     r3, r0, r4
    lhz     r3, 0x0(r3)
    b       branch_0x80344b94

branch_0x80344b74:
    clrlwi  r3, r31, 16
    cmplwi  r3, 0x20
    ble-    branch_0x80344b90
    cmplwi  r3, 0xff
    bgt-    branch_0x80344b90
    addi    r3, r3, -0x20
    b       branch_0x80344b94

branch_0x80344b90:
    li      r3, 0x0
branch_0x80344b94:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl Decode
Decode: # 0x80344ba8
    stwu    sp, -0x20(sp)
    addi    r6, r3, 0x10
    li      r10, 0x0
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    li      r30, 0x0
    stw     r29, 0x14(sp)
    lwz     r31, 0x4(r3)
    lwz     r11, 0x8(r3)
    lwz     r12, 0xc(r3)
branch_0x80344bd0:
    cmplwi  r30, 0x0
    bne-    branch_0x80344be4
    lwz     r29, 0x0(r6)
    li      r30, 0x20
    addi    r6, r6, 0x4
branch_0x80344be4:
    clrrwi. r0, r29, 31
    beq-    branch_0x80344c08
    mr      r0, r12
    lbzx    r5, r3, r0
    mr      r0, r10
    addi    r10, r10, 0x1
    stbx    r5, r4, r0
    addi    r12, r12, 0x1
    b       branch_0x80344cf8

branch_0x80344c08:
    add     r7, r3, r11
    lbz     r5, 0x0(r7)
    addi    r11, r11, 0x2
    lbz     r0, 0x1(r7)
    insrwi  r0, r5, 8, 16
    srawi.  r5, r0, 12
    clrlwi  r0, r0, 20
    subf    r9, r0, r10
    bne-    branch_0x80344c40
    mr      r0, r12
    lbzx    r5, r3, r0
    addi    r12, r12, 0x1
    addi    r0, r5, 0x12
    b       branch_0x80344c44

branch_0x80344c40:
    addi    r0, r5, 0x2
branch_0x80344c44:
    cmpwi   r0, 0x0
    mr      r5, r0
    add     r7, r4, r10
    ble-    branch_0x80344cf8
    srwi.   r0, r5, 3
    mtctr   r0
    beq-    branch_0x80344cd8
branch_0x80344c60:
    addi    r8, r9, -0x1
    lbzx    r0, r4, r8
    addi    r8, r9, 0x0
    addi    r10, r10, 0x8
    stb     r0, 0x0(r7)
    lbzx    r0, r4, r8
    addi    r8, r9, 0x1
    stb     r0, 0x1(r7)
    lbzx    r0, r4, r8
    addi    r8, r9, 0x2
    stb     r0, 0x2(r7)
    lbzx    r0, r4, r8
    addi    r8, r9, 0x3
    stb     r0, 0x3(r7)
    lbzx    r0, r4, r8
    addi    r8, r9, 0x4
    stb     r0, 0x4(r7)
    lbzx    r0, r4, r8
    addi    r8, r9, 0x5
    stb     r0, 0x5(r7)
    lbzx    r0, r4, r8
    addi    r8, r9, 0x6
    addi    r9, r9, 0x8
    stb     r0, 0x6(r7)
    lbzx    r0, r4, r8
    stb     r0, 0x7(r7)
    addi    r7, r7, 0x8
    bdnz+      branch_0x80344c60
    andi.   r5, r5, 0x7
    beq-    branch_0x80344cf8
branch_0x80344cd8:
    mtctr   r5
branch_0x80344cdc:
    addi    r8, r9, -0x1
    lbzx    r0, r4, r8
    addi    r10, r10, 0x1
    addi    r9, r9, 0x1
    stb     r0, 0x0(r7)
    addi    r7, r7, 0x1
    bdnz+      branch_0x80344cdc
branch_0x80344cf8:
    cmpw    r10, r31
    slwi    r29, r29, 1
    addi    r30, r30, -0x1
    blt+    branch_0x80344bd0
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl OSGetFontEncode
OSGetFontEncode: # 0x80344d1c
    lhz     r3, -0x7368(r13)
    cmplwi  r3, 0x1
    blelr-    

    lis     r3, 0x8000
    lwz     r0, 0xcc(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x80344d40
    blt-    branch_0x80344d64
    b       branch_0x80344d64

branch_0x80344d40:
    lis     r3, 0xcc00
    lhz     r0, 0x206e(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80344d58
    li      r0, 0x1
    b       branch_0x80344d5c

branch_0x80344d58:
    li      r0, 0x0
branch_0x80344d5c:
    sth     r0, -0x7368(r13)
    b       branch_0x80344d6c

branch_0x80344d64:
    li      r0, 0x0
    sth     r0, -0x7368(r13)
branch_0x80344d6c:
    lhz     r3, -0x7368(r13)
    blr


.globl ReadROM
ReadROM: # 0x80344d74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    b       branch_0x80344dd8

branch_0x80344da0:
    cmpwi   r29, 0x100
    bgt-    branch_0x80344db0
    mr      r31, r29
    b       branch_0x80344db4

branch_0x80344db0:
    li      r31, 0x100
branch_0x80344db4:
    subf    r29, r31, r29
branch_0x80344db8:
    addi    r3, r28, 0x0
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    bl      __OSReadROM
    cmpwi   r3, 0x0
    beq+    branch_0x80344db8
    add     r30, r30, r31
    add     r28, r28, r31
branch_0x80344dd8:
    cmpwi   r29, 0x0
    bgt+    branch_0x80344da0
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl OSLoadFont
OSLoadFont: # 0x80344e00
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x34(sp)
    addi    r29, r3, 0x0
    stw     r0, R13Off_m0x5a1c(r13)
    bl      OSGetFontEncode
    clrlwi  r0, r3, 16
    cmplwi  r0, 0x1
    bne-    branch_0x80344e54
    lis     r4, unk_0004d000@ha
    lis     r5, unk_001aff00@ha
    addi    r3, r30, 0x0
    addi    r4, r4, unk_0004d000@l
    addi    r5, r5, unk_001aff00@l
    bl      ReadROM
    b       branch_0x80344e68

branch_0x80344e54:
    lis     r4, unk_001fcf00@ha
    addi    r3, r30, 0x0
    addi    r5, r4, unk_001fcf00@l
    li      r4, 0x3000
    bl      ReadROM
branch_0x80344e68:
    lbz     r0, 0x0(r30)
    cmplwi  r0, 0x59
    bne-    branch_0x80344e94
    lbz     r0, 0x1(r30)
    cmplwi  r0, 0x61
    bne-    branch_0x80344e94
    lbz     r0, 0x2(r30)
    cmplwi  r0, 0x79
    bne-    branch_0x80344e94
    lwz     r31, 0x4(r30)
    b       branch_0x80344e98

branch_0x80344e94:
    li      r31, 0x0
branch_0x80344e98:
    cmplwi  r31, 0x0
    beq-    branch_0x80345114
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      Decode
    stw     r29, R13Off_m0x5a20(r13)
    lhz     r4, -0x7368(r13)
    lhz     r0, 0x22(r29)
    cmplwi  r4, 0x1
    add     r0, r29, r0
    stw     r0, R13Off_m0x5a18(r13)
    lhz     r3, 0x1a(r29)
    lhz     r0, 0x1c(r29)
    mullw   r0, r3, r0
    stw     r0, R13Off_m0x5a14(r13)
    bgt-    branch_0x80344edc
    b       branch_0x80344f24

branch_0x80344edc:
    lis     r3, 0x8000
    lwz     r0, 0xcc(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x80344ef4
    blt-    branch_0x80344f18
    b       branch_0x80344f18

branch_0x80344ef4:
    lis     r3, 0xcc00
    lhz     r0, 0x206e(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80344f0c
    li      r0, 0x1
    b       branch_0x80344f10

branch_0x80344f0c:
    li      r0, 0x0
branch_0x80344f10:
    sth     r0, -0x7368(r13)
    b       branch_0x80344f20

branch_0x80344f18:
    li      r0, 0x0
    sth     r0, -0x7368(r13)
branch_0x80344f20:
    lhz     r4, -0x7368(r13)
branch_0x80344f24:
    clrlwi  r0, r4, 16
    cmplwi  r0, 0x1
    bne-    branch_0x80345114
    lwz     r4, R2Off_0xae8(r2)
    li      r3, 0x54
    lwz     r0, R2Off_0xaec(r2)
    stw     r4, 0x1c(sp)
    stw     r0, 0x20(sp)
    bl      GetFontCode
    lwz     r5, R13Off_m0x5a14(r13)
    lwz     r12, R13Off_m0x5a20(r13)
    divw    r10, r3, r5
    lhz     r6, 0x1c(sp)
    lhz     r0, 0x1e(r12)
    lwz     r4, 0x14(r12)
    lwz     r11, 0x24(r12)
    mullw   r8, r10, r5
    lhz     r9, 0x1a(r12)
    lhz     r5, 0x12(r12)
    lhz     r7, 0x10(r12)
    subf    r30, r8, r3
    divw    r8, r30, r9
    mullw   r3, r8, r9
    mullw   r5, r8, r5
    srawi   r0, r0, 3
    subf    r3, r3, r30
    addze   r0, r0
    slwi    r0, r0, 5
    srawi   r9, r0, 1
    mullw   r10, r10, r4
    mullw   r3, r3, r7
    addze   r9, r9
    addi    r0, r5, 0x4
    srawi   r4, r0, 3
    addze   r4, r4
    srawi   r8, r3, 3
    addze   r8, r8
    srawi   r7, r0, 3
    addze   r7, r7
    slwi    r7, r7, 3
    subfc   r7, r7, r0
    srawi   r0, r3, 3
    addze   r0, r0
    slwi    r0, r0, 3
    subfc   r0, r0, r3
    srawi   r3, r0, 2
    mullw   r0, r9, r4
    add     r4, r12, r11
    srwi    r9, r10, 1
    add     r4, r4, r9
    add     r9, r4, r0
    slwi    r0, r8, 4
    add     r9, r9, r0
    slwi    r7, r7, 1
    add     r9, r9, r7
    addze   r3, r3
    add     r9, r9, r3
    sth     r6, 0x0(r9)
    addi    r10, r5, 0x5
    addi    r9, r5, 0x6
    lwz     r7, R13Off_m0x5a20(r13)
    addi    r6, r5, 0x7
    lhz     r5, 0x1e(sp)
    lhz     r7, 0x1e(r7)
    srawi   r7, r7, 3
    addze   r7, r7
    slwi    r7, r7, 5
    srawi   r8, r7, 1
    addze   r8, r8
    srawi   r7, r10, 3
    addze   r7, r7
    mullw   r8, r8, r7
    srawi   r7, r10, 3
    addze   r7, r7
    slwi    r7, r7, 3
    add     r8, r4, r8
    subfc   r7, r7, r10
    add     r8, r8, r0
    slwi    r7, r7, 1
    add     r8, r8, r7
    add     r8, r8, r3
    sth     r5, 0x0(r8)
    lwz     r7, R13Off_m0x5a20(r13)
    lhz     r5, 0x20(sp)
    lhz     r7, 0x1e(r7)
    srawi   r7, r7, 3
    addze   r7, r7
    slwi    r7, r7, 5
    srawi   r8, r7, 1
    addze   r8, r8
    srawi   r7, r9, 3
    addze   r7, r7
    mullw   r8, r8, r7
    srawi   r7, r9, 3
    addze   r7, r7
    slwi    r7, r7, 3
    add     r8, r4, r8
    subfc   r7, r7, r9
    add     r8, r8, r0
    slwi    r7, r7, 1
    add     r8, r8, r7
    add     r8, r8, r3
    sth     r5, 0x0(r8)
    lwz     r5, R13Off_m0x5a20(r13)
    lhz     r5, 0x1e(r5)
    srawi   r5, r5, 3
    addze   r5, r5
    slwi    r5, r5, 5
    srawi   r7, r5, 1
    addze   r7, r7
    srawi   r5, r6, 3
    addze   r5, r5
    mullw   r5, r7, r5
    add     r7, r4, r5
    srawi   r5, r6, 3
    lhz     r4, 0x22(sp)
    addze   r5, r5
    slwi    r5, r5, 3
    subfc   r5, r5, r6
    add     r7, r7, r0
    slwi    r0, r5, 1
    add     r7, r7, r0
    add     r7, r7, r3
    sth     r4, 0x0(r7)
branch_0x80345114:
    mr      r3, r31
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl ExpandFontSheet
ExpandFontSheet: # 0x80345134
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r6, R13Off_m0x5a20(r13)
    lhz     r0, 0x18(r6)
    addi    r5, r6, 0x2c
    cmplwi  r0, 0x0
    bne-    branch_0x8034530c
    lwz     r0, 0x28(r6)
    srawi   r6, r0, 1
    addze   r6, r6
    addi    r0, r6, -0x1
    mr.     r10, r0
    slwi    r0, r0, 1
    add     r8, r4, r0
    addi    r6, r10, 0x1
    blt-    branch_0x803454c4
    srwi.   r0, r6, 2
    mtctr   r0
    beq-    branch_0x803452b4
branch_0x80345184:
    add     r9, r3, r10
    lbz     r0, 0x0(r9)
    addi    r10, r10, -0x1
    extrwi  r7, r0, 2, 24
    extrwi  r0, r0, 2, 26
    lbzx    r7, r5, r7
    lbzx    r0, r5, r0
    clrlwi  r0, r0, 28
    rlwimi  r0, r7, 0, 24, 27
    stb     r0, 0x0(r8)
    lbz     r0, 0x0(r9)
    add     r9, r3, r10
    addi    r10, r10, -0x1
    extrwi  r7, r0, 2, 28
    clrlwi  r0, r0, 30
    lbzx    r7, r5, r7
    lbzx    r0, r5, r0
    clrlwi  r0, r0, 28
    rlwimi  r0, r7, 0, 24, 27
    stb     r0, 0x1(r8)
    lbz     r0, 0x0(r9)
    extrwi  r7, r0, 2, 24
    extrwi  r0, r0, 2, 26
    lbzx    r7, r5, r7
    lbzx    r0, r5, r0
    clrlwi  r0, r0, 28
    rlwimi  r0, r7, 0, 24, 27
    stb     r0, -0x2(r8)
    lbz     r0, 0x0(r9)
    add     r9, r3, r10
    addi    r10, r10, -0x1
    extrwi  r7, r0, 2, 28
    clrlwi  r0, r0, 30
    lbzx    r7, r5, r7
    lbzx    r0, r5, r0
    clrlwi  r0, r0, 28
    rlwimi  r0, r7, 0, 24, 27
    stb     r0, -0x1(r8)
    lbz     r0, 0x0(r9)
    extrwi  r7, r0, 2, 24
    extrwi  r0, r0, 2, 26
    lbzx    r7, r5, r7
    lbzx    r0, r5, r0
    clrlwi  r0, r0, 28
    rlwimi  r0, r7, 0, 24, 27
    stb     r0, -0x4(r8)
    lbz     r0, 0x0(r9)
    add     r9, r3, r10
    addi    r10, r10, -0x1
    extrwi  r7, r0, 2, 28
    clrlwi  r0, r0, 30
    lbzx    r7, r5, r7
    lbzx    r0, r5, r0
    clrlwi  r0, r0, 28
    rlwimi  r0, r7, 0, 24, 27
    stb     r0, -0x3(r8)
    lbz     r0, 0x0(r9)
    extrwi  r7, r0, 2, 24
    extrwi  r0, r0, 2, 26
    lbzx    r7, r5, r7
    lbzx    r0, r5, r0
    clrlwi  r0, r0, 28
    rlwimi  r0, r7, 0, 24, 27
    stb     r0, -0x6(r8)
    lbz     r0, 0x0(r9)
    extrwi  r7, r0, 2, 28
    clrlwi  r0, r0, 30
    lbzx    r7, r5, r7
    lbzx    r0, r5, r0
    clrlwi  r0, r0, 28
    rlwimi  r0, r7, 0, 24, 27
    stb     r0, -0x5(r8)
    addi    r8, r8, -0x8
    bdnz+      branch_0x80345184
    andi.   r6, r6, 0x3
    beq-    branch_0x803454c4
branch_0x803452b4:
    mtctr   r6
branch_0x803452b8:
    add     r9, r3, r10
    lbz     r0, 0x0(r9)
    addi    r10, r10, -0x1
    extrwi  r7, r0, 2, 24
    extrwi  r0, r0, 2, 26
    lbzx    r7, r5, r7
    lbzx    r0, r5, r0
    clrlwi  r0, r0, 28
    rlwimi  r0, r7, 0, 24, 27
    stb     r0, 0x0(r8)
    lbz     r0, 0x0(r9)
    extrwi  r7, r0, 2, 28
    clrlwi  r0, r0, 30
    lbzx    r7, r5, r7
    lbzx    r0, r5, r0
    clrlwi  r0, r0, 28
    rlwimi  r0, r7, 0, 24, 27
    stb     r0, 0x1(r8)
    addi    r8, r8, -0x2
    bdnz+      branch_0x803452b8
    b       branch_0x803454c4

branch_0x8034530c:
    cmplwi  r0, 0x2
    bne-    branch_0x803454c4
    lwz     r0, 0x28(r6)
    srawi   r6, r0, 2
    addze   r6, r6
    subic.  r9, r6, 0x1
    slwi    r0, r9, 2
    add     r7, r4, r0
    addi    r6, r9, 0x1
    blt-    branch_0x803454c4
    srwi.   r0, r6, 2
    mtctr   r0
    beq-    branch_0x80345470
branch_0x80345340:
    add     r8, r3, r9
    lbz     r0, 0x0(r8)
    addi    r9, r9, -0x1
    extrwi  r0, r0, 2, 24
    lbzx    r0, r5, r0
    stb     r0, 0x0(r7)
    lbz     r0, 0x0(r8)
    extrwi  r0, r0, 2, 26
    lbzx    r0, r5, r0
    stb     r0, 0x1(r7)
    lbz     r0, 0x0(r8)
    extrwi  r0, r0, 2, 28
    lbzx    r0, r5, r0
    stb     r0, 0x2(r7)
    lbz     r0, 0x0(r8)
    add     r8, r3, r9
    addi    r9, r9, -0x1
    clrlwi  r0, r0, 30
    lbzx    r0, r5, r0
    stb     r0, 0x3(r7)
    lbz     r0, 0x0(r8)
    extrwi  r0, r0, 2, 24
    lbzx    r0, r5, r0
    stb     r0, -0x4(r7)
    lbz     r0, 0x0(r8)
    extrwi  r0, r0, 2, 26
    lbzx    r0, r5, r0
    stb     r0, -0x3(r7)
    lbz     r0, 0x0(r8)
    extrwi  r0, r0, 2, 28
    lbzx    r0, r5, r0
    stb     r0, -0x2(r7)
    lbz     r0, 0x0(r8)
    add     r8, r3, r9
    addi    r9, r9, -0x1
    clrlwi  r0, r0, 30
    lbzx    r0, r5, r0
    stb     r0, -0x1(r7)
    lbz     r0, 0x0(r8)
    extrwi  r0, r0, 2, 24
    lbzx    r0, r5, r0
    stb     r0, -0x8(r7)
    lbz     r0, 0x0(r8)
    extrwi  r0, r0, 2, 26
    lbzx    r0, r5, r0
    stb     r0, -0x7(r7)
    lbz     r0, 0x0(r8)
    extrwi  r0, r0, 2, 28
    lbzx    r0, r5, r0
    stb     r0, -0x6(r7)
    lbz     r0, 0x0(r8)
    add     r8, r3, r9
    addi    r9, r9, -0x1
    clrlwi  r0, r0, 30
    lbzx    r0, r5, r0
    stb     r0, -0x5(r7)
    lbz     r0, 0x0(r8)
    extrwi  r0, r0, 2, 24
    lbzx    r0, r5, r0
    stb     r0, -0xc(r7)
    lbz     r0, 0x0(r8)
    extrwi  r0, r0, 2, 26
    lbzx    r0, r5, r0
    stb     r0, -0xb(r7)
    lbz     r0, 0x0(r8)
    extrwi  r0, r0, 2, 28
    lbzx    r0, r5, r0
    stb     r0, -0xa(r7)
    lbz     r0, 0x0(r8)
    clrlwi  r0, r0, 30
    lbzx    r0, r5, r0
    stb     r0, -0x9(r7)
    addi    r7, r7, -0x10
    bdnz+      branch_0x80345340
    andi.   r6, r6, 0x3
    beq-    branch_0x803454c4
branch_0x80345470:
    mtctr   r6
branch_0x80345474:
    add     r8, r3, r9
    lbz     r0, 0x0(r8)
    addi    r9, r9, -0x1
    extrwi  r0, r0, 2, 24
    lbzx    r0, r5, r0
    stb     r0, 0x0(r7)
    lbz     r0, 0x0(r8)
    extrwi  r0, r0, 2, 26
    lbzx    r0, r5, r0
    stb     r0, 0x1(r7)
    lbz     r0, 0x0(r8)
    extrwi  r0, r0, 2, 28
    lbzx    r0, r5, r0
    stb     r0, 0x2(r7)
    lbz     r0, 0x0(r8)
    clrlwi  r0, r0, 30
    lbzx    r0, r5, r0
    stb     r0, 0x3(r7)
    addi    r7, r7, -0x4
    bdnz+      branch_0x80345474
branch_0x803454c4:
    lwz     r5, R13Off_m0x5a20(r13)
    mr      r3, r4
    lwz     r4, 0x28(r5)
    bl      DCStoreRange
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl OSInitFont
OSInitFont: # 0x803454e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lhz     r0, -0x7368(r13)
    cmplwi  r0, 0x1
    bgt-    branch_0x80345500
    b       branch_0x80345548

branch_0x80345500:
    lis     r4, 0x8000
    lwz     r0, 0xcc(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x80345518
    blt-    branch_0x8034553c
    b       branch_0x8034553c

branch_0x80345518:
    lis     r4, 0xcc00
    lhz     r0, 0x206e(r4)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80345530
    li      r0, 0x1
    b       branch_0x80345534

branch_0x80345530:
    li      r0, 0x0
branch_0x80345534:
    sth     r0, -0x7368(r13)
    b       branch_0x80345544

branch_0x8034553c:
    li      r0, 0x0
    sth     r0, -0x7368(r13)
branch_0x80345544:
    lhz     r0, -0x7368(r13)
branch_0x80345548:
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x1
    bne-    branch_0x80345560
    addis   r4, r3, 0xd
    addi    r4, r4, 0x3f00
    b       branch_0x80345568

branch_0x80345560:
    addis   r4, r3, 0x2
    addi    r4, r4, -0x2ee0
branch_0x80345568:
    clrrwi  r4, r4, 5
    bl      OSLoadFont
    cmplwi  r3, 0x0
    bne-    branch_0x80345580
    li      r3, 0x0
    b       branch_0x803455b4

branch_0x80345580:
    lwz     r5, R13Off_m0x5a20(r13)
    lwz     r0, 0x24(r5)
    add     r0, r5, r0
    stw     r0, R13Off_m0x5a1c(r13)
    lwz     r3, R13Off_m0x5a1c(r13)
    addi    r0, r3, 0x1f
    clrrwi  r0, r0, 5
    stw     r0, R13Off_m0x5a1c(r13)
    lwz     r0, 0x24(r5)
    lwz     r4, R13Off_m0x5a1c(r13)
    add     r3, r5, r0
    bl      ExpandFontSheet
    li      r3, 0x1
branch_0x803455b4:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl OSGetFontTexture
OSGetFontTexture: # 0x803455c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    mr      r27, r3
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r30, r6, 0x0
    addi    r31, r7, 0x0
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    mr      r3, r0
    bne-    branch_0x80345608
    li      r0, 0x0
    stw     r0, 0x0(r28)
    mr      r3, r27
    b       branch_0x80345758

branch_0x80345608:
    lhz     r0, -0x7368(r13)
    addi    r27, r27, 0x1
    cmplwi  r0, 0x1
    bgt-    branch_0x8034561c
    b       branch_0x80345664

branch_0x8034561c:
    lis     r4, 0x8000
    lwz     r0, 0xcc(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x80345634
    blt-    branch_0x80345658
    b       branch_0x80345658

branch_0x80345634:
    lis     r4, 0xcc00
    lhz     r0, 0x206e(r4)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8034564c
    li      r0, 0x1
    b       branch_0x80345650

branch_0x8034564c:
    li      r0, 0x0
branch_0x80345650:
    sth     r0, -0x7368(r13)
    b       branch_0x80345660

branch_0x80345658:
    li      r0, 0x0
    sth     r0, -0x7368(r13)
branch_0x80345660:
    lhz     r0, -0x7368(r13)
branch_0x80345664:
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x1
    bne-    branch_0x803456e0
    clrlwi  r0, r3, 24
    cmplwi  r0, 0x81
    li      r4, 0x1
    li      r5, 0x0
    blt-    branch_0x80345690
    cmplwi  r0, 0x9f
    bgt-    branch_0x80345690
    mr      r5, r4
branch_0x80345690:
    cmpwi   r5, 0x0
    bne-    branch_0x803456c0
    clrlwi  r0, r3, 24
    cmplwi  r0, 0xe0
    li      r5, 0x0
    blt-    branch_0x803456b4
    cmplwi  r0, 0xfc
    bgt-    branch_0x803456b4
    li      r5, 0x1
branch_0x803456b4:
    cmpwi   r5, 0x0
    bne-    branch_0x803456c0
    li      r4, 0x0
branch_0x803456c0:
    cmpwi   r4, 0x0
    beq-    branch_0x803456e0
    lbz     r4, 0x0(r27)
    extsb.  r0, r4
    beq-    branch_0x803456e0
    clrlslwi  r0, r3, 16, 8
    or      r3, r0, r4
    addi    r27, r27, 0x1
branch_0x803456e0:
    bl      GetFontCode
    lwz     r0, R13Off_m0x5a14(r13)
    cmplwi  r31, 0x0
    lwz     r4, R13Off_m0x5a20(r13)
    divw    r6, r3, r0
    lwz     r5, R13Off_m0x5a1c(r13)
    lwz     r0, 0x14(r4)
    mullw   r0, r0, r6
    add     r0, r5, r0
    stw     r0, 0x0(r28)
    lwz     r0, R13Off_m0x5a14(r13)
    lwz     r5, R13Off_m0x5a20(r13)
    mullw   r4, r6, r0
    lhz     r6, 0x1a(r5)
    lhz     r0, 0x10(r5)
    subf    r5, r4, r3
    divw    r7, r5, r6
    mullw   r4, r7, r6
    subf    r4, r4, r5
    mullw   r0, r4, r0
    stw     r0, 0x0(r29)
    lwz     r4, R13Off_m0x5a20(r13)
    lhz     r0, 0x12(r4)
    mullw   r0, r7, r0
    stw     r0, 0x0(r30)
    beq-    branch_0x80345754
    lwz     r4, R13Off_m0x5a18(r13)
    lbzx    r0, r4, r3
    stw     r0, 0x0(r31)
branch_0x80345754:
    mr      r3, r27
branch_0x80345758:
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl OSGetFontWidth
OSGetFontWidth: # 0x8034576c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr      r30, r3
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    mr      r3, r0
    bne-    branch_0x803457a0
    mr      r3, r30
    b       branch_0x80345894

branch_0x803457a0:
    lhz     r0, -0x7368(r13)
    addi    r30, r30, 0x1
    cmplwi  r0, 0x1
    bgt-    branch_0x803457b4
    b       branch_0x803457fc

branch_0x803457b4:
    lis     r4, 0x8000
    lwz     r0, 0xcc(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x803457cc
    blt-    branch_0x803457f0
    b       branch_0x803457f0

branch_0x803457cc:
    lis     r4, 0xcc00
    lhz     r0, 0x206e(r4)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x803457e4
    li      r0, 0x1
    b       branch_0x803457e8

branch_0x803457e4:
    li      r0, 0x0
branch_0x803457e8:
    sth     r0, -0x7368(r13)
    b       branch_0x803457f8

branch_0x803457f0:
    li      r0, 0x0
    sth     r0, -0x7368(r13)
branch_0x803457f8:
    lhz     r0, -0x7368(r13)
branch_0x803457fc:
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x1
    bne-    branch_0x80345878
    clrlwi  r0, r3, 24
    cmplwi  r0, 0x81
    li      r4, 0x1
    li      r5, 0x0
    blt-    branch_0x80345828
    cmplwi  r0, 0x9f
    bgt-    branch_0x80345828
    mr      r5, r4
branch_0x80345828:
    cmpwi   r5, 0x0
    bne-    branch_0x80345858
    clrlwi  r0, r3, 24
    cmplwi  r0, 0xe0
    li      r5, 0x0
    blt-    branch_0x8034584c
    cmplwi  r0, 0xfc
    bgt-    branch_0x8034584c
    li      r5, 0x1
branch_0x8034584c:
    cmpwi   r5, 0x0
    bne-    branch_0x80345858
    li      r4, 0x0
branch_0x80345858:
    cmpwi   r4, 0x0
    beq-    branch_0x80345878
    lbz     r4, 0x0(r30)
    extsb.  r0, r4
    beq-    branch_0x80345878
    clrlslwi  r0, r3, 16, 8
    or      r3, r0, r4
    addi    r30, r30, 0x1
branch_0x80345878:
    cmplwi  r31, 0x0
    beq-    branch_0x80345890
    bl      GetFontCode
    lwz     r4, R13Off_m0x5a18(r13)
    lbzx    r0, r4, r3
    stw     r0, 0x0(r31)
branch_0x80345890:
    mr      r3, r30
branch_0x80345894:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

