MAP_MASK:
  DUP mapSize*mapSize
  defb 0; 0 - ячейка еще не просмотрена
  EDUP

MAP_SET:
	; include "data/maps/laboratory.asm"
  ; include "data/maps/laboratory_old.asm"
  ; include "data/maps/laboratory_demo.asm"
  ; include "data/maps/laboratory3.asm"
  ; include "data/maps/test_lab.asm"
  include "data/map/cells.asm"

MAP_SET_END
  include "data/heroes.asm"
