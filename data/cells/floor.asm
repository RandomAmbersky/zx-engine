
Floor.spr: equ #03

  MODULE Floor
    SETUP_CELL_TYPE_N Floor_cell_name, floor_script
  
floor_script:
  IfVar Vars.var_act, do_get, get_script
  ; IfVar Vars.var_act, do_stand, stand_script
  defb _endByte
get_script:
  ShowText Take_floor_mess
  CallCode Entities.action_fault
  SetVar Vars.var_ret, 0
  defb _endByte
  ENDMODULE

FloorWhite.spr: equ #36
  MODULE FloorWhite
    SETUP_CELL_TYPE_N Floor_cell_name, Floor.floor_script
  ENDMODULE

FloorRed.spr: equ #3a
  MODULE FloorRed
    SETUP_CELL_TYPE_N Floor_cell_name, Floor.floor_script
  ENDMODULE

FloorCyan.spr: equ #29
  MODULE FloorCyan
    SETUP_CELL_TYPE_N Floor_cell_name, Floor.floor_script
  ENDMODULE

