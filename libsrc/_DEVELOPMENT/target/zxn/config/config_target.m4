divert(-1)

###############################################################
# TARGET USER CONFIGURATION
# rebuild the library if changes are made
#

define(`__ZXNEXT', 1)

define(`__ZXNEXT_1MB', 1)
define(`__ZXNEXT_2MB', 2)

# ZX Next Runtime Configuration

# Compatible Spectrum model

define(`__SPECTRUM', 2)

define(`__SPECTRUM_48', 1)
define(`__SPECTRUM_128', 2)
define(`__SPECTRUM_128_P2', 4)
define(`__SPECTRUM_128_P2A', 8)
define(`__SPECTRUM_128_P3', 16)
define(`__SPECTRUM_PENTAGON', 32)

# Second Display File
# Library functions will use display file base address 0xc000

define(`__USE_SPECTRUM_128_SECOND_DFILE', 0)

# Use System Variables
# Some globals like GLOBAL_ZX_PORT_7FFD will map to existing system variable address

define(`__USE_SYSVAR', 0)

#
# END OF USER CONFIGURATION
###############################################################

divert(0)

dnl#
dnl# COMPILE TIME CONFIG EXPORT FOR ASSEMBLY LANGUAGE
dnl#

ifdef(`CFG_ASM_PUB',
`
PUBLIC `__ZXNEXT'

PUBLIC `__SPECTRUM'

PUBLIC `__SPECTRUM_48'
PUBLIC `__SPECTRUM_128'
PUBLIC `__SPECTRUM_128_P2'
PUBLIC `__SPECTRUM_128_P2A'
PUBLIC `__SPECTRUM_128_P3'
PUBLIC `__SPECTRUM_PENTAGON'

PUBLIC `__USE_SPECTRUM_128_SECOND_DFILE'

PUBLIC `__USE_SYSVAR'
')

dnl#
dnl# LIBRARY BUILD TIME CONFIG FOR ASSEMBLY LANGUAGE
dnl#

ifdef(`CFG_ASM_DEF',
`
defc `__ZXNEXT' = __ZXNEXT

defc `__SPECTRUM' = __SPECTRUM

defc `__SPECTRUM_48' = __SPECTRUM_48
defc `__SPECTRUM_128' = __SPECTRUM_128
defc `__SPECTRUM_128_P2' = __SPECTRUM_128_P2
defc `__SPECTRUM_128_P2A' = __SPECTRUM_128_P2A
defc `__SPECTRUM_128_P3' = __SPECTRUM_128_P3
defc `__SPECTRUM_PENTAGON' = __SPECTRUM_PENTAGON

defc `__USE_SPECTRUM_128_SECOND_DFILE' = __USE_SPECTRUM_128_SECOND_DFILE

defc `__USE_SYSVAR' = __USE_SYSVAR
')

dnl#
dnl# COMPILE TIME CONFIG EXPORT FOR C
dnl#

ifdef(`CFG_C_DEF',
`
`#undef'  `__ZXNEXT'
`#define' `__ZXNEXT'    __ZXNEXT

`#undef'  `__SPECTRUM'
`#define' `__SPECTRUM'  __SPECTRUM

`#define' `__SPECTRUM_48'  __SPECTRUM_48
`#define' `__SPECTRUM_128'  __SPECTRUM_128
`#define' `__SPECTRUM_128_P2'  __SPECTRUM_128_P2
`#define' `__SPECTRUM_128_P2A'  __SPECTRUM_128_P2A
`#define' `__SPECTRUM_128_P3'  __SPECTRUM_128_P3
`#define' `__SPECTRUM_PENTAGON'  __SPECTRUM_PENTAGON

`#define' `__USE_SPECTRUM_128_SECOND_DFILE'  __USE_SPECTRUM_128_SECOND_DFILE

`#define' `__USE_SYSVAR'  __USE_SYSVAR
')
