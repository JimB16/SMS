
.globl getBasNameTable__22TBossHanachanPartsBaseCFv
getBasNameTable__22TBossHanachanPartsBaseCFv: # 0x8010a668
    lis     r3, bosshanachan_bastable@ha
    addi    r3, r3, bosshanachan_bastable@l
    blr


.globl unk_8010a674
unk_8010a674: # 0x8010a674
    addi    r3, r3, -0x20
    b       __dt__22TBossHanachanPartsBaseFv

