include "defines.asm"
ORG PROG_ADDR

incbin "output/static.bin"
incbin "output/dynamic.bin"
incbin "output/dynamic.bin.zx7"

SAVESNA "cell3326.sna",PROG_ADDR
