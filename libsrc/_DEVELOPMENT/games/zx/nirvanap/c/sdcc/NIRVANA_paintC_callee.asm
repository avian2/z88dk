; ----------------------------------------------------------------
; Z88DK INTERFACE LIBRARY FOR NIRVANA+ ENGINE - by Einar Saukas
;
; See "nirvana+.h" for further details
; ----------------------------------------------------------------

; void NIRVANA_paintC(unsigned char *attrs, unsigned int lin, unsigned int col)
; callee

SECTION code_lib
SECTION code_nirvanap

PUBLIC _NIRVANA_paintC_callee

EXTERN asm_NIRVANA_paintC

_NIRVANA_paintC_callee:

	pop hl          ; RET address
	pop bc          ; attrs
	pop de          ; lin
	ld d,e
	ex (sp),hl      ; col
	ld e,l

	jp asm_NIRVANA_paintC