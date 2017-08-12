
.globl SMSSetupMovieRenderingInfo__FPQ26JDrama8TDisplay
SMSSetupMovieRenderingInfo__FPQ26JDrama8TDisplay: # 0x802a4f00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    li      r30, 0x0
    stw     r29, 0x1c(sp)
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    addi    r31, r28, 0x10
    bl      VIGetTvFormat
    cmplwi  r3, 0x0
    bne-    branch_0x802a4f44
    bl      OSGetProgressiveMode
    cmplwi  r3, 0x1
    bne-    branch_0x802a4f44
    li      r30, 0x1
branch_0x802a4f44:
    clrlwi. r0, r30, 24
    beq-    branch_0x802a4f54
    li      r29, 0x2
    b       branch_0x802a4f58

branch_0x802a4f54:
    li      r29, 0x0
branch_0x802a4f58:
    bl      VIGetTvFormat
    slwi    r0, r3, 2
    add     r0, r29, r0
    stw     r0, 0x0(r31)
    bl      SMSGetGameRenderWidth__Fv
    sth     r3, 0x4(r31)
    bl      SMSGetGameRenderHeight__Fv
    sth     r3, 0x6(r31)
    bl      SMSGetGameVideoWidth__Fv
    clrlwi. r0, r30, 24
    sth     r3, 0xe(r31)
    beq-    branch_0x802a4f90
    li      r0, 0x0
    b       branch_0x802a4f94

branch_0x802a4f90:
    li      r0, 0x1
branch_0x802a4f94:
    stw     r0, 0x14(r31)
    li      r0, 0x0
    stb     r0, 0x18(r31)
    stb     r0, 0x19(r31)
    bl      SMSGetGameVideoHeight__Fv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    bl      CalcRenderModeXFBHeight__6JDramaFP16_GXRenderModeObjUs
    mr      r3, r31
    bl      CalcRenderModeVIXOrigin__6JDramaFP16_GXRenderModeObj
    mr      r3, r31
    bl      CalcRenderModeVIYOrigin__6JDramaFP16_GXRenderModeObj
    lis     r3, SMSAASamplePattern_non@ha
    addi    r4, r3, SMSAASamplePattern_non@l
    addi    r3, r31, 0x0
    bl      CopyRenderModeSamplePattern__6JDramaFP16_GXRenderModeObjPA2_CUc
    lis     r3, SMSVFilter_non@ha
    addi    r4, r3, SMSVFilter_non@l
    addi    r3, r31, 0x0
    bl      CopyRenderModeVFilter__6JDramaFP16_GXRenderModeObjPCUc
    lhz     r0, 0x64(r28)
    rlwinm  r0, r0, 0, 29, 27
    sth     r0, 0x64(r28)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl SMSSetupGameRenderingInfo__FPQ26JDrama8TDisplayb
SMSSetupGameRenderingInfo__FPQ26JDrama8TDisplayb: # 0x802a5010
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r26, 0x20(sp)
    addi    r26, r3, 0x0
    lis     r3, unk_803df2f0@ha
    addi    r31, r26, 0x10
    addi    r30, r4, 0x0
    addi    r29, r3, unk_803df2f0@l
    li      r28, 0x0
    bl      VIGetTvFormat
    cmplwi  r3, 0x0
    bne-    branch_0x802a5054
    bl      OSGetProgressiveMode
    cmplwi  r3, 0x1
    bne-    branch_0x802a5054
    li      r28, 0x1
branch_0x802a5054:
    clrlwi. r0, r28, 24
    beq-    branch_0x802a5064
    li      r27, 0x2
    b       branch_0x802a5068

branch_0x802a5064:
    li      r27, 0x0
branch_0x802a5068:
    bl      VIGetTvFormat
    slwi    r0, r3, 2
    add     r0, r27, r0
    stw     r0, 0x0(r31)
    clrlwi. r0, r30, 24
    lhz     r0, 0x64(r26)
    ori     r0, r0, 0x8
    sth     r0, 0x64(r26)
    beq-    branch_0x802a50a0
    li      r0, 0x0
    stw     r0, 0x14(r31)
    li      r0, 0x1
    stb     r0, 0x18(r31)
    b       branch_0x802a50c0

branch_0x802a50a0:
    clrlwi. r0, r28, 24
    beq-    branch_0x802a50b0
    li      r0, 0x0
    b       branch_0x802a50b4

branch_0x802a50b0:
    li      r0, 0x1
branch_0x802a50b4:
    stw     r0, 0x14(r31)
    li      r0, 0x0
    stb     r0, 0x18(r31)
