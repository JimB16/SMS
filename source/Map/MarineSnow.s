
.globl __dt__11TMarineSnowFv
__dt__11TMarineSnowFv: # 0x801a2e0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801a2e5c
    lis     r3, 0x803c
    addi    r3, r3, 0x2358
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
    extsh.  r0, r31
    ble-    branch_0x801a2e5c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801a2e5c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__11TMarineSnowFUlPQ26JDrama9TGraphics
perform__11TMarineSnowFUlPQ26JDrama9TGraphics: # 0x801a2e78
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x8(sp)
    beq-    branch_0x801a2ec4
    lwz     r4, -0x7118(r13)
    addi    r7, r3, 0x0
    addi    r5, r3, 0x10
    addi    r8, r4, 0x124
    lfs     f0, 0x124(r4)
    li      r4, 0x14b
    li      r6, 0x1
    stfs    f0, 0x10(r3)
    lfs     f0, 0x4(r8)
    stfs    f0, 0x14(r3)
    lfs     f0, 0x8(r8)
    stfs    f0, 0x18(r3)
    lwz     r3, -0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x801a2ec4:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadAfter__11TMarineSnowFv
loadAfter__11TMarineSnowFv: # 0x801a2ed4
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    subi    r3, r3, 0x2f98
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x14b
    lbz     r0, 0x14b(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801a2f18
    lis     r4, 0x8039
    lwz     r3, -0x5fe0(r13)
    subi    r4, r4, 0x5be8
    li      r5, 0x14b
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x801a2f18:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__11TMarineSnowFPCc
__ct__11TMarineSnowFPCc: # 0x801a2f2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    stw     r31, 0x10(sp)
    stw     r31, 0x14(sp)
    lwz     r3, 0x10(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x10(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lwz     r30, 0x14(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x2140
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x10
    lfs     f1, -0x40c8(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801a3020
    li      r5, 0x0
    lis     r3, 0x803e
    sth     r5, 0x1c(r30)
    addi    r0, r3, 0x4718
    lis     r3, 0x803e
    stw     r0, 0x20(r31)
    addi    r0, r3, 0x4650
    lis     r3, 0x803e
    stw     r0, 0x20(r31)
    addi    r3, r3, 0x1920
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803c
    stw     r0, 0x20(r31)
    addi    r4, r3, 0x2358
    addi    r0, r4, 0x24
    lfs     f0, -0x40c4(rtoc)
    mr      r3, r31
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    lfs     f0, -0x40c8(rtoc)
    stfs    f0, 0x30(r31)
    stfs    f0, 0x34(r31)
    stfs    f0, 0x38(r31)
    stw     r5, 0x3c(r31)
    stw     r5, 0x40(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_801a3020
set_f___Q29JGeometry8TVec3_f_Ffff_801a3020: # 0x801a3020
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl _32___dt__11TMarineSnowFv
_32___dt__11TMarineSnowFv: # 0x801a3030
    subi    r3, r3, 0x20
    b       __dt__11TMarineSnowFv
