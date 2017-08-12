
.globl __dt__12TMovieRumbleFv
__dt__12TMovieRumbleFv: # 0x80187ac4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80187b1c
    lis     r3, __vvt__12TMovieRumble@h
    addi    r0, r3, __vvt__12TMovieRumble@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80187b0c
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80187b0c:
    extsh.  r0, r31
    ble-    branch_0x80187b1c
    mr      r3, r30
    bl      __dl__FPv
branch_0x80187b1c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl checkRumbleOff__12TMovieRumbleFv
checkRumbleOff__12TMovieRumbleFv: # 0x80187b38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    lwz     r0, 0x24(r3)
    cmpwi   r0, -0x1
    beq-    branch_0x80187c28
    lwz     r3, 0x10(r31)
    lwz     r4, 0x20(r31)
    lwz     r0, 0x20(r3)
    cmpw    r4, r0
    bgt-    branch_0x80187c28
    lwz     r3, R13Off_m0x60f0(r13)
    bl      stop__9RumbleMgrFv
    lwz     r3, 0x18(r31)
    li      r4, 0x0
    addi    r0, r3, 0x1
    stw     r0, 0x18(r31)
    lwz     r3, 0x14(r31)
    lwz     r29, 0x18(r31)
    cmplwi  r3, 0x0
    addi    r30, r3, 0x0
    beq-    branch_0x80187bac
    cmpwi   r29, 0x0
    blt-    branch_0x80187bac
    li      r4, 0x1
branch_0x80187bac:
    clrlwi. r0, r4, 24
    beq-    branch_0x80187c18
    lwz     r3, 0x4(r3)
    lwz     r0, 0x0(r3)
    cmpw    r29, r0
    bge-    branch_0x80187c18
    lis     r3, unk_80388bcc@ha
    addi    r5, r3, unk_80388bcc@l
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    addi    r6, r31, 0x1c
    bl      GetValue__Q24Koga8ToolDataCFiPCcRl
    lis     r3, unk_80388bd8@ha
    addi    r5, r3, unk_80388bd8@l
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    addi    r6, r31, 0x20
    bl      GetValue__Q24Koga8ToolDataCFiPCcRl
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    addi    r6, sp, 0x2c
    addi    r5, r2, R2Off_m0x4478
    bl      GetValue__Q24Koga8ToolDataCFiPCcRPCc
    lwz     r3, 0x2c(sp)
    bl      getIndex__10RumbleTypeFPc
    stw     r3, 0x24(r31)
    b       branch_0x80187c20

branch_0x80187c18:
    li      r0, -0x1
    stw     r0, 0x24(r31)
branch_0x80187c20:
    li      r0, 0x0
    stb     r0, 0x28(r31)
branch_0x80187c28:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    blr


