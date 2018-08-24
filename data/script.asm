BEGIN_SCRIPT:
  setBorder PEN_BLACK
  setScreen PAPER_BLACK or PEN_CYAN
  ; CallCode binary_clear_screen
  ; printAt 0,0,HELLO_TXT
  ; CallCode binary_play_intro
  ; SkanKeyTable key_table_intro
  ; CallCode input.noKey

  CallCode binary_clear_screen
  CallCode binary_init
  SetVar varDoorUnlock, 0
  SetVar Vars.game_over, 0

LOOP_SCRIPT:
  CallScript GAME_LOOP
  IfVarN Vars.game_over, 0, game_over
  goto LOOP_SCRIPT
  defb _endByte

ABOUT_INTRO:
  CallCode binary_clear_screen
  setScreen PAPER_BLACK or PEN_GREEN
  printAt 0,0,ABOUT_TXT
  CallCode input.waitKey
  goto BEGIN_SCRIPT
  defb _endByte

HELP_SCRIPT_INTRO:
  CallCode binary_clear_screen
  setScreen PAPER_BLACK or PEN_GREEN
  printAt 0,0,HELP
  ; shiruFX 46
  CallCode input.waitKey
  goto BEGIN_SCRIPT
  ; CallCode input.noKey
  ; CallCode binary_show_screen
  defb _endByte

HELP_SCRIPT:
  CallCode binary_clear_screen
  setScreen PAPER_BLACK or PEN_CYAN
  printAt 0,0,HELP
  shiruFX 46
  CallCode input.waitKey
  CallCode input.noKey
  CallCode binary_show_screen
  defb _endByte

END_SCRIPT:
  shiruFX 46
  CallCode input.waitKey
  CallCode input.noKey
  goto RESTART
  ; goto END_SCRIPT

game_over:
  CallCode binary_clear_screen
  IfVar Vars.game_over, 2, game_over_2

game_over_1:
  setScreen PAPER_BLACK or PEN_RED
  printAt 0,0,GAMEOVER_1
  CallCode play_gameover
  goto RESTART
  
game_over_2
  setScreen PAPER_BLACK or PEN_YELLOW
  printAt 0,0,GAMEOVER_2
  CallCode play_happy
  goto RESTART

binary_clear_screen:
  LD D, 0
  LD E, 24
  CALL screenfx.clear_window
  RET

binary_init:
  CALL Entities.initHeroes
  CALL Entities.lookChar
  RET

GAME_LOOP:
  SkanKeyTable key_table_hero
  wait_halt 1
  ; CallCode screenfx.show_frames
  ; CallScript look_char
  defb _endByte


binary_play_intro:
  LD A, (IS_GAME_OVER)
  AND A
  JR Z, play_normal
  DEC A
  JR Z, play_happy
play_gameover:
  LD HL, gameover.MUSICDATA
  JP TRI_PLAY
play_normal:
  LD HL,MUSICDATA
  JP TRI_PLAY
play_happy:
  LD HL, gameend.MUSICDATA
  JP TRI_PLAY

binary_show_screen:
  CALL Entities.lookChar
  
; показать GUI поверх карты =)
binary_show_gui:

/*
; проверяем стоит ли герой на каком-нибудь предмете
show_ground_item:
  LD IX, (Entities.activePersonage_ptr)
  LD D, (IX+Entities.Hero.pos.x)
  LD E, (IX+Entities.Hero.pos.y)
  CALL items.find_item_on_map ; в IX указатель на найденный предмет
  JR NC, show_hand_item; не стоит

  LD IX, (Entities.activePersonage_ptr)
  LD A, (IX+Entities.Hero.ground); берем спрайт на чем герой стоит
  LD DE, #1D01
  CALL screenfx.show_sprite
*/

show_hand_item:
  CALL items.get_hero_hand_item
  JR NC, binary_show_gui_ret
  LD DE, #0101
  CALL screenfx.show_sprite

binary_show_gui_ret:
  RET

key_table_intro
  KEY_H, HELP_SCRIPT_INTRO
  KEY_I, ABOUT_INTRO
  defb _endByte

key_table_hero:
  KEY_N, next_char

  KEY_W, char_up
  KEY_X, char_down
  KEY_A, char_left
  KEY_D, char_right

  KEY_Q, char_up_left
  KEY_E, char_up_right
  KEY_Z, char_down_left
  KEY_C, char_down_right

  KEY_H, HELP_SCRIPT

  KEY_G, RESTART

  KEY_ENTER, char_loot

  KEY_CAPS_SHIFT, scan_cursor_keys
  defb _endByte

scan_cursor_keys:
  SkanKeyTable cursor_table_hero
  goto look_char
  defb _endByte

cursor_table_hero:
  KEY_8, char_right
  KEY_7, char_up
  KEY_6, char_down
  KEY_5, char_left
  defb _endByte

RESTART
    ; CallCode zxengine.clear_data
    CallCode zxengine.init; переходим на инициализацию

next_char:
    CallCode Entities.loopNextChar
look_char:
    CallCode Entities.lookChar
    CallCode binary_show_gui
    CallCode input.noKey ; ждем пока отпустит клавишу
    ; wait_halt 5
    defb _endByte

char_up:
  CharDo do_stand, dir_up
  goto look_char
char_down:
  CharDo do_stand, dir_down
  goto look_char
char_left:
  CharDo do_stand, dir_left
  goto look_char
char_right:
  CharDo do_stand, dir_right
  goto look_char

char_up_left:
  CharDo do_stand, dir_up_left
  goto look_char
char_up_right:
  CharDo do_stand, dir_up_right
  goto look_char
char_down_left:
  CharDo do_stand, dir_down_left
  goto look_char
char_down_right:
  CharDo do_stand, dir_down_right
  goto look_char

char_loot:
  CharDo do_get_drop, dir_center
  goto look_char