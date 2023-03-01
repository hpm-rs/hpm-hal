MEMORY
{
  NOR_CFG_OPTION : ORIGIN = 0x80000400, LENGTH = 3K
  BOOT_HEADER :    ORIGIN = 0x80001000, LENGTH = 12K
  XPI0 :           ORIGIN = 0x80004000, LENGTH = 8M - 16K
  CORE0_ILM_SLV :  ORIGIN = 0x01001000, LENGTH = 256K
  CORE0_DLM_SLV :  ORIGIN = 0x01040000, LENGTH = 256K
  AXI_SRAM :       ORIGIN = 0x01080000, LENGTH = 1M
}

REGION_ALIAS("REGION_NOR_CFG_OPTION", NOR_CFG_OPTION);
REGION_ALIAS("REGION_BOOT_HEADER", BOOT_HEADER);
REGION_ALIAS("REGION_TEXT", CORE0_ILM_SLV);
REGION_ALIAS("REGION_RODATA", CORE0_ILM_SLV);
REGION_ALIAS("REGION_DATA", CORE0_DLM_SLV);
REGION_ALIAS("REGION_BSS", CORE0_DLM_SLV);
REGION_ALIAS("REGION_STACK", CORE0_DLM_SLV);
REGION_ALIAS("REGION_HEAP", AXI_SRAM);
