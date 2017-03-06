
.globl __ct__9THitActorFPCc
__ct__9THitActorFPCc: # 0x80223e74
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
    lfs     f1, -0x1830(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80223f90
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
    lis     r3, 0x803e
    stw     r0, 0x20(r31)
    subi    r4, r3, 0x5b10
    addi    r0, r4, 0x24
    lfs     f0, -0x182c(rtoc)
    mr      r3, r31
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    lfs     f0, -0x1830(rtoc)
    stfs    f0, 0x30(r31)
    stfs    f0, 0x34(r31)
    stfs    f0, 0x38(r31)
    stw     r5, 0x3c(r31)
    stw     r5, 0x40(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    stw     r5, 0x44(r31)
    sth     r5, 0x48(r31)
    sth     r5, 0x4a(r31)
    stw     r5, 0x4c(r31)
    stfs    f0, 0x50(r31)
    stfs    f0, 0x54(r31)
    stfs    f0, 0x58(r31)
    stfs    f0, 0x5c(r31)
    stfs    f0, 0x60(r31)
    stw     r5, 0x64(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_80223f90
set_f___Q29JGeometry8TVec3_f_Ffff_80223f90: # 0x80223f90
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl initHitActor__9THitActorFUlUsiffff
initHitActor__9THitActorFUlUsiffff: # 0x80223fa0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    fmr     f31, f4
    stfd    f30, 0x40(sp)
    fmr     f30, f3
    stfd    f29, 0x38(sp)
    fmr     f29, f2
    stfd    f28, 0x30(sp)
    fmr     f28, f1
    stw     r31, 0x2c(sp)
    mr      r31, r6
    stw     r30, 0x28(sp)
    mr      r30, r3
    stw     r4, 0x4c(r3)
    sth     r5, 0x4a(r3)
    lhz     r0, 0x4a(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    li      r4, 0x0
    stw     r3, 0x44(r30)
    addi    r5, r4, 0x0
    li      r6, 0x0
    b       branch_0x80224014

branch_0x80224004:
    lwz     r3, 0x44(r30)
    addi    r6, r6, 0x1
    stwx    r5, r3, r4
    addi    r4, r4, 0x4
branch_0x80224014:
    lhz     r0, 0x4a(r30)
    cmpw    r6, r0
    blt+    branch_0x80224004
    lwz     r0, 0x64(r30)
    addi    r3, r30, 0x0
    or      r0, r0, r31
    stw     r0, 0x64(r30)
    stfs    f28, 0x50(r30)
    stfs    f29, 0x54(r30)
    stfs    f30, 0x58(r30)
    stfs    f31, 0x5c(r30)
    bl      calcEntryRadius__9THitActorFv
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lfd     f30, 0x40(sp)
    mtlr    r0
    lfd     f29, 0x38(sp)
    lfd     f28, 0x30(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x50
    blr


.globl perform__9THitActorFUlPQ26JDrama9TGraphics
perform__9THitActorFUlPQ26JDrama9TGraphics: # 0x8022406c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      perform__Q26JDrama6TActorFUlPQ26JDrama9TGraphics
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl calcEntryRadius__9THitActorFv
calcEntryRadius__9THitActorFv: # 0x8022408c
    stwu    sp, -0x40(sp)
    lfs     f0, 0x50(r3)
    lfs     f1, 0x58(r3)
    fcmpo   cr0, f0, f1
    ble-    branch_0x802240a8
    fmr     f2, f0
    b       branch_0x802240ac

branch_0x802240a8:
    fmr     f2, f1
branch_0x802240ac:
    lfs     f0, 0x54(r3)
    lfs     f1, 0x5c(r3)
    fcmpo   cr0, f0, f1
    ble-    branch_0x802240c0
    b       branch_0x802240c4

branch_0x802240c0:
    fmr     f0, f1
branch_0x802240c4:
    fmuls   f1, f0, f0
    lfs     f0, -0x1830(rtoc)
    fmadds  f2, f2, f2, f1
    fcmpo   cr0, f2, f0
    ble-    branch_0x802240fc
    frsqrte f1, f2
    lfs     f0, -0x1828(rtoc)
    fmul    f1, f2, f1
    frsp    f1, f1
    stfs    f1, 0x30(sp)
    lfs     f1, 0x30(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x60(r3)
    b       branch_0x80224100

branch_0x802240fc:
    stfs    f0, 0x60(r3)
branch_0x80224100:
    addi    sp, sp, 0x40
    blr


.globl _32___dt__9THitActorFv
_32___dt__9THitActorFv: # 0x80224108
    subi    r3, r3, 0x20
    b       __dt__9THitActorFv

