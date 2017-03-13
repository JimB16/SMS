
.globl __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
__ct__10JUTGamePadFQ210JUTGamePad8EPadPort: # 0x802c89a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    mr      r28, r4
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11JKRDisposerFv
    lwz     r29, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x588
    stw     r0, 0x0(r29)
    addi    r3, r29, 0x18
    bl      clear__Q210JUTGamePad7CButtonFv
    addi    r3, r29, 0x48
    bl      clear__Q210JUTGamePad6CStickFv
    addi    r3, r29, 0x58
    bl      clear__Q210JUTGamePad6CStickFv
    addi    r4, r29, 0x0
    addi    r3, r29, 0x68
    bl      clear__Q210JUTGamePad7CRumbleFP10JUTGamePad
    addi    r30, r29, 0x7c
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      __ct__10JSUPtrLinkFPv
    li      r31, 0x0
    stb     r31, 0x98(r29)
    extsh   r0, r28
    subi    r5, r13, 0x5edc
    sth     r0, 0x78(r29)
    mr      r3, r29
    lbzx    r4, r5, r28
    addi    r0, r4, 0x1
    stbx    r0, r5, r28
    bl      initList__10JUTGamePadFv
    lis     r3, 0x8040
    addi    r3, r3, 0x42d8
    addi    r4, r30, 0x0
    bl      append__10JSUPtrListFP10JSUPtrLink
    mr      r3, r29
    bl      update__10JUTGamePadFv
    stw     r31, 0x8c(r29)
    mr      r3, r29
    stw     r31, 0x90(r29)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__10JUTGamePadFv
__dt__10JUTGamePadFv: # 0x802c8a7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802c8b0c
    lis     r3, 0x803e
    addi    r0, r3, 0x588
    stw     r0, 0x0(r30)
    lha     r5, 0x78(r30)
    cmpwi   r5, -0x1
    beq-    branch_0x802c8acc
    subi    r4, r13, 0x5edc
    lbzx    r3, r4, r5
    li      r0, -0x1
    subi    r3, r3, 0x1
    stbx    r3, r4, r5
    sth     r0, 0x78(r30)
branch_0x802c8acc:
    lis     r3, 0x8040
    addi    r3, r3, 0x42d8
    addi    r4, r30, 0x7c
    bl      remove__10JSUPtrListFP10JSUPtrLink
    addic.  r0, r30, 0x7c
    beq-    branch_0x802c8af0
    addi    r3, r30, 0x7c
    li      r4, 0x0
    bl      __dt__10JSUPtrLinkFv
branch_0x802c8af0:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__11JKRDisposerFv
    extsh.  r0, r31
    ble-    branch_0x802c8b0c
    mr      r3, r30
    bl      __dl__FPv
branch_0x802c8b0c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl initList__10JUTGamePadFv
initList__10JUTGamePadFv: # 0x802c8b28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x5ee0(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802c8b54
    lis     r3, 0x8040
    addi    r3, r3, 0x42d8
    bl      initiate__10JSUPtrListFv
    li      r0, 0x1
    stb     r0, -0x5ee0(r13)
branch_0x802c8b54:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl init__10JUTGamePadFv
init__10JUTGamePadFv: # 0x802c8b64
    mflr    r0
    li      r3, 0x5
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      PADSetSpec
    li      r0, 0x3
    stw     r0, -0x5ed4(r13)
    li      r3, 0x3
    bl      PADSetAnalogMode
    bl      PADInit
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl read__10JUTGamePadFv
read__10JUTGamePadFv: # 0x802c8b9c

.set var_40, -0x40
.set var_3E, -0x3E
.set var_3D, -0x3D
.set var_3C, -0x3C
.set var_3B, -0x3B
.set var_30, -0x30
.set arg_4,  4

    mflr    r0
    lis     r3, Controllers@h
    stw     r0, arg_4(sp)
    stwu    sp, -0x160(sp)
    stmw    r20, 0x160+var_30(sp)

    addi    r31, r3, Controllers@l
    addi    r3, r31, 0x0
    bl      PADRead
    mr      r3, r31
    bl      PADClamp

    lis     r5, unk_80404544@h
    lis     r4, unk_80404584@h
    lis     r3, unk_80404484@h
    addi    r23, r5, unk_80404544@l
    addi    r24, r4, unk_80404584@l
    addi    r25, r3, unk_80404484@l
    li      r29, 0x0
    li      r30, 0x0
    li      r28, 0x0
    li      r27, 0x0
    li      r26, 0x0
    lis     r22, 0x8000
branch_0x802c8bf4:
    add     r3, r31, r26
    lbz     r4, 0xa(r3)
    srw     r21, r22, r30
    extsb.  r0, r4
    bne-    branch_0x802c8c5c
    mr      r21, r3
    lwz     r6, -0x75b0(r13)
    lbz     r4, 0x2(r21)
    add     r3, r23, r27
    lbz     r5, 0x3(r21)
    li      r7, 0x0
    bl      update__Q210JUTGamePad6CStickFScScQ210JUTGamePad10EStickModeQ210JUTGamePad11EWhichStick
    lbz     r4, 0x4(r21)
    slwi    r20, r3, 24
    lbz     r5, 0x5(r21)
    add     r3, r24, r27
    lwz     r6, -0x75b0(r13)
    li      r7, 0x1
    bl      update__Q210JUTGamePad6CStickFScScQ210JUTGamePad10EStickModeQ210JUTGamePad11EWhichStick
    slwi    r0, r3, 16
    or      r20, r20, r0
    add     r3, r25, r28
    addi    r4, r21, 0x0
    addi    r5, r20, 0x0
    bl      update__Q210JUTGamePad7CButtonFPC9PADStatusUl
    b       branch_0x802c8cd0

branch_0x802c8c5c:
    extsb   r0, r4
    cmpwi   r0, -0x1
    bne-    branch_0x802c8cbc
    lwz     r6, -0x75b0(r13)
    add     r3, r23, r27
    li      r4, 0x0
    li      r5, 0x0
    li      r7, 0x0
    bl      update__Q210JUTGamePad6CStickFScScQ210JUTGamePad10EStickModeQ210JUTGamePad11EWhichStick
    lwz     r6, -0x75b0(r13)
    add     r3, r24, r27
    li      r4, 0x0
    li      r5, 0x0
    li      r7, 0x1
    bl      update__Q210JUTGamePad6CStickFScScQ210JUTGamePad10EStickModeQ210JUTGamePad11EWhichStick
    add     r3, r25, r28
    li      r4, 0x0
    li      r5, 0x0
    bl      update__Q210JUTGamePad7CButtonFPC9PADStatusUl
    lwz     r0, -0x5ed8(r13)
    and.    r0, r0, r21
    bne-    branch_0x802c8cd0
    or      r29, r29, r21
    b       branch_0x802c8cd0

