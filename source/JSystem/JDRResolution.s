
.globl GetVIWidthMax__6JDramaFv
GetVIWidthMax__6JDramaFv: # 0x802fbba0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      VIGetTvFormat
    cmpwi   r3, 0x2
    beq-    branch_0x802fbbe0
    bge-    branch_0x802fbbcc
    cmpwi   r3, 0x0
    beq-    branch_0x802fbbf0
    bge-    branch_0x802fbbd8
    b       branch_0x802fbbf0

branch_0x802fbbcc:
    cmpwi   r3, 0x5
    beq-    branch_0x802fbbe8
    b       branch_0x802fbbf0

branch_0x802fbbd8:
    li      r3, 0x2d0
    b       branch_0x802fbbf4

branch_0x802fbbe0:
    li      r3, 0x2d0
    b       branch_0x802fbbf4

branch_0x802fbbe8:
    li      r3, 0x2d0
    b       branch_0x802fbbf4

branch_0x802fbbf0:
    li      r3, 0x2d0
branch_0x802fbbf4:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl GetVIHeightMax__6JDramaFv
GetVIHeightMax__6JDramaFv: # 0x802fbc04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      VIGetTvFormat
    cmpwi   r3, 0x2
    beq-    branch_0x802fbc44
    bge-    branch_0x802fbc30
    cmpwi   r3, 0x0
    beq-    branch_0x802fbc54
    bge-    branch_0x802fbc3c
    b       branch_0x802fbc54

branch_0x802fbc30:
    cmpwi   r3, 0x5
    beq-    branch_0x802fbc4c
    b       branch_0x802fbc54

branch_0x802fbc3c:
    li      r3, 0x23e
    b       branch_0x802fbc58

branch_0x802fbc44:
    li      r3, 0x1e0
    b       branch_0x802fbc58

branch_0x802fbc4c:
    li      r3, 0x1e0
    b       branch_0x802fbc58

branch_0x802fbc54:
    li      r3, 0x1e0
branch_0x802fbc58:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

