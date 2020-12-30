
code:
  include "code.asm"
static:
  include "static.asm"
dynamic:
  include "dynamic.asm"

pack_dynamic:

_all_end:

; display /D, _all_end-code, " size, ", /D, INT_VECTOR-_all_end, " free"

display '-----------------------------------------'
display 'Engine:   ', code, '-', static-1, ',size: ', /D, static-code
display 'Static:   ', static, '-', dynamic-1,', size: ', /D, dynamic-static
display 'Dynamic:  ', dynamic, '-', _all_end-1, ', size: ', /D, _all_end-dynamic
display '-----------------------------------------'
display "interrupt: ", INT_VECTOR, "-", INT_VECTOR+256-1
display '-----------------------------------------'
; display "dynamic data size: ", /D, _all_end-dynamic, ", dynamic end: ", _all_end
; display "----- all end: ", _all_end

; display binary_calc_hero_cursor_pos
; display CELL_TYPES
; display Computer_cell_name
; display ComputerBreak.computer_break_script
LABELSLIST "labels.txt"

  ; прикрепляем к engine скрипты и определения
  ; SAVEBIN "static.bin", code, dynamic-code
  ; SAVEBIN "dynamic.bin", dynamic, _all_end-dynamic

; SAVESNA "cell3326.sna",code

; LOAD_ADDR equ #8000
; boot.begin equ LOAD_ADDR
; boot.end equ _all_end
; include "core/routines/basic_boot_trd.asm"

  ; EMPTYTRD "cell3326.trd" ;create empty TRD image
	; SAVETRD "cell3326.trd", "CELL3326.B", boot.Basic, boot.EndBasic - boot.Basic
  ; SAVETRD "cell3326.trd","CELL3326.C",boot.begin,boot.end-boot.begin
