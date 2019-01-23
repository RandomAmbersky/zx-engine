
Acid.spr: equ 96

  MODULE Acid
    SETUP_CELL_TYPE_N Acid_cell_name, script

script:
  IfVar Vars.var_act, do_stand, stand_
  IfVar Vars.var_act, do_get, get_
  IfVar Vars.var_act, do_drop, drop_
  defb _endByte

stand_:
  goto no_way_script

get_:
  goto no_way_script

drop_:
  IfVar Vars.var_item_id, CanisterEmpty.spr, fill_
  goto no_way_script

fill_:
  CallCode binary_fill
  SetMapCell CraterSmall.spr ; на земле ставим маленький кратер
  goto no_way_script

  ; ShowText Take_floor_mess
  ; CallCode Entities.action_fault
  ; SetVar Vars.var_ret, 0
  defb _endByte

binary_fill:
  CALL items.del_item_from_hand ; убираем пустую канистру
  LD A, Canister.item
  CALL items.add_item_to_hand
  JP Entities.action_pickup

  ENDMODULE