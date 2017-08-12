
.section .ram80373480, "ax"


.globl __destroy_global_chain_reference
__destroy_global_chain_reference: # 0x80373480 /Runtime_PPCEABI_H/__init_cpp_exceptions.s
.long __destroy_global_chain # 0x80373480

.globl __fini_cpp_exceptions_reference
__fini_cpp_exceptions_reference: # 0x80373484 /Runtime_PPCEABI_H/__init_cpp_exceptions.s
.long __fini_cpp_exceptions # 0x80373484

.globl __destroy_global_chain_reference_80373488
__destroy_global_chain_reference_80373488: # 0x80373488 /Runtime_PPCEABI_H/global_destructor_chain.s
.long __destroy_global_chain # 0x80373488
.long 0x0 # 0x8037348c
.long 0x0 # 0x80373490
.long 0x0 # 0x80373494
.long 0x0 # 0x80373498
.long 0x0 # 0x8037349c
