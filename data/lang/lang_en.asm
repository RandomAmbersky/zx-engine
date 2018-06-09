;  Windows-1251 encoded only !!!!

HELLO_TXT:
; db "012345678901234567890123456789012345678901"
  db " CELL 3326            v0.1.2 �� 8.06.2018 "
  db "------------------------------------------"
  db "������ ���! ��� ��������� ������� ����-   "
  db "����. ���� - �������� ������� :)          "
  db "------------------------------------------"
  db "��� ���������� ���� ������������:         "
  db " -���������� ���������� Z80 sjasmplus     "
  db " -�������� ������ beepFX �� Shiru         "
  db " -��������� �������� Visual Studio Code   "
  db " -�������� �������� ���� Tiled            "
  db " -����������� ���������� �������� Aseprite"
  db " -����������� �������� ZX-Paintbrush      "
  db " -�������� Speccy Unreal Portable         "
  db " -��������� zx7, ������� bin2tap          "
  db "��������� ���� � ��� ���� ��������������  "
  db "�� ���������� ��� SamStyle � SancheZ.     "
  db "����� ���� �� ���� Trip �� STD.           "
  db "------------------------------------------"
  db "Thanks to xlat for tape-version attention "
  db "and testing on real hardware              "
  db "------------------------------------------"
  db "my e-mail: wanderer[@]amberskynet.org"
  db _endByte

HELP:
  db "------------------------------------------"
  db " [H]elp                                   "
  db "------------------------------------------"
  db "                                          "
  db "H-BIG main key, shows this help screen :) "
  db "                                          "
  db "QWEDCXZA-movement like a Rebel Star game  "
  db "                                          "
  db "Enter - drop or take an item to hand      "
  db _endByte

GAMEOVER_1:
  db "------------------------------------------"
  db "Happy end!                                "
  db "------------------------------------------"
  db "I hit the terminal with a chair...        "
  db "He exploded with a deafening blow,        "
  db "piercing my body with sharp fragments     "
  db "of plastic and hot metal.                 "
  db "------------------------------------------"
  db "The hero is died, so it happened...       "
  db _endByte

GAMEOVER_2:
  db "------------------------------------------"
  db "Congratulations!                          "
  db "------------------------------------------"
  db "The doors slide open and I left the cell  " 
  db "to the corridor, trying to remember how   "
  db "I got here and what to do next ..         "
  db "------------------------------------------"
  db "You have successfully passed              "
  db "the mini-game, hurray-hurray!             "
  db _endByte

varDoorUnlock equ 100; ������� �������� �����

CELL_TYPE_NAMES:
Empty_cell_name: db "Something",0
Floor_cell_name: db "Floor",0
Computer_cell_name: db "Terminal",0
Door_cell_name: db "Door",0
Wall_cell_name: db "Wall",0
Ballon_cell_name: db "Ballon",0
Bed_cell_name: db "Bed",0
Trash_cell_name: db "Small debris and trash",0

Soft_wall_name: db "Decorative wall",0

Shard_item_name: db "Shard",0
Chair_item_name: db "Chair",0

Electronic_cell_name: db "Electronic control unit ",0
Electronic_break_name: db "Broken electronic", 0

tHeroName1 defb "Robot",0
tHeroName2 defb "HOMO",0

Electronic_break_mess:
  db "� ��� ��� ��� ������� ������ ������...",0

Soft_wall_show_electronic:
  db "��� ������������ ������� ������������     "
  db "������ ����������..",0

Electronic_kick_mess:
  db "������� ���������� ���������!!",0

Electronic_kick_open_mess:
  db "������! ������� � ����� �����.",0

Door_kick_chair_mess:
  db "��������������. ����� ���� �� �����������.",0

Door_kick_shard_mess:
  db "�� ����� �� �������� �� ��������..",0

Door_not_open_mess:
  db "����� �� �����������..",0

Take_bed_mess:
  db "������� ���� ����������� � ���� � ��      "
  db "�����������.. ",0

Take_floor_mess:
  db "�� ���� ������ �� ����..",0

Take_trash_mess:
  db "������ ������� � �����.. �����������.",0

Take_chair_mess
  db "� �������� ����..",0

Wall_mess:
  db "� ������� ����� �� ������� ������������   "
  db "�����... ��������������.",0

Break_shard_mess
  db "������ ����� �������� ���������� � �����..",0

Take_shard_mess
  db "� �������� ������ ������� ��������..",0

Shard_to_soft_wall_mess
  db "������ �������� � �������� ����� � ������ "
  db "������������ ������..",0

Soft_wall_clean
  db "� ������ ������� ������������ ������.",0

Computer_break_mess 
  db "The chair fell apart, but the terminal    "
  db "screen cracked.",0

Computer_add_shard_mess 
  db "Another powerful hit and the computer     "
  db "was completely broken.",0

Soft_wall_hit_mess:
  db "The impact is absorbed by the soft wall..",0

Soft_wall_hit_item_mess:
  db "Useless. The impact is absorbed         "
  db "by the soft wall.",0

Computer_off_mess:
  db "I pressed the keys at random sequence and "
  db "the terminal turned off...",0

Computer_off_hit_mess:
  db "�urned off..", 0
