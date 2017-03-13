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
	ram_80000000 : ORIGIN = 0x80000000, LENGTH = 24M
	ram_80003100 : ORIGIN = 0x80003100, LENGTH = 24M
	ram_80005600 : ORIGIN = 0x80005600, LENGTH = 24M
	ram_80005540 : ORIGIN = 0x80005540, LENGTH = 24M
	ram_800055a0 : ORIGIN = 0x800055a0, LENGTH = 24M
	ram_803730c0 : ORIGIN = 0x803730c0, LENGTH = 24M
	ram_80373480 : ORIGIN = 0x80373480, LENGTH = 24M
	ram_803734a0 : ORIGIN = 0x803734a0, LENGTH = 24M
	ram_803ab660 : ORIGIN = 0x803ab660, LENGTH = 24M
	ram_803E9700 : ORIGIN = 0x803E9700, LENGTH = 24M
	ram_8040c1c0 : ORIGIN = 0x8040c1c0, LENGTH = 24M
	ram_8040eba0 : ORIGIN = 0x8040eba0, LENGTH = 24M
}

__ram_80003100_start	=	ORIGIN(ram_80003100);
__ram_80003100_top	=	ORIGIN(ram_80003100) + LENGTH(ram_80003100);;
__ram_80005600_start	=	ORIGIN(ram_80005600);
__ram_80005600_top	=	ORIGIN(ram_80005600) + LENGTH(ram_80005600);;
__ram_80005540_start	=	ORIGIN(ram_80005540);
__ram_80005540_top	=	ORIGIN(ram_80005540) + LENGTH(ram_80005540);;
__ram_800055a0_start	=	ORIGIN(ram_800055a0);
__ram_800055a0_top	=	ORIGIN(ram_800055a0) + LENGTH(ram_800055a0);;
__ram_803730c0_start	=	ORIGIN(ram_803730c0);
__ram_803730c0_top	=	ORIGIN(ram_803730c0) + LENGTH(ram_803730c0);;
__ram_80373480_start	=	ORIGIN(ram_80373480);
__ram_80373480_top	=	ORIGIN(ram_80373480) + LENGTH(ram_80373480);;
__ram_803734a0_start	=	ORIGIN(ram_803734a0);
__ram_803734a0_top	=	ORIGIN(ram_803734a0) + LENGTH(ram_803734a0);;
__ram_803ab660_start	=	ORIGIN(ram_803ab660);
__ram_803ab660_top	=	ORIGIN(ram_803ab660) + LENGTH(ram_803ab660);;
__ram_803E9700_start	=	ORIGIN(ram_803E9700);
__ram_803E9700_top	=	ORIGIN(ram_803E9700) + LENGTH(ram_803E9700);;
__ram_8040c1c0_start	=	ORIGIN(ram_8040c1c0);
__ram_8040c1c0_top	=	ORIGIN(ram_8040c1c0) + LENGTH(ram_8040c1c0);;
__ram_8040eba0_start	=	ORIGIN(ram_8040eba0);
__ram_8040eba0_top	=	ORIGIN(ram_8040eba0) + LENGTH(ram_8040eba0);;


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
	/*LONG(data_file_start);*/
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
	LONG(0);

	/*    0048-0063  Text[0..6] sections Mem Address */
	/*LONG(text_mem_start);*/
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);

	/*    0064-008F  Data[0..10] sections Mem Address */
	/*LONG(data_mem_start);*/
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
	LONG(0);

	/*    0090-00AB  Text[0..6] sections Sizes */
	/*LONG(text_mem_size);*/
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);

	/*    00AC-00D7  Data[0..10] sections Sizes */
	/*LONG(data_mem_size);*/
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
	LONG(0);

	/*    00D8  BSS Mem address
	 *    00DC  BSS Size */
	/*LONG(bss_mem_start);
	LONG(bss_mem_size);*/
	LONG(0);
	LONG(0);

	/*    00E0  Entry Point */
	/*LONG(ABSOLUTE(_start));*/
	LONG(0);
    
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
  } > ram_80000000