branch_0x802c8cbc:
    add     r3, r25, r28
    li      r0, 0x0
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0x18(r3)
branch_0x802c8cd0:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x4
    addi    r28, r28, 0x30
    addi    r27, r27, 0x10
    addi    r26, r26, 0xc
    blt+    branch_0x802c8bf4
    lis     r3, unk_804042D8@h
    addi    r4, r3, unk_804042D8@l
    lis     r3, Controllers@h
    lwz     r31, 0x0(r4)
    addi    r26, r3, Controllers@l
    li      r30, 0xc
    b       branch_0x802c8e90

branch_0x802c8d04:
    lwz     r4, 0x0(r31)
    lwz     r3, 0x90(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x802c8e3c
    bl      read__16JUTGamePadRecordFv
    cmplwi  r3, 0x0
    bne-    branch_0x802c8d70
    lwz     r3, 0x0(r31)
    li      r4, 0x0
    lwz     r6, -0x75b0(r13)
    li      r5, 0x0
    addi    r3, r3, 0x48
    li      r7, 0x0
    bl      update__Q210JUTGamePad6CStickFScScQ210JUTGamePad10EStickModeQ210JUTGamePad11EWhichStick
    lwz     r3, 0x0(r31)
    li      r4, 0x0
    lwz     r6, -0x75b0(r13)
    li      r5, 0x0
    addi    r3, r3, 0x58
    li      r7, 0x1
    bl      update__Q210JUTGamePad6CStickFScScQ210JUTGamePad10EStickModeQ210JUTGamePad11EWhichStick
    lwz     r3, 0x0(r31)
    li      r4, 0x0
    li      r5, 0x0
    addi    r3, r3, 0x18
    bl      update__Q210JUTGamePad7CButtonFPC9PADStatusUl
    b       branch_0x802c8e58

branch_0x802c8d70:
    cmpwi   r30, 0x8
    addi    r4, sp, 0x160+var_40
    li      r5, 0x0
    ble-    branch_0x802c8dac
    li      r0, 0x0
    stb     r0, 0x160+var_40(sp)
    li      r5, 0x8
    stb     r0, 0x1(r4)
    stb     r0, 0x2(r4)
    stb     r0, 0x3(r4)
    stb     r0, 0x4(r4)
    stb     r0, 0x5(r4)
    stb     r0, 0x6(r4)
    stb     r0, 0x7(r4)
    addi    r4, r4, 0x8
branch_0x802c8dac:
    subfic  r0, r5, 0xc
    cmpwi   r5, 0xc
    mtctr   r0
    li      r0, 0x0
    bge-    branch_0x802c8dcc
branch_0x802c8dc0:
    stb     r0, 0x0(r4)
    addi    r4, r4, 0x1
    bdnz+   branch_0x802c8dc0
branch_0x802c8dcc:
    lwz     r6, 0x0(r31)
    addi    r5, r3, 0x0
    addi    r4, sp, 0x160+var_40
    lwz     r3, 0x90(r6)
    bl      streamDataToPadStatus__16JUTGamePadRecordFP9PADStatusPUc
    lwz     r3, 0x0(r31)
    li      r7, 0x0
    lbz     r4, 0x160+var_3E(sp)
    lbz     r5, 0x160+var_3D(sp)
    addi    r3, r3, 0x48
    lwz     r6, -0x75b0(r13)
    bl      update__Q210JUTGamePad6CStickFScScQ210JUTGamePad10EStickModeQ210JUTGamePad11EWhichStick
    lwz     r8, 0x0(r31)
    slwi    r20, r3, 24
    lbz     r4, 0x160+var_3C(sp)
    li      r7, 0x1
    lbz     r5, 0x160+var_3B(sp)
    lwz     r6, -0x75b0(r13)
    addi    r3, r8, 0x58
    bl      update__Q210JUTGamePad6CStickFScScQ210JUTGamePad10EStickModeQ210JUTGamePad11EWhichStick
    slwi    r0, r3, 16
    lwz     r3, 0x0(r31)
    or      r20, r20, r0
    addi    r5, r20, 0x0
    addi    r3, r3, 0x18
    addi    r4, sp, 0x160+var_40
    bl      update__Q210JUTGamePad7CButtonFPC9PADStatusUl
    b       branch_0x802c8e58

branch_0x802c8e3c:
    lha     r0, 0x78(r4)
    cmpwi   r0, -0x1
    bne-    branch_0x802c8e50
    mr      r3, r4
    bl      assign__10JUTGamePadFv
branch_0x802c8e50:
    lwz     r3, 0x0(r31)
    bl      update__10JUTGamePadFv
branch_0x802c8e58:
    lwz     r4, 0x0(r31)
    lwz     r3, 0x8c(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x802c8e8c
    lha     r0, 0x78(r4)
    cmpwi   r0, -0x1
    beq-    branch_0x802c8e8c
    mulli   r0, r0, 0xc
    add     r4, r26, r0
    lbz     r0, 0xa(r4)
    extsb.  r0, r0
    bne-    branch_0x802c8e8c
    bl      write__16JUTGamePadRecordFP9PADStatus
branch_0x802c8e8c:
    lwz     r31, 0xc(r31)
branch_0x802c8e90:
    cmplwi  r31, 0x0
    bne+    branch_0x802c8d04

    cmplwi  r29, 0x0
    beq-    branch_0x802c8ea8
    mr      r3, r29
    bl      PADReset
branch_0x802c8ea8:

    bl      checkResetSwitch__10JUTGamePadFv
    lmw     r20, 0x160+var_30(sp)
    lwz     r0, 0x160+arg_4(sp)
    addi    sp, sp, 0x160
    mtlr    r0
    blr


.globl assign__10JUTGamePadFv
assign__10JUTGamePadFv: # 0x802c8ec0

.set var_4, -4
.set arg_4,  4

    mflr    r0
    lis     r4, Controllers@h
    stw     r0, arg_4(sp)
    li      r0, 0x4
    mtctr   r0
    addi    r5, r4, Controllers@l
    stwu    sp, -0x18(sp)
    li      r6, 0x0
    stw     r31, 0x18+var_4(sp)
    addi    r31, r3, 0x0
    li      r3, 0x0
branch_0x802c8eec:
    add     r4, r5, r3
    lbz     r0, 0xa(r4)
    extsb.  r0, r0
    bne-    branch_0x802c8f50
    subi    r4, r13, 0x5edc
    add     r4, r4, r6
    lbz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x802c8f50
    extsh   r0, r6
    sth     r0, 0x78(r31)
    li      r0, 0x1
    mulli   r6, r6, 0x30
    stb     r0, 0x0(r4)
    lis     r3, unk_80404484@h
    lwz     r4, 0x3c(r31)
    addi    r0, r3, unk_80404484@l
    lwz     r5, 0x40(r31)
    add     r3, r0, r6
    lwz     r6, 0x44(r31)
    bl      setRepeat__Q210JUTGamePad7CButtonFUlUlUl
    addi    r3, r31, 0x68
    addi    r4, r31, 0x0
    bl      clear__Q210JUTGamePad7CRumbleFP10JUTGamePad
    b       branch_0x802c8f5c

branch_0x802c8f50:
    addi    r6, r6, 0x1
    addi    r3, r3, 0xc
    bdnz+      branch_0x802c8eec
branch_0x802c8f5c:
    lwz     r0, 0x18+arg_4(sp)
    lwz     r31, 0x18+var_4(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl update__10JUTGamePadFv
update__10JUTGamePadFv: # 0x802c8f70

.set var_4, -4
.set arg_4,  4

    mflr    r0
    stw     r0, arg_4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x18+var_4(sp)
    mr      r31, r3
    lha     r0, 0x78(r3)
    cmpwi   r0, -0x1
    beq-    branch_0x802c9144
    mulli   r4, r0, 0x30
    lis     r3, unk_80404484@h
    addi    r0, r3, unk_80404484@l
    add     r7, r0, r4
    lwz     r0, 0x0(r7)
    lis     r5, unk_80404544@h
    lwz     r6, 0x4(r7)
    lis     r4, unk_80404584@h
    lis     r3, Controllers@h
    stw     r0, 0x18(r31)
    addi    r5, r5, unk_80404544@l
    addi    r0, r4, unk_80404584@l
    stw     r6, 0x1c(r31)
    addi    r3, r3, Controllers@l
    lwz     r6, 0x8(r7)
    lwz     r4, 0xc(r7)
    stw     r6, 0x20(r31)
    stw     r4, 0x24(r31)
    lwz     r6, 0x10(r7)
    lwz     r4, 0x14(r7)
    stw     r6, 0x28(r31)
    stw     r4, 0x2c(r31)
    lwz     r6, 0x18(r7)
    lwz     r4, 0x1c(r7)
    stw     r6, 0x30(r31)
    stw     r4, 0x34(r31)
    lwz     r6, 0x20(r7)
    lwz     r4, 0x24(r7)
    stw     r6, 0x38(r31)
    stw     r4, 0x3c(r31)
    lwz     r6, 0x28(r7)
    lwz     r4, 0x2c(r7)
    stw     r6, 0x40(r31)
    stw     r4, 0x44(r31)
    lha     r4, 0x78(r31)
    slwi    r4, r4, 4
    add     r6, r5, r4
    lwz     r5, 0x0(r6)
    lwz     r4, 0x4(r6)
    stw     r5, 0x48(r31)
    stw     r4, 0x4c(r31)
    lwz     r5, 0x8(r6)
    lwz     r4, 0xc(r6)
    stw     r5, 0x50(r31)
    stw     r4, 0x54(r31)
    lha     r4, 0x78(r31)
    slwi    r4, r4, 4
    add     r5, r0, r4
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x58(r31)
    stw     r0, 0x5c(r31)
    lwz     r4, 0x8(r5)
    lwz     r0, 0xc(r5)
    stw     r4, 0x60(r31)
    stw     r0, 0x64(r31)
    lha     r0, 0x78(r31)
    mulli   r0, r0, 0xc
    add     r3, r3, r0
    lbz     r0, 0xa(r3)
    stb     r0, 0x7a(r31)
    lbz     r0, -0x5eb7(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802c9138
    lwz     r3, -0x75ac(r13)
    lwz     r0, 0x18(r31)
    and     r0, r3, r0
    cmplw   r3, r0
    bne-    branch_0x802c9130
    lbz     r0, 0x98(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x802c9118
    bl      OSGetTime
    lwz     r0, 0xa4(r31)
    lwz     r5, 0xa0(r31)
    subfc   r6, r0, r4
    lwz     r0, -0x5ec0(r13)
    subfe   r3, r5, r3
    lwz     r5, -0x5ebc(r13)
    xoris   r4, r3, 0x8000
    xoris   r3, r0, 0x8000
    subfc   r0, r5, r6
    subfe   r3, r3, r4
    subfe   r3, r4, r4
    neg.    r3, r3
    bne-    branch_0x802c9138
    li      r0, 0x1
    lwz     r12, -0x5ec8(r13)
    stb     r0, -0x5eb7(r13)
    cmplwi  r12, 0x0
    lha     r0, 0x78(r31)
    stw     r0, -0x5eb4(r13)
    beq-    branch_0x802c9138
    lha     r3, 0x78(r31)
    mtlr    r12
    lwz     r4, -0x5ec4(r13)
    blrl
    b       branch_0x802c9138

branch_0x802c9118:
    li      r0, 0x1
    stb     r0, 0x98(r31)
    bl      OSGetTime
    stw     r4, 0xa4(r31)
    stw     r3, 0xa0(r31)
    b       branch_0x802c9138

branch_0x802c9130:
    li      r0, 0x0
    stb     r0, 0x98(r31)
branch_0x802c9138:
    addi    r3, r31, 0x68
    lha     r4, 0x78(r31)
    bl      update__Q210JUTGamePad7CRumbleFs
branch_0x802c9144:
    lwz     r0, 0x18+arg_4(sp)
    lwz     r31, 0x18+var_4(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl checkResetSwitch__10JUTGamePadFv
checkResetSwitch__10JUTGamePadFv: # 0x802c9158
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x5eb7(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802c91c8
    bl      OSGetResetSwitchState
    cmpwi   r3, 0x0
    beq-    branch_0x802c9188
    li      r0, 0x1
    stb     r0, -0x5eb8(r13)
    b       branch_0x802c91c8

branch_0x802c9188:
    lbz     r0, -0x5eb8(r13)
    cmplwi  r0, 0x1
    bne-    branch_0x802c91c0
    lwz     r12, -0x5ec8(r13)
    li      r3, 0x1
    li      r0, -0x1
    stb     r3, -0x5eb7(r13)
    cmplwi  r12, 0x0
    stw     r0, -0x5eb4(r13)
    beq-    branch_0x802c91c0
    lwz     r4, -0x5ec4(r13)
    mtlr    r12
    li      r3, -0x1
    blrl
branch_0x802c91c0:
    li      r0, 0x0
    stb     r0, -0x5eb8(r13)
branch_0x802c91c8:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl clearForReset__10JUTGamePadFv
clearForReset__10JUTGamePadFv: # 0x802c91d8
    mflr    r0
    li      r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      setEnable__Q210JUTGamePad7CRumbleFUl
    lis     r3, 0xf000
    bl      recalibrate__10JUTGamePadFUl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl clear__Q210JUTGamePad7CButtonFv
clear__Q210JUTGamePad7CButtonFv: # 0x802c9204
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0x18(r3)
    stb     r0, 0xc(r3)
    stb     r0, 0xd(r3)
    stb     r0, 0xe(r3)
    stb     r0, 0xf(r3)
    stw     r0, 0x1c(r3)
    stw     r0, 0x20(r3)
    stw     r0, 0x24(r3)
    stw     r0, 0x28(r3)
    stw     r0, 0x2c(r3)
    blr


.globl update__Q210JUTGamePad7CButtonFPC9PADStatusUl
update__Q210JUTGamePad7CButtonFPC9PADStatusUl: # 0x802c9240
    cmplwi  r4, 0x0
    stwu    sp, -0x28(sp)
    beq-    branch_0x802c9254
    lhz     r0, 0x0(r4)
    b       branch_0x802c9258

branch_0x802c9254:
    li      r0, 0x0
branch_0x802c9258:
    li      r6, 0x0
    stw     r6, 0x18(r3)
    or      r8, r5, r0
    lwz     r0, 0x28(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802c92f8
    lwz     r0, 0x24(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802c92f8
    and.    r7, r8, r0
    stw     r6, 0x18(r3)
    bne-    branch_0x802c9294
    stw     r6, 0x20(r3)
    stw     r6, 0x1c(r3)
    b       branch_0x802c92f8

branch_0x802c9294:
    lwz     r0, 0x20(r3)
    cmplw   r0, r7
    bne-    branch_0x802c92e0
    lwz     r5, 0x1c(r3)
    addi    r0, r5, 0x1
    stw     r0, 0x1c(r3)
    lwz     r6, 0x1c(r3)
    lwz     r0, 0x28(r3)
    cmplw   r6, r0
    beq-    branch_0x802c92d8
    ble-    branch_0x802c92f8
    lwz     r5, 0x2c(r3)
    subf    r6, r0, r6
    divwu   r0, r6, r5
    mullw   r0, r0, r5
    subf.   r0, r0, r6
    bne-    branch_0x802c92f8
branch_0x802c92d8:
    stw     r7, 0x18(r3)
    b       branch_0x802c92f8

branch_0x802c92e0:
    xoris   r0, r0, 0xffff
    xori     r0, r0, 0xffff
    and     r0, r7, r0
    stw     r0, 0x18(r3)
    stw     r7, 0x20(r3)
    stw     r6, 0x1c(r3)
branch_0x802c92f8:
    lwz     r0, 0x0(r3)
    cmplwi  r4, 0x0
    xor     r0, r8, r0
    and     r0, r8, r0
    stw     r0, 0x4(r3)
    lwz     r5, 0x0(r3)
    xor     r0, r8, r5
    and     r0, r5, r0
    stw     r0, 0x8(r3)
    stw     r8, 0x0(r3)
    lwz     r5, 0x24(r3)
    lwz     r0, 0x4(r3)
    xoris   r5, r5, 0xffff
    lwz     r6, 0x18(r3)
    xori     r5, r5, 0xffff
    and     r0, r5, r0
    or      r0, r6, r0
    stw     r0, 0x18(r3)
    beq-    branch_0x802c9368
    lbz     r0, 0x8(r4)
    stb     r0, 0xc(r3)
    lbz     r0, 0x9(r4)
    stb     r0, 0xd(r3)
    lbz     r0, 0x6(r4)
    stb     r0, 0xe(r3)
    lbz     r0, 0x7(r4)
    stb     r0, 0xf(r3)
    b       branch_0x802c937c

branch_0x802c9368:
    li      r0, 0x0
    stb     r0, 0xc(r3)
    stb     r0, 0xd(r3)
    stb     r0, 0xe(r3)
    stb     r0, 0xf(r3)
branch_0x802c937c:
    lbz     r0, 0xe(r3)
    lis     r4, 0x4330
    lfd     f2, 0xf0(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, 0xe8(rtoc)
    stw     r0, 0x24(sp)
    stw     r4, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f2
    fdivs   f0, f0, f1
    stfs    f0, 0x10(r3)
    lbz     r0, 0xf(r3)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f2
    fdivs   f0, f0, f1
    stfs    f0, 0x14(r3)
    addi    sp, sp, 0x28
    blr


.globl clear__Q210JUTGamePad6CStickFv
clear__Q210JUTGamePad6CStickFv: # 0x802c93d0
    lfs     f0, 0xf8(rtoc)
    li      r0, 0x0
    stfs    f0, 0x0(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    sth     r0, 0xc(r3)
    blr


.globl update__Q210JUTGamePad6CStickFScScQ210JUTGamePad10EStickModeQ210JUTGamePad11EWhichStick
update__Q210JUTGamePad6CStickFScScQ210JUTGamePad10EStickModeQ210JUTGamePad11EWhichStick: # 0x802c93ec
    mflr    r0
    cmpwi   r7, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r3, 0x0
    bne-    branch_0x802c9410
    li      r3, 0x36
    b       branch_0x802c9414

branch_0x802c9410:
    li      r3, 0x2a
branch_0x802c9414:
    extsb   r0, r4
    lfd     f3, 0xf0(rtoc)
    xoris   r3, r3, 0x8000
    xoris   r4, r0, 0x8000
    stw     r3, 0x3c(sp)
    extsb   r0, r5
    stw     r4, 0x44(sp)
    lis     r4, 0x4330
    xoris   r0, r0, 0x8000
    stw     r4, 0x40(sp)
    stw     r4, 0x38(sp)
    lfd     f1, 0x40(sp)
    lfd     f0, 0x38(sp)
    stw     r0, 0x34(sp)
    fsubs   f1, f1, f3
    fsubs   f0, f0, f3
    stw     r3, 0x2c(sp)
    fdivs   f2, f1, f0
    stw     r4, 0x30(sp)
    stw     r4, 0x28(sp)
    lfd     f1, 0x30(sp)
    lfd     f0, 0x28(sp)
    fsubs   f1, f1, f3
    stfs    f2, 0x0(r31)
    fsubs   f0, f0, f3
    fdivs   f0, f1, f0
    stfs    f0, 0x4(r31)
    lfs     f0, 0x0(r31)
    lfs     f1, 0x4(r31)
    fmuls   f2, f0, f0
    lfs     f0, 0xf8(rtoc)
    fmuls   f1, f1, f1
    fadds   f4, f2, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x802c94ec
    frsqrte f1, f4
    lfd     f3, 0x100(rtoc)
    lfd     f2, 0x108(rtoc)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x1c(sp)
    lfs     f4, 0x1c(sp)
branch_0x802c94ec:
    stfs    f4, 0x8(r31)
    lfs     f1, 0x8(r31)
    lfs     f0, 0x110(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802c952c
    cmpwi   r6, 0x1
    bne-    branch_0x802c9524
    lfs     f0, 0x0(r31)
    fdivs   f0, f0, f1
    stfs    f0, 0x0(r31)
    lfs     f1, 0x4(r31)
    lfs     f0, 0x8(r31)
    fdivs   f0, f1, f0
    stfs    f0, 0x4(r31)
branch_0x802c9524:
    lfs     f0, 0x110(rtoc)
    stfs    f0, 0x8(r31)
branch_0x802c952c:
    lfs     f1, 0x8(r31)
    lfs     f0, 0xf8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802c956c
    lfs     f0, 0x4(r31)
    lfs     f1, 0x0(r31)
    fneg    f2, f0
    bl      atan2f
    lfs     f2, 0x114(rtoc)
    lfd     f0, 0x118(rtoc)
    fmuls   f1, f2, f1
    fdiv    f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x28(sp)
    lwz     r0, 0x2c(sp)
    sth     r0, 0xc(r31)
branch_0x802c956c:
    mr      r3, r31
    bl      getButton__Q210JUTGamePad6CStickFv
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl getButton__Q210JUTGamePad6CStickFv
getButton__Q210JUTGamePad6CStickFv: # 0x802c9588
    lfs     f0, 0x120(rtoc)
    li      r0, 0x0
    lfs     f1, 0x0(r3)
    fcmpo   cr0, f0, f1
    bge-    branch_0x802c95b0
    lfs     f0, 0x124(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802c95b0
    clrrwi  r0, r0, 2
    b       branch_0x802c95dc

branch_0x802c95b0:
    lfs     f0, 0x128(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x802c95c8
    ori     r0, r0, 0x1
    b       branch_0x802c95dc

branch_0x802c95c8:
    lfs     f0, 0x12c(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x802c95dc
    ori     r0, r0, 0x2
branch_0x802c95dc:
    lfs     f0, 0x120(rtoc)
    lfs     f1, 0x4(r3)
    fcmpo   cr0, f0, f1
    bge-    branch_0x802c9600
    lfs     f0, 0x124(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802c9600
    rlwinm  r0, r0, 0, 30, 27
    b       branch_0x802c962c

branch_0x802c9600:
    lfs     f0, 0x128(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x802c9618
    ori     r0, r0, 0x4
    b       branch_0x802c962c

branch_0x802c9618:
    lfs     f0, 0x12c(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x802c962c
    ori     r0, r0, 0x8
branch_0x802c962c:
    mr      r3, r0
    blr


.globl clear__Q210JUTGamePad7CRumbleFP10JUTGamePad
clear__Q210JUTGamePad7CRumbleFP10JUTGamePad: # 0x802c9634
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    lha     r5, 0x78(r4)
    extsh.  r0, r5
    blt-    branch_0x802c9670
    cmpwi   r5, 0x4
    bge-    branch_0x802c9670
    li      r0, 0x0
    subi    r3, r13, 0x5ed0
    stbx    r0, r3, r5
    lha     r3, 0x78(r4)
    bl      stopMotorHard__Q210JUTGamePad7CRumbleFi
branch_0x802c9670:
    li      r3, 0x0
    stw     r3, 0x0(r31)
    lis     r0, 0xf000
    stw     r3, 0x4(r31)
    stw     r3, 0x8(r31)
    stw     r3, 0xc(r31)
    stw     r0, -0x5ecc(r13)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl stopMotor__Q210JUTGamePad7CRumbleFi
stopMotor__Q210JUTGamePad7CRumbleFi: # 0x802c96a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lis     r3, 0x803e
    slwi    r4, r31, 2
    lwz     r5, -0x5ecc(r13)
    addi    r0, r3, 0x578
    add     r3, r0, r4
    lwz     r0, 0x0(r3)
    and.    r0, r5, r0
    beq-    branch_0x802c96ec
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      PADControlMotor
    li      r0, 0x0
    subi    r3, r13, 0x5ed0
    stbx    r0, r3, r31
branch_0x802c96ec:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl stopMotorHard__Q210JUTGamePad7CRumbleFi
stopMotorHard__Q210JUTGamePad7CRumbleFi: # 0x802c9700
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lis     r3, 0x803e
    slwi    r4, r31, 2
    lwz     r5, -0x5ecc(r13)
    addi    r0, r3, 0x578
    add     r3, r0, r4
    lwz     r0, 0x0(r3)
    and.    r0, r5, r0
    beq-    branch_0x802c974c
    addi    r3, r31, 0x0
    li      r4, 0x2
    bl      PADControlMotor
    li      r0, 0x0
    subi    r3, r13, 0x5ed0
    stbx    r0, r3, r31
branch_0x802c974c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl update__Q210JUTGamePad7CRumbleFs
update__Q210JUTGamePad7CRumbleFs: # 0x802c9760
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    extsh   r7, r4
    addi    r5, r5, 0x578
    stwu    sp, -0x20(sp)
    slwi    r0, r7, 2
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    lwz     r6, -0x5ecc(r13)
    lwzx    r0, r5, r0
    and.    r0, r6, r0
    bne-    branch_0x802c97b0
    li      r0, 0x0
    stw     r0, 0x0(r31)
    stw     r0, 0x4(r31)
    stw     r0, 0x8(r31)
    stw     r0, 0xc(r31)
branch_0x802c97b0:
    lwz     r0, 0x4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802c9910
    lwz     r8, 0x0(r31)
    cmplw   r8, r0
    blt-    branch_0x802c9804
    extsh   r30, r4
    lwz     r3, -0x5ecc(r13)
    slwi    r0, r30, 2
    lwzx    r0, r5, r0
    and.    r0, r3, r0
    beq-    branch_0x802c97f8
    addi    r3, r30, 0x0
    li      r4, 0x2
    bl      PADControlMotor
    li      r0, 0x0
    subi    r3, r13, 0x5ed0
    stbx    r0, r3, r30
branch_0x802c97f8:
    li      r0, 0x0
    stw     r0, 0x4(r31)
    b       branch_0x802c9904

branch_0x802c9804:
    lwz     r6, 0xc(r31)
    cmplwi  r6, 0x0
    bne-    branch_0x802c9850
    subi    r30, r13, 0x5ed0
    lbzx    r0, r30, r7
    cmplwi  r0, 0x0
    bne-    branch_0x802c9910
    extsh   r31, r4
    lwz     r3, -0x5ecc(r13)
    slwi    r0, r31, 2
    lwzx    r0, r5, r0
    and.    r0, r3, r0
    beq-    branch_0x802c9910
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      PADControlMotor
    li      r0, 0x1
    stbx    r0, r30, r31
    b       branch_0x802c9910

branch_0x802c9850:
    divwu   r0, r8, r6
    lwz     r3, 0x8(r31)
    mullw   r0, r0, r6
    subf    r6, r0, r8
    srwi    r0, r6, 3
    lbzx    r0, r3, r0
    clrlwi  r6, r6, 29
    li      r3, 0x80
    sraw    r3, r3, r6
    and     r0, r3, r0
    clrlwi. r3, r0, 24
    beq-    branch_0x802c98c0
    subi    r30, r13, 0x5ed0
    lbzx    r0, r30, r7
    cmplwi  r0, 0x0
    bne-    branch_0x802c98c0
    extsh   r29, r4
    lwz     r3, -0x5ecc(r13)
    slwi    r0, r29, 2
    lwzx    r0, r5, r0
    and.    r0, r3, r0
    beq-    branch_0x802c9904
    addi    r3, r29, 0x0
    li      r4, 0x1
    bl      PADControlMotor
    li      r0, 0x1
    stbx    r0, r30, r29
    b       branch_0x802c9904

branch_0x802c98c0:
    cmplwi  r3, 0x0
    bne-    branch_0x802c9904
    subi    r30, r13, 0x5ed0
    lbzx    r0, r30, r7
    cmplwi  r0, 0x0
    beq-    branch_0x802c9904
    extsh   r29, r4
    lwz     r3, -0x5ecc(r13)
    slwi    r0, r29, 2
    lwzx    r0, r5, r0
    and.    r0, r3, r0
    beq-    branch_0x802c9904
    addi    r3, r29, 0x0
    li      r4, 0x2
    bl      PADControlMotor
    li      r0, 0x0
    stbx    r0, r30, r29
branch_0x802c9904:
    lwz     r3, 0x0(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r31)
branch_0x802c9910:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl setEnable__Q210JUTGamePad7CRumbleFUl
setEnable__Q210JUTGamePad7CRumbleFUl: # 0x802c992c
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    lis     r5, 0x803e
    stwu    sp, -0x70(sp)
    stmw    r25, 0x54(sp)
    clrrwi  r29, r3, 28
    addi    r26, r4, 0x42d8
    addi    r31, r5, 0x578
    li      r30, 0x0
    li      r28, 0x0
branch_0x802c9958:
    add     r3, r31, r28
    lwz     r4, -0x5ecc(r13)
    lwz     r0, 0x0(r3)
    and.    r3, r4, r0
    bne-    branch_0x802c9a08
    subi    r27, r13, 0x5ed0
    add     r27, r27, r30
    lbz     r0, 0x0(r27)
    cmplwi  r0, 0x0
    beq-    branch_0x802c999c
    cmplwi  r3, 0x0
    beq-    branch_0x802c999c
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      PADControlMotor
    li      r0, 0x0
    stb     r0, 0x0(r27)
branch_0x802c999c:
    lwz     r3, 0x0(r26)
    b       branch_0x802c99bc

branch_0x802c99a4:
    lwz     r4, 0x0(r3)
    lha     r0, 0x78(r4)
    cmpw    r30, r0
    bne-    branch_0x802c99b8
    b       branch_0x802c99c8

branch_0x802c99b8:
    lwz     r3, 0xc(r3)
branch_0x802c99bc:
    cmplwi  r3, 0x0
    bne+    branch_0x802c99a4
    li      r4, 0x0
branch_0x802c99c8:
    cmplwi  r4, 0x0
    beq-    branch_0x802c9a08
    lha     r25, 0x78(r4)
    li      r27, 0x0
    stw     r27, 0x6c(r4)
    slwi    r0, r25, 2
    add     r3, r31, r0
    lwz     r4, -0x5ecc(r13)
    lwz     r0, 0x0(r3)
    and.    r0, r4, r0
    beq-    branch_0x802c9a08
    addi    r3, r25, 0x0
    li      r4, 0x2
    bl      PADControlMotor
    subi    r3, r13, 0x5ed0
    stbx    r27, r3, r25
branch_0x802c9a08:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x4
    addi    r28, r28, 0x4
    blt+    branch_0x802c9958
    stw     r29, -0x5ecc(r13)
    lmw     r25, 0x54(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl setRepeat__Q210JUTGamePad7CButtonFUlUlUl
setRepeat__Q210JUTGamePad7CButtonFUlUlUl: # 0x802c9a30
    li      r0, 0x0
    stw     r0, 0x20(r3)
    stw     r0, 0x1c(r3)
    stw     r4, 0x24(r3)
    stw     r5, 0x28(r3)
    stw     r6, 0x2c(r3)
    blr


.globl setButtonRepeat__10JUTGamePadFUlUlUl
setButtonRepeat__10JUTGamePadFUlUlUl: # 0x802c9a4c
    li      r8, 0x0
    stw     r8, 0x38(r3)
    stw     r8, 0x34(r3)
    stw     r4, 0x3c(r3)
    stw     r5, 0x40(r3)
    stw     r6, 0x44(r3)
    lha     r0, 0x78(r3)
    cmpwi   r0, -0x1
    beqlr-    

    mulli   r7, r0, 0x30
    lis     r3, 0x8040
    addi    r0, r3, 0x4484
    add     r3, r0, r7
    stw     r8, 0x20(r3)
    stw     r8, 0x1c(r3)
    stw     r4, 0x24(r3)
    stw     r5, 0x28(r3)
    stw     r6, 0x2c(r3)
    blr


.globl recalibrate__10JUTGamePadFUl
recalibrate__10JUTGamePadFUl: # 0x802c9a98
    mflr    r0
    lis     r4, 0x803b
    stw     r0, 0x4(sp)
    subi    r5, r4, 0x6140
    stwu    sp, -0x20(sp)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    lwz     r6, -0x5ed8(r13)
    stw     r4, 0xc(sp)
    stw     r0, 0x10(sp)
    lwz     r4, 0x8(r5)
    lwz     r0, 0xc(r5)
    stw     r4, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r4, 0xc(sp)
    and.    r0, r6, r4
    beq-    branch_0x802c9ae8
    xoris   r0, r4, 0xffff
    xori     r0, r0, 0xffff
    and     r3, r3, r0
branch_0x802c9ae8:
    lwz     r4, 0x10(sp)
    and.    r0, r6, r4
    beq-    branch_0x802c9b00
    xoris   r0, r4, 0xffff
    xori     r0, r0, 0xffff
    and     r3, r3, r0
branch_0x802c9b00:
    lwz     r4, 0x14(sp)
    and.    r0, r6, r4
    beq-    branch_0x802c9b18
    xoris   r0, r4, 0xffff
    xori     r0, r0, 0xffff
    and     r3, r3, r0
branch_0x802c9b18:
    lwz     r4, 0x18(sp)
    and.    r0, r6, r4
    beq-    branch_0x802c9b30
    xoris   r0, r4, 0xffff
    xori     r0, r0, 0xffff
    and     r3, r3, r0
branch_0x802c9b30:
    bl      PADRecalibrate
    neg     r3, r3
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r3, r0, 24
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl read__16JUTGamePadRecordFv
read__16JUTGamePadRecordFv: # 0x802c9b54
    lwz     r6, 0x10(r3)
    lwz     r7, 0x0(r3)
    addi    r9, r6, 0x0
    cmplw   r6, r7
    bge-    branch_0x802c9b70
    li      r3, 0x0
    blr

branch_0x802c9b70:
    lwz     r8, 0x4(r3)
    cmplw   r9, r8
    bge-    branch_0x802c9b94
    lwz     r0, 0x18(r3)
    subf    r4, r7, r6
    lwz     r5, 0xc(r3)
    divwu   r0, r4, r0
    cmplw   r5, r0
    bgt-    branch_0x802c9b98
branch_0x802c9b94:
    li      r9, 0x0
branch_0x802c9b98:
    cmplwi  r9, 0x0
    beq-    branch_0x802c9bc4
    lwz     r0, 0x18(r3)
    add     r0, r6, r0
    cmplw   r0, r7
    bge-    branch_0x802c9bb4
    mr      r0, r7
branch_0x802c9bb4:
    cmplw   r0, r8
    ble-    branch_0x802c9bc0
    mr      r0, r8
branch_0x802c9bc0:
    stw     r0, 0x10(r3)
branch_0x802c9bc4:
    lwz     r0, 0x4(r3)
    cmplw   r9, r0
    bge-    branch_0x802c9bf0
    lwz     r5, 0x0(r3)
    lwz     r4, 0x10(r3)
    lwz     r0, 0x18(r3)
    subf    r4, r5, r4
    lwz     r5, 0xc(r3)
    divwu   r0, r4, r0
    cmplw   r5, r0
    bgt-    branch_0x802c9bf8
branch_0x802c9bf0:
    li      r0, 0x1
    stb     r0, 0x14(r3)
branch_0x802c9bf8:
    mr      r3, r9
    blr


.globl write__16JUTGamePadRecordFP9PADStatus
write__16JUTGamePadRecordFP9PADStatus: # 0x802c9c00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r5, 0x10(r3)
    lwz     r0, 0x0(r3)
    cmplw   r5, r0
    blt-    branch_0x802c9ca8
    lwz     r0, 0x4(r31)
    cmplw   r5, r0
    blt-    branch_0x802c9c34
    b       branch_0x802c9ca8

branch_0x802c9c34:
    mr      r3, r31
    bl      padStatusToStreamData__16JUTGamePadRecordFP9PADStatusPUc
    lwz     r3, 0x10(r31)
    lwz     r0, 0x18(r31)
    lwz     r4, 0x0(r31)
    add     r0, r3, r0
    cmplw   r0, r4
    bge-    branch_0x802c9c58
    mr      r0, r4
branch_0x802c9c58:
    lwz     r3, 0x4(r31)
    cmplw   r0, r3
    ble-    branch_0x802c9c68
    mr      r0, r3
branch_0x802c9c68:
    stw     r0, 0x10(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x4(r31)
    cmplw   r3, r0
    blt-    branch_0x802c9c84
    li      r0, 0x1
    stb     r0, 0x14(r31)
branch_0x802c9c84:
    lwz     r4, 0x0(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x18(r31)
    subf    r3, r4, r3
    lwz     r4, 0xc(r31)
    divwu   r0, r3, r0
    cmplw   r4, r0
    bge-    branch_0x802c9ca8
    stw     r0, 0xc(r31)
branch_0x802c9ca8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl streamDataToPadStatus__16JUTGamePadRecordFP9PADStatusPUc
streamDataToPadStatus__16JUTGamePadRecordFP9PADStatusPUc: # 0x802c9cbc
    lbz     r0, 0x15(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802c9cd4
    lhz     r0, 0x0(r5)
    addi    r5, r5, 0x2
    sth     r0, 0x0(r4)
branch_0x802c9cd4:
    lbz     r0, 0x15(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802c9cf4
    lbz     r0, 0x0(r5)
    stb     r0, 0x2(r4)
    lbzu    r0, 0x1(r5)
    stb     r0, 0x3(r4)
    addi    r5, r5, 0x1
branch_0x802c9cf4:
    lbz     r0, 0x15(r3)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x802c9d14
    lbz     r0, 0x0(r5)
    stb     r0, 0x4(r4)
    lbzu    r0, 0x1(r5)
    stb     r0, 0x5(r4)
    addi    r5, r5, 0x1
branch_0x802c9d14:
    lbz     r0, 0x15(r3)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x802c9d34
    lbz     r0, 0x0(r5)
    stb     r0, 0x6(r4)
    lbz     r0, 0x1(r5)
    addi    r5, r5, 0x2
    stb     r0, 0x7(r4)
branch_0x802c9d34:
    lbz     r0, 0x15(r3)
    rlwinm. r0, r0, 0, 27, 27
    beqlr-    

    lbz     r0, 0x0(r5)
    stb     r0, 0x8(r4)
    lbz     r0, 0x1(r5)
    stb     r0, 0x9(r4)
    blr


.globl padStatusToStreamData__16JUTGamePadRecordFP9PADStatusPUc
padStatusToStreamData__16JUTGamePadRecordFP9PADStatusPUc: # 0x802c9d54
    lbz     r0, 0x15(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802c9d6c
    lhz     r0, 0x0(r4)
    sth     r0, 0x0(r5)
    addi    r5, r5, 0x2
branch_0x802c9d6c:
    lbz     r0, 0x15(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802c9d8c
    lbz     r0, 0x2(r4)
    stb     r0, 0x0(r5)
    lbz     r0, 0x3(r4)
    stbu    r0, 0x1(r5)
    addi    r5, r5, 0x1
branch_0x802c9d8c:
    lbz     r0, 0x15(r3)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x802c9dac
    lbz     r0, 0x4(r4)
    stb     r0, 0x0(r5)
    lbz     r0, 0x5(r4)
    stbu    r0, 0x1(r5)
    addi    r5, r5, 0x1
branch_0x802c9dac:
    lbz     r0, 0x15(r3)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x802c9dcc
    lbz     r0, 0x6(r4)
    stb     r0, 0x0(r5)
    lbz     r0, 0x7(r4)
    stb     r0, 0x1(r5)
    addi    r5, r5, 0x2
branch_0x802c9dcc:
    lbz     r0, 0x15(r3)
    rlwinm. r0, r0, 0, 27, 27
    beqlr-    

    lbz     r0, 0x8(r4)
    stb     r0, 0x0(r5)
    lbz     r0, 0x9(r4)
    stb     r0, 0x1(r5)
    blr


.globl __sinit_JUTGamePad_cpp
__sinit_JUTGamePad_cpp: # 0x802c9dec
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    li      r4, 0x0
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x42d8
    addi    r3, r31, 0x0
    bl      __ct__10JSUPtrListFb
    lis     r4, 0x802d
    lis     r3, 0x8040
    subi    r5, r3, 0x2a48
    subi    r4, r4, 0x60c8
    addi    r3, r31, 0x0
    bl      __register_global_object
    lis     r3, 0x8040
    lis     r4, 0x802d
    addi    r3, r3, 0x4484
    subi    r4, r4, 0x6104
    li      r5, 0x0
    li      r6, 0x30
    li      r7, 0x4
    bl      __construct_array
    lis     r4, 0x802d
    lis     r3, 0x8040
    subi    r31, r4, 0x6120
    addi    r3, r3, 0x4544
    addi    r4, r31, 0x0
    li      r5, 0x0
    li      r6, 0x10
    li      r7, 0x4
    bl      __construct_array
    lis     r3, 0x8040
    addi    r3, r3, 0x4584
    addi    r4, r31, 0x0
    li      r5, 0x0
    li      r6, 0x10
    li      r7, 0x4
    bl      __construct_array
    lis     r3, 0x8000
    lwz     r0, 0xf8(r3)
    lis     r3, 0x8889
    subi    r3, r3, 0x7777
    srwi    r0, r0, 2
    mulhwu  r0, r3, r0
    srwi    r6, r0, 5
    li      r0, 0x1e
    li      r5, 0x0
    mullw   r4, r5, r0
    mulhwu  r3, r6, r0
    mullw   r0, r6, r0
    add     r4, r4, r3
    stw     r0, -0x5ebc(r13)
    mullw   r3, r6, r5
    add     r0, r4, r3
    stw     r0, -0x5ec0(r13)
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl __ct__Q210JUTGamePad6CStickFv
__ct__Q210JUTGamePad6CStickFv: # 0x802c9ee0
    lfs     f0, 0xf8(rtoc)
    li      r0, 0x0
    stfs    f0, 0x0(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    sth     r0, 0xc(r3)
    blr


.globl __ct__Q210JUTGamePad7CButtonFv
__ct__Q210JUTGamePad7CButtonFv: # 0x802c9efc
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0x18(r3)
    stb     r0, 0xc(r3)
    stb     r0, 0xd(r3)
    stb     r0, 0xe(r3)
    stb     r0, 0xf(r3)
    stw     r0, 0x1c(r3)
    stw     r0, 0x20(r3)
    stw     r0, 0x24(r3)
    stw     r0, 0x28(r3)
    stw     r0, 0x2c(r3)
    blr


.globl __dt__21JSUList_10JUTGamePad_Fv
__dt__21JSUList_10JUTGamePad_Fv: # 0x802c9f38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802c9f74
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x802c9f74
    mr      r3, r30
    bl      __dl__FPv
branch_0x802c9f74:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr
