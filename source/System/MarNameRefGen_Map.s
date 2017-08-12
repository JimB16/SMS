
.globl getNameRef_Map__14TMarNameRefGenCFPCc
getNameRef_Map__14TMarNameRefGenCFPCc: # 0x802ac998
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    lis     r4, unk_803a5c28@h
    addi    r31, r4, unk_803a5c28@l
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x248
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac9f0
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac9e8
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x244
    bl      __ct__4TMapFPCc
branch_0x802ac9e8:
    mr      r3, r30
    b       branch_0x802accb8

branch_0x802ac9f0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xfc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aca28
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aca20
    addi    r3, r30, 0x0
    addi    r4, r31, 0x108
    bl      __ct__12TMapDrawWallFPCc
branch_0x802aca20:
    mr      r3, r30
    b       branch_0x802accb8

branch_0x802aca28:
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x23c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aca60
    li      r3, 0x50
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aca58
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x238
    bl      __ct__4TSkyFPCc
branch_0x802aca58:
    mr      r3, r30
    b       branch_0x802accb8

branch_0x802aca60:
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x234
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aca98
    li      r3, 0x80
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aca90
    addi    r3, r30, 0x0
    addi    r4, r31, 0x11c
    bl      __ct__8TShimmerFPCc
branch_0x802aca90:
    mr      r3, r30
    b       branch_0x802accb8

branch_0x802aca98:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x128
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802acad0
    li      r3, 0x210
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802acac8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x134
    bl      __ct__17TPollutionManagerFPCc
branch_0x802acac8:
    mr      r3, r30
    b       branch_0x802accb8

branch_0x802acad0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x140
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802acb34
    li      r3, 0x10
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802acb2c
    stw     r30, 0x14(sp)
    addi    r4, r31, 0x150
    lwz     r3, 0x14(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x14(sp)
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, __vvt__14TPollutionTest@h
    addi    r0, r3, __vvt__14TPollutionTest@l
    stw     r0, 0x0(r30)
branch_0x802acb2c:
    mr      r3, r30
    b       branch_0x802accb8

branch_0x802acb34:
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x22c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802acb6c
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802acb64
    addi    r3, r30, 0x0
    addi    r4, r31, 0x160
    bl      __ct__7TSunMgrFPCc
branch_0x802acb64:
    mr      r3, r30
    b       branch_0x802accb8

branch_0x802acb6c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x16c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802acba8
    li      r3, 0x1b0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802acba0
    addi    r3, r30, 0x0
    addi    r5, r31, 0x178
    li      r4, 0x0
    bl      __ct__9TSunModelFbPCc
branch_0x802acba0:
    mr      r3, r30
    b       branch_0x802accb8

branch_0x802acba8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x184
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802acbe4
    li      r3, 0x1b0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802acbdc
    addi    r3, r30, 0x0
    addi    r5, r31, 0x178
    li      r4, 0x1
    bl      __ct__9TSunModelFbPCc
branch_0x802acbdc:
    mr      r3, r30
    b       branch_0x802accb8

branch_0x802acbe4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x190
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802acc1c
    li      r3, 0x44
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802acc14
    addi    r3, r30, 0x0
    addi    r4, r31, 0x190
    bl      __ct__11TMarineSnowFPCc
branch_0x802acc14:
    mr      r3, r30
    b       branch_0x802accb8

branch_0x802acc1c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x19c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802acc80
    li      r3, 0x10
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802acc78
    stw     r30, 0x10(sp)
    addi    r4, r31, 0x1a8
    lwz     r3, 0x10(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x10(sp)
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, __vvt__19TStickyStainManager@h
    addi    r0, r3, __vvt__19TStickyStainManager@l
    stw     r0, 0x0(r30)
branch_0x802acc78:
    mr      r3, r30
    b       branch_0x802accb8

branch_0x802acc80:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1b4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802accb4
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802accac
    mr      r3, r30
    bl      __ct__17TBathWaterManagerFv
branch_0x802accac:
    mr      r3, r30
    b       branch_0x802accb8

branch_0x802accb4:
    li      r3, 0x0
branch_0x802accb8:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr

