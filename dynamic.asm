dynamic_start:

MAP_MASK:
  DUP mapSize*mapSize
  defb 0; 0 - ячейка еще не просмотрена
  EDUP
MAP_MASK_END

MAP_SET:
	; include "data/maps/laboratory.asm"
  ; include "data/maps/laboratory_old.asm"
  ; include "data/maps/laboratory_demo.asm"
  ; include "data/maps/laboratory3.asm"
  ; include "data/maps/test_lab.asm"
  ; include "data/map/cells.asm"
  include "output/map.asm"
MAP_SET_END:

HEROES_SET:
  include "data/heroes.asm"
HEROES_SET_END:

dynamic_end:

display '-------- Dynamic ----------------------------'
display 'MAP_MASK:  ', MAP_MASK, '-', MAP_MASK_END-1,', size: ', /D, MAP_MASK_END-MAP_MASK
display 'MAP_SET:    ', MAP_SET, '-', MAP_SET_END-1,', size: ', /D, MAP_SET_END-LANG_SET
display 'HEROES_SET: ', HEROES_SET, '-', HEROES_SET_END-1,', size: ', /D, HEROES_SET_END-HEROES_SET