branch_0x802a50c0:
    bl      SMSGetGameRenderWidth__Fv
    sth     r3, 0x4(r31)
    bl      SMSGetGameRenderHeight__Fv
    sth     r3, 0x6(r31)
    bl      SMSGetGameVideoWidth__Fv
    sth     r3, 0xe(r31)
    bl      SMSGetGameVideoHeight__Fv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    bl      CalcRenderModeXFBHeight__6JDramaFP16_GXRenderModeObjUs
    mr      r3, r31
    bl      CalcRenderModeVIXOrigin__6JDramaFP16_GXRenderModeObj
    mr      r3, r31
    bl      CalcRenderModeVIYOrigin__6JDramaFP16_GXRenderModeObj
    clrlwi. r0, r30, 24
    bne-    branch_0x802a5108
    clrlwi. r0, r28, 24
    beq-    branch_0x802a5118
branch_0x802a5108:
    addi    r3, r31, 0x0
    addi    r4, r29, 0x58
    bl      CopyRenderModeVFilter__6JDramaFP16_GXRenderModeObjPCUc
    b       branch_0x802a5124

branch_0x802a5118:
    addi    r3, r31, 0x0
    addi    r4, r29, 0x60
    bl      CopyRenderModeVFilter__6JDramaFP16_GXRenderModeObjPCUc
