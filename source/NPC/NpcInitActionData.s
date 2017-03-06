
.globl setKinoActionFlag___8TBaseNPCFv
setKinoActionFlag___8TBaseNPCFv: # 0x8021614c
    lwz     r0, 0x16c(r3)
    cmpwi   r0, 0xf
    ble-    branch_0x80216160
    li      r0, 0x0
    stw     r0, 0x16c(r3)
branch_0x80216160:
    lwz     r5, 0x16c(r3)
    lis     r4, 0x803a
    subi    r0, r4, 0x2fb8
    slwi    r4, r5, 2
    add     r4, r0, r4
    lwz     r0, 0x0(r4)
    stw     r0, 0x170(r3)
    blr


.globl setMareActionFlag___8TBaseNPCFv
setMareActionFlag___8TBaseNPCFv: # 0x80216180
    lwz     r0, 0x16c(r3)
    cmpwi   r0, 0x10
    ble-    branch_0x80216194
    li      r0, 0x0
    stw     r0, 0x16c(r3)
branch_0x80216194:
    lwz     r5, 0x16c(r3)
    lis     r4, 0x803a
    subi    r0, r4, 0x2ffc
    slwi    r4, r5, 2
    add     r4, r0, r4
    lwz     r0, 0x0(r4)
    stw     r0, 0x170(r3)
    blr


.globl setMonteActionFlag___8TBaseNPCFv
setMonteActionFlag___8TBaseNPCFv: # 0x802161b4
    lwz     r0, 0x16c(r3)
    cmpwi   r0, 0x18
    ble-    branch_0x802161c8
    li      r0, 0x0
    stw     r0, 0x16c(r3)
branch_0x802161c8:
    lwz     r5, 0x16c(r3)
    lis     r4, 0x803a
    subi    r0, r4, 0x3060
    slwi    r4, r5, 2
    add     r4, r0, r4
    lwz     r0, 0x0(r4)
    stw     r0, 0x170(r3)
    blr

