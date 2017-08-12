
#.zero 0x800051cc - 0x80003298
#.incbin "./baserom/code/Text_0x80003100.bin", 0x198, 0x800051cc - 0x80003298

.globl __TRK_reset
__TRK_reset: # 0x800051cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      __TRK_copy_vectors
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr

