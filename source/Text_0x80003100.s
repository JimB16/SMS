
.section .ram80003100, "ax"


.include "source/Runtime_PPCEABI_H/__mem.s"
.include "source/TRK_MINNOW_DOLPHIN/mem_TRK_2.s"
.include "source/TRK_MINNOW_DOLPHIN/__exception.s"
.include "source/TRK_MINNOW_DOLPHIN/dolphin_trk_2.s"
.include "source/os/__start.s"
.include "source/os/__ppc_eabi_init_2.s"
.include "source/os/__start_data.s"

