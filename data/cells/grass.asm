
; --- трава 

Grass.spr: equ 17
  MODULE Grass
    SETUP_CELL_TYPE_N Grass_cell_name, Floor.script
  ENDMODULE

Grass2.spr: equ 32
  MODULE Grass2
    SETUP_CELL_TYPE_N Grass_cell_name, Floor.script
  ENDMODULE

Grass3.spr: equ 16
  MODULE Grass3
    SETUP_CELL_TYPE_N Grass_cell_name, Floor.script
  ENDMODULE

Grass_158.spr: equ 158
  MODULE Grass_158
    SETUP_CELL_TYPE_N Grass_cell_name, Floor.script
  ENDMODULE

; --- кустарник 
Bush.spr: equ 49
  MODULE Bush
    SETUP_CELL_TYPE_N Bush_cell_name, script
script:
  IfVar Vars.var_act, do_stand, no_way_script
  IfVar Vars.var_act, do_get, base_kick_fault
  IfVar Vars.var_act, do_drop, drop_
  defb _endByte

drop_:
  IfVar Vars.var_item_id, Nippers.spr, cut_
  IfVar Vars.var_item_id, CanisterEmpty.spr, try_container_get_
  goto base_kick_fault

try_container_get_:
  ShowText Not_get_plant
  shiruFX FX_Nope
  goto no_way_script

cut_:
  shiruFX FX_Wall
  CallScript action_ring_explode
  SetMapCell Acid.spr
  goto need_look_no_way
  ENDMODULE

Bush2.spr: equ 48
  MODULE Bush2
    SETUP_CELL_TYPE_N Bush_cell_name, Bush.script
  ENDMODULE

Bush3.spr: equ 64
  MODULE Bush3
    SETUP_CELL_TYPE_N Bush_cell_name, Bush.script
  ENDMODULE

; --- гравий
Gravel.spr: equ 42
  MODULE Gravel
    SETUP_CELL_TYPE_N Gravel_cell_name, Floor.script
  ENDMODULE

PlantPot.spr: equ 24
  MODULE PlantPot
    SETUP_CELL_TYPE_N PlantPot_cell_name, Bush.script
  ENDMODULE

; Toilet.spr: equ 102
;   MODULE Toilet
;     SETUP_CELL_TYPE_N Toilet_cell_name, no_way_script
;   ENDMODULE

; Sink.spr: equ 103
;   MODULE Sink
;     SETUP_CELL_TYPE_N Sink_cell_name, no_way_script
; sink_script:
;   ENDMODULE

Keramit.spr: equ 175
  MODULE Keramit
    SETUP_CELL_TYPE_N Keramit_cell_name, script

script:
  IfVarN Vars.var_act, do_drop, no_way_script
  ; shiruFX FX_Wall
  ShowText Keramit_nohit_mess
  goto no_way_script
  ENDMODULE

Keramit_154.spr: equ 154
  MODULE Keramit_154
    SETUP_CELL_TYPE_N Keramit_cell_name, Keramit.script
  ENDMODULE

Keramit_156.spr: equ 156
  MODULE Keramit_156
    SETUP_CELL_TYPE_N Keramit_cell_name, Keramit.script
  ENDMODULE

Keramit_170.spr: equ 170
  MODULE Keramit_170
    SETUP_CELL_TYPE_N Keramit_cell_name, Keramit.script
  ENDMODULE

Keramit_185.spr: equ 185
  MODULE Keramit_185
    SETUP_CELL_TYPE_N Keramit_cell_name, Keramit.script
  ENDMODULE

Keramit_186.spr: equ 186
  MODULE Keramit_186
    SETUP_CELL_TYPE_N Keramit_cell_name, Keramit.script
  ENDMODULE

Keramit_189.spr: equ 189
  MODULE Keramit_189
    SETUP_CELL_TYPE_N Keramit_cell_name, Keramit.script
  ENDMODULE
