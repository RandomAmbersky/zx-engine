include "defines.asm"
include "core/defines.asm"
ORG PROG_ADDR

STATIC_BIN:
incbin "output/static.bin"
STATIC_BIN_END:

DYNAMIC_BIN:
incbin "output/dynamic.bin"
DYNAMIC_BIN_END:

DYNAMIC_BIN_ZX7:
incbin "output/dynamic.bin.zx7"
DYNAMIC_BIN_ZX7_END:

; STATIC_BIN_ZX7:
; incbin "output/static.bin.zx7"
; STATIC_BIN_ZX7_END:

SAVESNA "cell3326.sna",PROG_ADDR

display '-------- Snapshot ----------------------------'
display 'STATIC_BIN:      ', STATIC_BIN, '-', STATIC_BIN_END-1, ',size: ', /D, STATIC_BIN_END-STATIC_BIN
display 'DYNAMIC_BIN:     ', DYNAMIC_BIN, '-', DYNAMIC_BIN_END-1, ',size: ', /D, DYNAMIC_BIN_END-DYNAMIC_BIN
display 'DYNAMIC_BIN_ZX7: ', DYNAMIC_BIN_ZX7, '-', DYNAMIC_BIN_ZX7_END-1, ',size: ', /D, DYNAMIC_BIN_ZX7_END-DYNAMIC_BIN_ZX7
; display 'STATIC_BIN_ZX7: ', STATIC_BIN_ZX7, '-', STATIC_BIN_ZX7_END-1, ',size: ', /D, STATIC_BIN_ZX7_END-STATIC_BIN_ZX7
display '----------------------------------------------'
display 'interrupt:       ', INT_VECTOR, '-', INT_VECTOR+256-1
display '----------------------------------------------'
display 'free:            ', /D, 0x10000 - INT_VECTOR+256-1
display '----------------------------------------------'
