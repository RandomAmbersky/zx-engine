
Wall.spr: equ #01

  MODULE Wall
    SETUP_CELL_TYPE_N Wall_cell_name, script

script:
  IfVar Vars.var_act, do_get, no_way_script
  IfVar Vars.var_act, do_drop, drop_
  IfVar Vars.var_act, do_stand, no_way_script
  defb _endByte

drop_:
  IfVar Vars.var_item_id, Shard.spr, base_kick_shard_fault
  goto base_kick_fault

  ENDMODULE

Wall_75.spr: equ 75
  MODULE Wall_75
    SETUP_CELL_TYPE_N Wall_cell_name, Wall.script
  ENDMODULE

Wall_76.spr: equ 76
  MODULE Wall_76
    SETUP_CELL_TYPE_N Wall_cell_name, Wall.script
  ENDMODULE

Wall_78.spr: equ 78
  MODULE Wall_78
    SETUP_CELL_TYPE_N Wall_cell_name, Wall.script
  ENDMODULE

Wall_79.spr: equ 79
  MODULE Wall_79
    SETUP_CELL_TYPE_N Wall_cell_name, Wall.script
  ENDMODULE

Wall_95.spr: equ 95
  MODULE Wall_95
    SETUP_CELL_TYPE_N Wall_cell_name, Wall.script
  ENDMODULE

Wall_111.spr: equ 111
  MODULE Wall_111
    SETUP_CELL_TYPE_N Wall_cell_name, Wall.script
  ENDMODULE

Wall_123.spr: equ 123
  MODULE Wall_123
    SETUP_CELL_TYPE_N Wall_cell_name, Wall.script
  ENDMODULE

Wall_124.spr: equ 124
  MODULE Wall_124
    SETUP_CELL_TYPE_N Wall_cell_name, Wall.script
  ENDMODULE

Wall_127.spr: equ 127
  MODULE Wall_127
    SETUP_CELL_TYPE_N Wall_cell_name, Wall.script
  ENDMODULE
