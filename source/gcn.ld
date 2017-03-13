/* Default linker script, for normal executables */
OUTPUT_FORMAT("elf32-powerpc", "elf32-powerpc",
	      "elf32-powerpc")
OUTPUT_ARCH(powerpc:common)
ENTRY(__start)
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
	LONG(Text0_Offset);
	LONG(Text1_Offset);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);

	/*    001C-0047  Data[0..10] sections File Positions */
	LONG(Data0_Offset);
	LONG(Data1_Offset);
	LONG(Data2_Offset);
	LONG(Data3_Offset);
	LONG(Data4_Offset);
	LONG(Data5_Offset);
	LONG(Data6_Offset);
	LONG(Data7_Offset);
	LONG(0);
	LONG(0);
	LONG(0);

	/*    0048-0063  Text[0..6] sections Mem Address */
	LONG(Text0_Start);
	LONG(Text1_Start);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);

	/*    0064-008F  Data[0..10] sections Mem Address */
	LONG(Data0_Start);
	LONG(Data1_Start);
	LONG(Data2_Start);
	LONG(Data3_Start);
	LONG(Data4_Start);
	LONG(Data5_Start);
	LONG(Data6_Start);
	LONG(Data7_Start);
	LONG(0);
	LONG(0);
	LONG(0);

	/*    0090-00AB  Text[0..6] sections Sizes */
	LONG(Text0_Size);
	LONG(Text1_Size);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);

	/*    00AC-00D7  Data[0..10] sections Sizes */
	LONG(Data0_Size);
	LONG(Data1_Size);
	LONG(Data2_Size);
	LONG(Data3_Size);
	LONG(Data4_Size);
	LONG(Data5_Size);
	LONG(Data6_Size);
	LONG(Data7_Size);
	LONG(0);
	LONG(0);
	LONG(0);

	/*    00D8  BSS Mem address
	 *    00DC  BSS Size */
	LONG(bss_mem_start);
	LONG(bss_mem_size);

	/*    00E0  Entry Point */
	LONG(ABSOLUTE(__start));
    
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

  temp1 = .;
  .ram80003100 __ram_80003100_start : AT (temp1) { *(.ram80003100) . = ALIGN(1); } > ram_80003100 = 0xff
  __load_stop_ram80003100 = LOADADDR (.ram80003100) + SIZEOF (.ram80003100);
  Text0_Offset = temp1 - 0x80000000;
  Text0_Start = ADDR (.ram80003100);
  Text0_Size = SIZEOF (.ram80003100);

  temp2 = temp1 + Text0_Size;
  .ram80005600 __ram_80005600_start : AT (temp2) { *(.ram80005600) . = ALIGN(1); } > ram_80005600 = 0xff
  Text1_Offset = temp2 - 0x80000000;
  Text1_Start = ADDR (.ram80005600);
  Text1_Size = SIZEOF (.ram80005600);

  temp3 = temp2 + Text1_Size;
  .ram80005540 __ram_80005540_start : AT (temp3) { *(.ram80005540) . = ALIGN(1); } > ram_80005540 = 0xff
  Data0_Offset = temp3 - 0x80000000;
  Data0_Start = ADDR (.ram80005540);
  Data0_Size = SIZEOF (.ram80005540);

  temp4 = temp3 + Data0_Size;
  .ram800055a0 __ram_800055a0_start : AT (temp4) { *(.ram800055a0) . = ALIGN(1); } > ram_800055a0 = 0xff
  Data1_Offset = temp4 - 0x80000000;
  Data1_Start = ADDR (.ram800055a0);
  Data1_Size = SIZEOF (.ram800055a0);

  temp5 = temp4 + Data1_Size;
  .ram803730c0 __ram_803730c0_start : AT (temp5) { *(.ram803730c0) *(.data) . = ALIGN(1); } > ram_803730c0 = 0xff
  Data2_Offset = temp5 - 0x80000000;
  Data2_Start = ADDR (.ram803730c0);
  Data2_Size = SIZEOF (.ram803730c0);

  temp6 = temp5 + Data2_Size;
  .ram80373480 __ram_80373480_start : AT (temp6) { *(.ram80373480) } > ram_80373480 = 0xff
  Data3_Offset = temp6 - 0x80000000;
  Data3_Start = ADDR (.ram80373480);
  Data3_Size = (Data3_End - Data3_Start);

  temp7 = temp6 + Data3_Size;
  .ram803734a0 __ram_803734a0_start : AT (temp7) { *(.ram803734a0) . = ALIGN(1); } > ram_803734a0 = 0x22
  Data4_Offset = Data3_Offset + (Data3_End - Data3_Start);
  Data4_Start = Data3_Start + (Data3_End - Data3_Start);
  Data4_Size = (Data4_End - Data4_Start);

  temp8 = temp7 + Data4_Size;
  .ram803ab660 __ram_803ab660_start : AT (temp8) { *(.ram803ab660) . = ALIGN(1); } = 0x33
  Data5_Offset = Data4_Offset + (Data4_End - Data4_Start);
  Data5_Start = Data4_Start + (Data4_End - Data4_Start);
  Data5_Size = (Data5_End - Data5_Start);

  __ram_803E9700_start	=	0x803e9700; /*ADDR(.ram803ab660) + SIZEOF(.ram803ab660);*/
  .bss (__ram_803E9700_start) (NOLOAD) :
  {
    *(.bss)
    __bss_end = ABSOLUTE(.);
  }>bss = 0xff
  __bss_size = SIZEOF(.bss);
  bss_mem_start = ADDR (.bss);
  bss_mem_size = SIZEOF (.bss);

  temp9 = temp8 + Data5_Size;
  .ram8040c1c0 __ram_8040c1c0_start : AT (temp9) { *(.ram8040c1c0) . = ALIGN(1); } > ram_8040c1c0 = 0xff
  Data6_Offset = Data5_Offset + (Data5_End - Data5_Start);
  Data6_Start = ADDR (.ram8040c1c0);
  Data6_Size = SIZEOF (.ram8040c1c0);

  temp10 = temp9 + Data6_Size;
  .ram8040eba0 __ram_8040eba0_start : AT (temp10) { *(.ram8040eba0) . = ALIGN(1); } > ram_8040eba0 = 0xff
  Data7_Offset = Data6_Offset + (Data6_End - Data6_Start);
  Data7_Start = ADDR (.ram8040eba0);
  Data7_Size = SIZEOF (.ram8040eba0);

 text_mem_size = . - text_mem_start;
  data_mem_start = .;

data_mem_size = . - data_mem_start;
text_file_start = text_mem_start - file_start;
data_file_start = data_mem_start - file_start;


  _end = .;
  __end = .;
  PROVIDE (end = .);
}