/*  	file_start = .;*/
   . = file_start + 0x100; 

  text_mem_start = .;

  .init           :
  {
    KEEP (*(.init))
  } =0

  temp1 = .;
  .ram80003100 __ram_80003100_start : AT (temp1) { *(.ram80003100) . = ALIGN(1); } > ram_80003100 = 0xff
  __load_start_ram80003100 = ADDR (.ram80003100);
  __load_stop_ram80003100 = LOADADDR (.ram80003100) + SIZEOF (.ram80003100);
  __load_size_ram80003100 = SIZEOF (.ram80003100);

  temp2 = temp1 + __load_size_ram80003100;
  .ram80005600 __ram_80005600_start : AT (temp2) { *(.ram80005600) . = ALIGN(1); } > ram_80005600 = 0xff
  __load_size_ram80005600 = SIZEOF (.ram80005600);

  temp3 = temp2 + __load_size_ram80005600;
  .ram80005540 __ram_80005540_start : AT (temp3) { *(.ram80005540) . = ALIGN(1); } > ram_80005540 = 0xff
  __load_size_ram80005540 = SIZEOF (.ram80005540);

  temp4 = temp3 + __load_size_ram80005540;
  .ram800055a0 __ram_800055a0_start : AT (temp4) { *(.ram800055a0) . = ALIGN(1); } > ram_800055a0 = 0xff
  __load_size_ram800055a0 = SIZEOF (.ram800055a0);

  temp5 = temp4 + __load_size_ram800055a0;
  .ram803730c0 __ram_803730c0_start : AT (temp5) { *(.ram803730c0) . = ALIGN(1); } > ram_803730c0 = 0xff
  __load_size_ram803730c0 = SIZEOF (.ram803730c0);

  temp6 = temp5 + __load_size_ram803730c0;
  .ram80373480 __ram_80373480_start : AT (temp6) { *(.ram80373480) . = ALIGN(1); } > ram_80373480 = 0xff
  __load_size_ram80373480 = SIZEOF (.ram80373480);

  temp7 = temp6 + __load_size_ram80373480;
  .ram803734a0 __ram_803734a0_start : AT (temp7) { *(.ram803734a0) . = .; } > ram_803734a0 = 0x22
  __load_size_ram803734a0 = SIZEOF (.ram803734a0);

  temp8 = temp7 + __load_size_ram803734a0;
  .ram803ab660 __ram_803ab660_start : AT (temp8) { *(.ram803ab660) . = .; } > ram_803ab660 = 0x11
  __load_size_ram803ab660 = SIZEOF (.ram803ab660);

  temp9 = temp8 + __load_size_ram803ab660;
  .ram8040c1c0 __ram_8040c1c0_start : AT (temp9) { *(.ram8040c1c0) . = .; } > ram_8040c1c0 = 0xff
  __load_size_ram8040c1c0 = SIZEOF (.ram8040c1c0);

  temp10 = temp9 + __load_size_ram8040c1c0;
  .ram8040eba0 __ram_8040eba0_start : AT (temp10) { *(.ram8040eba0) . = ALIGN(1); } > ram_8040eba0 = 0xff
  __load_size_ram8040eba0 = SIZEOF (.ram8040eba0);

	.bss (__ram_803E9700_start) (NOLOAD) :
	{
		*(.bss)
		__bss_end = ABSOLUTE(.);
	}>bss = 0xff
	__bss_size = SIZEOF(.bss);

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
      .bss section disappears because there are no input sections.  
   . = ALIGN(32 / 8);*/
  }
  /*. = ALIGN(32 / 8);*/
 bss_mem_size = . - bss_mem_start;
text_file_start = text_mem_start - file_start;
data_file_start = data_mem_start - file_start;


  _end = .;
  __end = .;
  PROVIDE (end = .);
}
