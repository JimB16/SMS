/* Default linker script, for normal executables */
OUTPUT_FORMAT("elf32-powerpc", "elf32-powerpc",
	      "elf32-powerpc")
OUTPUT_ARCH(powerpc:common)
ENTRY(_start)
/* SEARCH_DIR("/powerpc/powerpc-eabi-elf/lib"); */
/* Do we need any of these for elf?
   __DYNAMIC = 0;    */
/* PROVIDE (__stack = 0x817F0000); */


MEMORY {

	mainram	: ORIGIN = 0x02000000, LENGTH = 8M
	itcm	: ORIGIN = 0x01ff8000, LENGTH = 32K
	dtcm	: ORIGIN = 0x027e0000, LENGTH = 16K
	ram_80003100 : ORIGIN = 0x80003100, LENGTH = 24M
}

__ram_80003100_start	=	ORIGIN(ram_80003100);
__ram_80003100_top	=	ORIGIN(ram_80003100) + LENGTH(ram_80003100);;


SECTIONS
{

  /* DOL header (from TITANIK's GC docs)
   */
  . = 0x80003000;

  .header	:
  {
  	file_start = .;
	/*    0000-001B  Text[0..6] sections File Positions */
	LONG(text_file_start);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);

	/*    001C-0047  Data[0..10] sections File Positions */
	LONG(data_file_start);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);

	/*    0048-0063  Text[0..6] sections Mem Address */
	LONG(text_mem_start);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);

	/*    0064-008F  Data[0..10] sections Mem Address */
	LONG(data_mem_start);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);

	/*    0090-00AB  Text[0..6] sections Sizes */
	LONG(text_mem_size);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);

	/*    00AC-00D7  Data[0..10] sections Sizes */
	LONG(data_mem_size);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);

	/*    00D8  BSS Mem address
	 *    00DC  BSS Size */
	LONG(bss_mem_start);
	LONG(bss_mem_size);

	/*    00E0  Entry Point */
	LONG(ABSOLUTE(_start));
  }


  . = file_start + 0x100;

  text_mem_start = .;

  .init           :
  {
    KEEP (*(.init))
  } =0

  temp1 = 0x80003100
  .ram80003100 __ram_80003100_start : AT (temp1) { *(.ram80003100) . = ALIGN(4); } > ram_80003100 = 0xff

  .text           :
  {
    *(.text .stub .text.* .gnu.linkonce.t.*)
    /* .gnu.warning sections are handled specially by elf32.em.  */
    *(.gnu.warning)
  } =0
  .fini           :
  {
    KEEP (*(.fini))
  } =0
  PROVIDE (__etext = .);
  PROVIDE (_etext = .);
  PROVIDE (etext = .);
  . = ALIGN(32);
 text_mem_size = . - text_mem_start;
  data_mem_start = .;
   .rodata         : { *(.rodata .rodata.* .gnu.linkonce.r.*) }
  .rodata1        : { *(.rodata1) }
  .sdata2         : { *(.sdata2 .sdata2.* .gnu.linkonce.s2.*) }
  .sbss2          : { *(.sbss2 .sbss2.* .gnu.linkonce.sb2.*) }
  .eh_frame_hdr : { *(.eh_frame_hdr) }
  . = ALIGN(32);
  /* Ensure the __preinit_array_start label is properly aligned.  We
     could instead move the label definition inside the section, but
     the linker would then create the section even if it turns out to
     be empty, which isn't pretty.  */
  . = ALIGN(32 / 8);
  PROVIDE (__preinit_array_start = .);
  .preinit_array     : { *(.preinit_array) }
  PROVIDE (__preinit_array_end = .);
  PROVIDE (__init_array_start = .);
  .init_array     : { *(.init_array) }
  PROVIDE (__init_array_end = .);
  PROVIDE (__fini_array_start = .);
  .fini_array     : { *(.fini_array) }
  PROVIDE (__fini_array_end = .);
  .data           :
  {
    *(.data .data.* .gnu.linkonce.d.*)
    SORT(CONSTRUCTORS)
  }
  .data1          : { *(.data1) }
  .tdata	  : { *(.tdata .tdata.* .gnu.linkonce.td.*) }
  .tbss		  : { *(.tbss .tbss.* .gnu.linkonce.tb.*) *(.tcommon) }
  .eh_frame       : { KEEP (*(.eh_frame)) }
  .gcc_except_table   : { *(.gcc_except_table) }
  .fixup          : { *(.fixup) }
  .got1           : { *(.got1) }
  .got2           : { *(.got2) }
  .dynamic        : { *(.dynamic) }
  .ctors          :
  {
    /* gcc uses crtbegin.o to find the start of
       the constructors, so we make sure it is
       first.  Because this is a wildcard, it
       doesn't matter if the user does not
       actually link against crtbegin.o; the
       linker won't look for a file to match a
       wildcard.  The wildcard also means that it
       doesn't matter which directory crtbegin.o
       is in.  */
    KEEP (*crtbegin*.o(.ctors))
    /* We don't want to include the .ctor section from
       from the crtend.o file until after the sorted ctors.
       The .ctor section from the crtend file contains the
       end of ctors marker and it must be last */
    KEEP (*(EXCLUDE_FILE (*crtend*.o ) .ctors))
    KEEP (*(SORT(.ctors.*)))
    KEEP (*(.ctors))
  }
  .dtors          :
  {
    KEEP (*crtbegin*.o(.dtors))
    KEEP (*(EXCLUDE_FILE (*crtend*.o ) .dtors))
    KEEP (*(SORT(.dtors.*)))
    KEEP (*(.dtors))
  }
  .jcr            : { KEEP (*(.jcr)) }
  .got            : { *(.got.plt) *(.got) }
  /* We want the small data sections together, so single-instruction offsets
     can access them all, and initialized data all before uninitialized, so
     we can shorten the on-disk segment size.  */
  .sdata          :
  {
    *(.sdata .sdata.* .gnu.linkonce.s.*)
  }
  _edata = .;
  PROVIDE (edata = .);