branch_0x802a5124:
    li      r0, 0x0
    stb     r0, 0x19(r31)
    addi    r3, r31, 0x0
    addi    r4, r29, 0x28
    bl      CopyRenderModeSamplePattern__6JDramaFP16_GXRenderModeObjPA2_CUc
    lmw     r26, 0x20(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl SMSSetupTitleRenderingInfo__FPQ26JDrama8TDisplay
SMSSetupTitleRenderingInfo__FPQ26JDrama8TDisplay: # 0x802a514c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r27, r3, 0x0
    lis     r3, unk_803df2f0@ha
    addi    r30, r27, 0x10
    addi    r31, r3, unk_803df2f0@l
    li      r29, 0x0
    bl      VIGetTvFormat
    cmplwi  r3, 0x0
    bne-    branch_0x802a518c
    bl      OSGetProgressiveMode
    cmplwi  r3, 0x1
    bne-    branch_0x802a518c
    li      r29, 0x1
branch_0x802a518c:
    clrlwi. r0, r29, 24
    beq-    branch_0x802a519c
    li      r28, 0x2
    b       branch_0x802a51a0

branch_0x802a519c:
    li      r28, 0x0
branch_0x802a51a0:
    bl      VIGetTvFormat
    slwi    r0, r3, 2
    add     r0, r28, r0
    stw     r0, 0x0(r30)
    bl      SMSGetTitleRenderWidth__Fv
    sth     r3, 0x4(r30)
    bl      SMSGetTitleRenderHeight__Fv
    sth     r3, 0x6(r30)
    bl      SMSGetTitleVideoWidth__Fv
    clrlwi. r0, r29, 24
    sth     r3, 0xe(r30)
    beq-    branch_0x802a51d8
    li      r0, 0x0
    b       branch_0x802a51dc

branch_0x802a51d8:
    li      r0, 0x1
branch_0x802a51dc:
    stw     r0, 0x14(r30)
    li      r0, 0x0
    stb     r0, 0x18(r30)
    stb     r0, 0x19(r30)
    bl      SMSGetTitleVideoHeight__Fv
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    bl      CalcRenderModeXFBHeight__6JDramaFP16_GXRenderModeObjUs
    mr      r3, r30
    bl      CalcRenderModeVIXOrigin__6JDramaFP16_GXRenderModeObj
    mr      r3, r30
    bl      CalcRenderModeVIYOrigin__6JDramaFP16_GXRenderModeObj
    addi    r3, r30, 0x0
    addi    r4, r31, 0x28
    bl      CopyRenderModeSamplePattern__6JDramaFP16_GXRenderModeObjPA2_CUc
    clrlwi. r0, r29, 24
    beq-    branch_0x802a5228
    addi    r4, r31, 0x58
    b       branch_0x802a522c

branch_0x802a5228:
    addi    r4, r31, 0x60
branch_0x802a522c:
    mr      r3, r30
    bl      CopyRenderModeVFilter__6JDramaFP16_GXRenderModeObjPCUc
    lhz     r0, 0x64(r27)
    rlwinm  r0, r0, 0, 29, 27
    sth     r0, 0x64(r27)
    lwz     r0, 0x34(sp)
    lmw     r27, 0x1c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl SMSSetupTitleRenderMode__FP16_GXRenderModeObj
SMSSetupTitleRenderMode__FP16_GXRenderModeObj: # 0x802a5254
    mflr    r0
    lis     r4, unk_803df2f0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, unk_803df2f0@l
    stw     r30, 0x18(sp)
    li      r30, 0x0
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    bl      VIGetTvFormat
    cmplwi  r3, 0x0
    bne-    branch_0x802a529c
    bl      OSGetProgressiveMode
    cmplwi  r3, 0x1
    bne-    branch_0x802a529c
    li      r30, 0x1
branch_0x802a529c:
    clrlwi. r0, r30, 24
    beq-    branch_0x802a52ac
    li      r29, 0x2
    b       branch_0x802a52b0

branch_0x802a52ac:
    li      r29, 0x0
branch_0x802a52b0:
    bl      VIGetTvFormat
    slwi    r0, r3, 2
    add     r0, r29, r0
    stw     r0, 0x0(r28)
    bl      SMSGetTitleRenderWidth__Fv
    sth     r3, 0x4(r28)
    bl      SMSGetTitleRenderHeight__Fv
    sth     r3, 0x6(r28)
    bl      SMSGetTitleVideoWidth__Fv
    clrlwi. r0, r30, 24
    sth     r3, 0xe(r28)
    beq-    branch_0x802a52e8
    li      r0, 0x0
    b       branch_0x802a52ec

branch_0x802a52e8:
    li      r0, 0x1
branch_0x802a52ec:
    stw     r0, 0x14(r28)
    li      r0, 0x0
    stb     r0, 0x18(r28)
    stb     r0, 0x19(r28)
    bl      SMSGetTitleVideoHeight__Fv
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    bl      CalcRenderModeXFBHeight__6JDramaFP16_GXRenderModeObjUs
    mr      r3, r28
    bl      CalcRenderModeVIXOrigin__6JDramaFP16_GXRenderModeObj
    mr      r3, r28
    bl      CalcRenderModeVIYOrigin__6JDramaFP16_GXRenderModeObj
    addi    r3, r28, 0x0
    addi    r4, r31, 0x28
    bl      CopyRenderModeSamplePattern__6JDramaFP16_GXRenderModeObjPA2_CUc
    clrlwi. r0, r30, 24
    beq-    branch_0x802a5338
    addi    r4, r31, 0x58
    b       branch_0x802a533c

branch_0x802a5338:
    addi    r4, r31, 0x60
branch_0x802a533c:
    mr      r3, r28
    bl      CopyRenderModeVFilter__6JDramaFP16_GXRenderModeObjPCUc
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl SMSSetupGCLogoRenderingInfo__FPQ26JDrama8TDisplay
SMSSetupGCLogoRenderingInfo__FPQ26JDrama8TDisplay: # 0x802a5364
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    addi    r31, r30, 0x10
    bl      VIGetTvFormat
    slwi    r0, r3, 2
    stw     r0, 0x0(r31)
    bl      SMSGetGCLogoRenderWidth__Fv
    sth     r3, 0x4(r31)
    bl      SMSGetGCLogoRenderHeight__Fv
    sth     r3, 0x6(r31)
    bl      SMSGetGCLogoVideoWidth__Fv
    sth     r3, 0xe(r31)
    li      r3, 0x1
    li      r0, 0x0
    stw     r3, 0x14(r31)
    stb     r0, 0x18(r31)
    stb     r0, 0x19(r31)
    bl      SMSGetGCLogoVideoHeight__Fv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    bl      CalcRenderModeXFBHeight__6JDramaFP16_GXRenderModeObjUs
    mr      r3, r31
    bl      CalcRenderModeVIXOrigin__6JDramaFP16_GXRenderModeObj
    mr      r3, r31
    bl      CalcRenderModeVIYOrigin__6JDramaFP16_GXRenderModeObj
    lis     r3, SMSAASamplePattern_non@ha
    addi    r4, r3, SMSAASamplePattern_non@l
    addi    r3, r31, 0x0
    bl      CopyRenderModeSamplePattern__6JDramaFP16_GXRenderModeObjPA2_CUc
    lis     r3, SMSVFilter_flicker@ha
    addi    r4, r3, SMSVFilter_flicker@l
    addi    r3, r31, 0x0
    bl      CopyRenderModeVFilter__6JDramaFP16_GXRenderModeObjPCUc
    lhz     r0, 0x64(r30)
    rlwinm  r0, r0, 0, 29, 27
    sth     r0, 0x64(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl SMSGetRederRect_Game__Fv
SMSGetRederRect_Game__Fv: # 0x802a541c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r31, r3, 16
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r6, r3, 16
    addi    r3, r30, 0x0
    addi    r7, r31, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      set__7JUTRectFiiii
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

