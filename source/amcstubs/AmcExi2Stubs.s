
.globl EXI2_Init
EXI2_Init: # 0x803646c0
    blr


.globl EXI2_EnableInterrupts
EXI2_EnableInterrupts: # 0x803646c4
    blr


.globl EXI2_Poll
EXI2_Poll: # 0x803646c8
    li      r3, 0x0
    blr


.globl EXI2_ReadN
EXI2_ReadN: # 0x803646d0
    li      r3, 0x0
    blr


.globl EXI2_WriteN
EXI2_WriteN: # 0x803646d8
    li      r3, 0x0
    blr


.globl EXI2_Reserve
EXI2_Reserve: # 0x803646e0
    blr


.globl EXI2_Unreserve
EXI2_Unreserve: # 0x803646e4
    blr


.globl AMC_IsStub
AMC_IsStub: # 0x803646e8
    li      r3, 0x1
    blr

