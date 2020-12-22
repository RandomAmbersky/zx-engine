
Floor.spr: equ 3

  MODULE Floor
    SETUP_CELL_TYPE_N Floor_cell_name, script
  
script:
  IfVar Vars.var_act, do_get, get
  ; IfVar Vars.var_act, do_stand, stand_script
  defb _endByte
get:
  ; ShowText Take_floor_mess
  CallCode Entities.action_fault
  SetVar Vars.var_ret, 0
  defb _endByte
  ENDMODULE

Floor_5.spr: equ 5
  MODULE Floor_5
    SETUP_CELL_TYPE_N Floor_cell_name, Floor.script
  ENDMODULE

Floor_8.spr: equ 8
  MODULE Floor_8
    SETUP_CELL_TYPE_N Floor_cell_name, Floor.script
  ENDMODULE

Floor_22.spr: equ 22
  MODULE Floor_22
    SETUP_CELL_TYPE_N Floor_cell_name, Floor.script
  ENDMODULE

Floor_23.spr: equ 23
  MODULE Floor_23
    SETUP_CELL_TYPE_N Floor_cell_name, Floor.script
  ENDMODULE

Floor_53.spr: equ 53
  MODULE Floor_53
    SETUP_CELL_TYPE_N Floor_cell_name, Floor.script
  ENDMODULE

Floor_54.spr: equ 54
  MODULE Floor_54
    SETUP_CELL_TYPE_N Floor_cell_name, Floor.script
  ENDMODULE

Floor_58.spr: equ 58
  MODULE Floor_58
    SETUP_CELL_TYPE_N Floor_cell_name, Floor.script
  ENDMODULE

Floor_74.spr: equ 74
  MODULE Floor_74
    SETUP_CELL_TYPE_N Floor_cell_name, Floor.script
  ENDMODULE