data_mem_size = . - data_mem_start;
  bss_mem_start = .;

  __bss_start = .;
  .sbss           :
  {
    PROVIDE (__sbss_start = .);
    PROVIDE (___sbss_start = .);
    *(.dynsbss)
    *(.sbss .sbss.* .gnu.linkonce.sb.*)
    *(.scommon)
    PROVIDE (__sbss_end = .);
    PROVIDE (___sbss_end = .);
  }
  .plt            : { *(.plt) }
  .bss            :
  {
   *(.dynbss)
   *(.bss .bss.* .gnu.linkonce.b.*)
   *(COMMON)
   /* Align here to ensure that the .bss section occupies space up to
      _end.  Align after .bss to ensure correct alignment even if the
      .bss section disappears because there are no input sections.  */
   . = ALIGN(32 / 8);
  }
  . = ALIGN(32 / 8);
 bss_mem_size = . - bss_mem_start;
text_file_start = text_mem_start - file_start;
data_file_start = data_mem_start - file_start;


  _end = .;
  __end = .;
  PROVIDE (end = .);
  /* Stabs debugging sections.  */
  .stab          0 : { *(.stab) }
  .stabstr       0 : { *(.stabstr) }
  .stab.excl     0 : { *(.stab.excl) }
  .stab.exclstr  0 : { *(.stab.exclstr) }
  .stab.index    0 : { *(.stab.index) }
  .stab.indexstr 0 : { *(.stab.indexstr) }
  .comment       0 : { *(.comment) }
  /* DWARF debug sections.
     Symbols in the DWARF debugging sections are relative to the beginning
     of the section so we begin them at 0.  */
  /* DWARF 1 */
  .debug          0 : { *(.debug) }
  .line           0 : { *(.line) }
  /* GNU DWARF 1 extensions */
  .debug_srcinfo  0 : { *(.debug_srcinfo) }
  .debug_sfnames  0 : { *(.debug_sfnames) }
  /* DWARF 1.1 and DWARF 2 */
  .debug_aranges  0 : { *(.debug_aranges) }
  .debug_pubnames 0 : { *(.debug_pubnames) }
  /* DWARF 2 */
  .debug_info     0 : { *(.debug_info .gnu.linkonce.wi.*) }
  .debug_abbrev   0 : { *(.debug_abbrev) }
  .debug_line     0 : { *(.debug_line) }
  .debug_frame    0 : { *(.debug_frame) }
  .debug_str      0 : { *(.debug_str) }
  .debug_loc      0 : { *(.debug_loc) }
  .debug_macinfo  0 : { *(.debug_macinfo) }
  /* SGI/MIPS DWARF 2 extensions */
  .debug_weaknames 0 : { *(.debug_weaknames) }
  .debug_funcnames 0 : { *(.debug_funcnames) }
  .debug_typenames 0 : { *(.debug_typenames) }
  .debug_varnames  0 : { *(.debug_varnames) }
}
