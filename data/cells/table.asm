Table.spr: equ 35

  MODULE Table

    SETUP_CELL_TYPE_N Table_cell_name, table_script

table_script:
  IfVar Vars.var_act, do_drop, drop_table_script
  IfVar Vars.var_act, do_stand, no_way_script
  defb _endByte

drop_table_script:
  IfVar Vars.var_item_id, Shard.spr, kick_shard_fault
  IfVar Vars.var_item_id, Nippers.spr, break_table
;   shiruFX FX_Boom
;   CallScript action_ring_explode
;   ShowText Mentoscanner_kick_mess
;   SetMapCell Trash.spr
  goto no_way_script

break_table:
  shiruFX FX_Wall
  CallScript action_ring_explode
  SetMapCell Trash.spr
  goto no_way_script

  ENDMODULE

WhiteTable.spr: equ 81

  MODULE WhiteTable

    SETUP_CELL_TYPE_N Table_cell_name, Table.table_script

  ENDMODULE
