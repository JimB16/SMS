
.globl SMSGetGCLogoVideoHeight__Fv
SMSGetGCLogoVideoHeight__Fv: # 0x802a8b80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      SMSGetGameVideoHeight__Fv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl SMSGetGCLogoVideoWidth__Fv
SMSGetGCLogoVideoWidth__Fv: # 0x802a8ba0
    li      r3, 0x280
    blr


.globl SMSGetGCLogoRenderHeight__Fv
SMSGetGCLogoRenderHeight__Fv: # 0x802a8ba8
    li      r3, 0x1c0
    blr


.globl SMSGetGCLogoRenderWidth__Fv
SMSGetGCLogoRenderWidth__Fv: # 0x802a8bb0
    li      r3, 0x280
    blr


.globl SMSGetTitleRenderHeight__Fv
SMSGetTitleRenderHeight__Fv: # 0x802a8bb8
    li      r3, 0x1c0
    blr


.globl SMSGetTitleRenderWidth__Fv
SMSGetTitleRenderWidth__Fv: # 0x802a8bc0
    li      r3, 0x280
    blr


.globl SMSGetGameRenderHeight__Fv
SMSGetGameRenderHeight__Fv: # 0x802a8bc8
    li      r3, 0x1c0
    blr


.globl SMSGetGameRenderWidth__Fv
SMSGetGameRenderWidth__Fv: # 0x802a8bd0
    li      r3, 0x280
    blr


.globl SMSGetTitleVideoHeight__Fv
SMSGetTitleVideoHeight__Fv: # 0x802a8bd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    li      r31, 0x1c0
    bl      VIGetTvFormat
    cmpwi   r3, 0x2
    beq-    branch_0x802a8c18
    bge-    branch_0x802a8c0c
    cmpwi   r3, 0x0
    beq-    branch_0x802a8c18
    bge-    branch_0x802a8c20
    b       branch_0x802a8c24

branch_0x802a8c0c:
    cmpwi   r3, 0x5
    beq-    branch_0x802a8c18
    b       branch_0x802a8c24

branch_0x802a8c18:
    li      r31, 0x1c0
    b       branch_0x802a8c24

branch_0x802a8c20:
    li      r31, 0x212
branch_0x802a8c24:
    lwz     r0, 0x14(sp)
    mr      r3, r31
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl SMSGetTitleVideoWidth__Fv
SMSGetTitleVideoWidth__Fv: # 0x802a8c3c
    li      r3, 0x294
    blr


.globl SMSGetGameVideoHeight__Fv
SMSGetGameVideoHeight__Fv: # 0x802a8c44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    li      r31, 0x1c0
    bl      VIGetTvFormat
    cmpwi   r3, 0x2
    beq-    branch_0x802a8c84
    bge-    branch_0x802a8c78
    cmpwi   r3, 0x0
    beq-    branch_0x802a8c84
    bge-    branch_0x802a8c8c
    b       branch_0x802a8c90

branch_0x802a8c78:
    cmpwi   r3, 0x5
    beq-    branch_0x802a8c84
    b       branch_0x802a8c90

branch_0x802a8c84:
    li      r31, 0x1c0
    b       branch_0x802a8c90

branch_0x802a8c8c:
    li      r31, 0x212
branch_0x802a8c90:
    lwz     r0, 0x14(sp)
    mr      r3, r31
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl SMSGetGameVideoWidth__Fv
SMSGetGameVideoWidth__Fv: # 0x802a8ca8
    li      r3, 0x294
    blr