.globl perform__12TMovieRumbleFUlPQ26JDrama9TGraphics
perform__12TMovieRumbleFUlPQ26JDrama9TGraphics: # 0x80187c44
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    beq-    branch_0x80187cb0
    lbz     r0, 0x28(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80187c78
    mr      r3, r31
    bl      checkRumbleOff__12TMovieRumbleFv
    b       branch_0x80187cb0

branch_0x80187c78:
    lwz     r4, 0x24(r31)
    cmpwi   r4, -0x1
    beq-    branch_0x80187cb0
    lwz     r3, 0x10(r31)
    lwz     r5, 0x1c(r31)
    lwz     r0, 0x20(r3)
    cmpw    r5, r0
    bgt-    branch_0x80187cb0
    lwz     r3, R13Off_m0x60f0(r13)
    li      r5, -0x1
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    li      r0, 0x1
    stb     r0, 0x28(r31)
branch_0x80187cb0:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl init__12TMovieRumbleFPCc
init__12TMovieRumbleFPCc: # 0x80187cc4
    mflr    r0
    lis     r5, unk_80388b98@ha
    stw     r0, 0x4(sp)
    crxor   6, 6, 6
    stwu    sp, -0xc0(sp)
    stw     r31, 0xbc(sp)
    addi    r31, r3, 0x0
    addi    r3, sp, 0x30
    stw     r30, 0xb8(sp)
    addi    r30, r5, unk_80388b98@l
    addi    r5, r4, 0x0
    stw     r29, 0xb4(sp)
    addi    r4, r30, 0x20
    stw     r28, 0xb0(sp)
    bl      sprintf
    addi    r3, sp, 0x30
    li      r4, 0x2e
    bl      strrchr
    addi    r4, r2, R2Off_m0x4480
    bl      strcpy
    li      r3, 0x8
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80187d2c
    mr      r3, r28
    bl      __ct__Q24Koga8ToolDataFv
branch_0x80187d2c:
    stw     r28, 0x14(r31)
    addi    r3, sp, 0x30
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r0, r3
    lwz     r3, 0x14(r31)
    mr      r4, r0
    bl      Attach__Q24Koga8ToolDataFPCv
    lwz     r3, 0x14(r31)
    lwz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80187d64
    li      r0, -0x1
    stw     r0, 0x18(r31)
    b       branch_0x80187d6c

branch_0x80187d64:
    li      r0, 0x0
    stw     r0, 0x18(r31)
branch_0x80187d6c:
    lwz     r3, 0x14(r31)
    li      r0, 0x0
    lwz     r28, 0x18(r31)
    cmplwi  r3, 0x0
    addi    r29, r3, 0x0
    beq-    branch_0x80187d90
    cmpwi   r28, 0x0
    blt-    branch_0x80187d90
    li      r0, 0x1
branch_0x80187d90:
    clrlwi. r0, r0, 24
    beq-    branch_0x80187df4
    lwz     r3, 0x4(r3)
    lwz     r0, 0x0(r3)
    cmpw    r28, r0
    bge-    branch_0x80187df4
    addi    r3, r29, 0x0
    addi    r4, r28, 0x0
    addi    r5, r30, 0x34
    addi    r6, r31, 0x1c
    bl      GetValue__Q24Koga8ToolDataCFiPCcRl
    addi    r3, r29, 0x0
    addi    r4, r28, 0x0
    addi    r5, r30, 0x40
    addi    r6, r31, 0x20
    bl      GetValue__Q24Koga8ToolDataCFiPCcRl
    addi    r3, r29, 0x0
    addi    r4, r28, 0x0
    addi    r6, sp, 0x28
    addi    r5, r2, R2Off_m0x4478
    bl      GetValue__Q24Koga8ToolDataCFiPCcRPCc
    lwz     r3, 0x28(sp)
    bl      getIndex__10RumbleTypeFPc
    stw     r3, 0x24(r31)
    b       branch_0x80187dfc

branch_0x80187df4:
    li      r0, -0x1
    stw     r0, 0x24(r31)
branch_0x80187dfc:
    li      r0, 0x0
    stb     r0, 0x28(r31)
    lwz     r0, 0xc4(sp)
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    mtlr    r0
    lwz     r29, 0xb4(sp)
    lwz     r28, 0xb0(sp)
    addi    sp, sp, 0xc0
    blr


.globl __ct__12TMovieRumbleFPC10TTHPRender
__ct__12TMovieRumbleFPC10TTHPRender: # 0x80187e24
    mflr    r0
    lis     r5, __vvt__Q26JDrama8TNameRef@h
    stw     r0, 0x4(sp)
    addi    r0, r5, __vvt__Q26JDrama8TNameRef@l
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r4
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    lis     r3, unk_80388be4@ha
    stw     r0, 0x0(r30)
    addi    r3, r3, unk_80388be4@l
    stw     r3, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r30)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    li      r0, 0x0
    lis     r3, __vvt__12TMovieRumble@h
    sth     r0, 0xc(r30)
    addi    r0, r3, __vvt__12TMovieRumble@l
    addi    r3, r30, 0x0
    stw     r0, 0x0(r30)
    stw     r31, 0x10(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

