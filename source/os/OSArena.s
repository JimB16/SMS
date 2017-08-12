
.globl OSGetArenaHi
OSGetArenaHi: # 0x80343394
    lwz     r3, R13Off_m0x5a28(r13)
    blr


.globl OSGetArenaLo
OSGetArenaLo: # 0x8034339c
    lwz     r3, R13Off_m0x7378(r13)
    blr


.globl OSSetArenaHi
OSSetArenaHi: # 0x803433a4
    stw     r3, R13Off_m0x5a28(r13)
    blr


.globl OSSetArenaLo
OSSetArenaLo: # 0x803433ac
    stw     r3, R13Off_m0x7378(r13)
    blr

