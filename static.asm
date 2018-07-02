FX_SET:
  include "data/demoFX.asm"
FX_SET_END

TILE_SET:
  include "data/graph/tiles_many.asm"
TILE_SET_END

LANG_SET:
  include "data/lang/lang_ru.asm"
  ; include "data/lang/lang_en.asm"
LANG_SET_END

ORG (high $+1)*256
p68_font:
  incbin "data/fonts/tripfont_revert.fnt"
  ; incbin "data/fonts/Font57_revert.fnt"
  ; incbin "data/fonts/casa2_revert.fnt"
_after_font:

START_SCRIPT:
  include "data/script.asm"

ENCOUNTER_SET:
	include "data/rebelstar_enc.asm"
  include "data/cells/empty.asm"
  include "data/cells/shard.asm"
  include "data/cells/chair.asm"
  include "data/cells/floor.asm"
  include "data/cells/trash.asm"
  include "data/cells/bed.asm"
  include "data/cells/computer/computer_break.asm"
  include "data/cells/computer/computer_off.asm"
  include "data/cells/computer/computer.asm"
  include "data/cells/door/door_open.asm"
  include "data/cells/door/door.asm"
  include "data/cells/electronic/electronic.asm"
  include "data/cells/electronic/electronic_break.asm"
  include "data/cells/wall/soft_wall_break.asm"
  include "data/cells/wall/soft_wall.asm"
  include "data/cells/wall/wall.asm"
ENCOUNTER_SET_END
