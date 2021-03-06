
INCLUDE "config_private.inc"

SECTION rodata_common1_data

PUBLIC asci1TxBuffer

asci1TxBuffer:   defs __ASCI1_TX_SIZE  ; Space for the Tx Buffer

; pad to next 256 byte boundary

IF (ASMPC & 0xff)
   defs 256 - (ASMPC & 0xff)
ENDIF

SECTION rodata_common1_data

PUBLIC asci1TxCount, asci1TxIn, asci1TxOut, asci1TxLock

asci1TxCount:    defb 0                 ; Space for Tx Buffer Management
asci1TxIn:       defw asci1TxBuffer     ; non-zero item in bss since it's initialized anyway
asci1TxOut:      defw asci1TxBuffer     ; non-zero item in bss since it's initialized anyway
asci1TxLock:     defb $FE               ; lock flag for Tx exclusion

