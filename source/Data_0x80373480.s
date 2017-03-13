
.section .ram80373480, "aw"


.globl Data3_Start
Data3_Start:

off_80373480:
.long __destroy_global_chain
.long __fini_cpp_exceptions
.long __destroy_global_chain
.long 0, 0, 0, 0
.long 0

.globl Data3_End
Data3_End:
