; void *sms_copy_vram_to_mem(void *dst, unsigned int n)

SECTION code_clib
SECTION code_crt_common

PUBLIC _sms_copy_vram_to_mem_callee

EXTERN asm_sms_copy_vram_to_mem

_sms_copy_vram_to_mem_callee:

   pop af
   pop hl
   pop bc
   push af
   
   jp asm_sms_copy_vram_to_mem
