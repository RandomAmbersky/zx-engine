;  Windows-1251 encoded only !!!!

HELLO_TXT:
  ; db "012345678901234567890123456789012345678901"

  db "-- [MURK 3326]      [v0.1 �� 6.06.2018] --"
  db "������ ���! ��� ������� ����-���� ����.   "
  db "���� - �������� ������� :)                "
  db "------------------------------------------"
  db "��� ���������� ���� ������������:         "
  db " -���������� ���������� sjasmplus         "
  db " -�������� ������ beepFX �� Shiru         "
  db " -��������� �������� Visual Studio Code   "
  db " -�������� �������� ���� Tiled            "
  db " -����������� ���������� �������� Aseprite"
  db " -����������� �������� ZX-Paintbrush      "
  db " -�������� Speccy Unreal Portable         "
  db "��������� ���� � ��� ���� ��������������  "
  db " �� ���������� ������� SamStyle � SancheZ."
  db "����� ���� �� ���� Trip �� STD.           "
  db "------------------------------------------"
  db "My respect to coders: kalantaj, Wiev      "
  db "������ and big rusiian demoscene boss AAA,"
  db "also special thanks to Alone Coder for    "
  db "some z80 ideas and IDE cable :)           "
  db "------------------------------------------"
  db "my email: wanderer[@]amberskynet.org"
  db _endByte

CELL_TYPE_NAMES:
Empty_cell_name: db "�����",0
Floor_cell_name: db "������",0
Computer_cell_name: db "��������",0
Door_cell_name: db "�����",0
Wall_cell_name: db "�����",0
Ballon_cell_name: db "������",0
Bed_cell_name: db "�������",0
Trash_cell_name: db "������ ������� � �����",0

Soft_wall_name: db "�����",0

Shard_item_name: db "�������",0
Chair_item_name: db "����",0

Electronic_cell_name: db "����������� ���� ����������",0
Electronic_break_name: db "��������� �����������", 0

tHeroName1 defb "�����",0
tHeroName2 defb "HOMO",0

Electronic_break_mess:
  db "� ��� ��� ��� ������� ������ ������...    ",0

Soft_wall_show_electronic:
  db "��� ������������ ������� ������������     "
  db "������ ����������..",0

Electronic_kick_mess:
  db "������� ���������� ���������!!",0

Electronic_kick_open_mess:
  db "���,���������. �������� ���� ������ ����� "
  db "� ���������� ��� ���.. ������!",0

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

Statis_on_mess
  db "� ����� �� ������ � ��� �������� �������   "
  db "���������� ������ ������-����...",0

Take_shard_mess
  db "� �������� ������ ������� ��������..",0

Shard_to_soft_wall_mess
  db "������ �������� � �������� ����� � ������ "
  db "������������ ������..",0

Soft_wall_clean
  db "� ������ ������� ������������ ������",0

Computer_break_mess 
  db "���� � ����� ����������, �� ����� ������- "
  db "���� �������..",0

Computer_add_shard_mess 
  db "��� ���� ������� ���� � ��������� ���     "
  db "��������� ������..",0

Soft_wall_hit_mess:
  db "������ ������ ��������� ��������� ����..",0

Computer_off_mess:
  db "� ��������� ������� ������ � ���������     "
  db "����������..", 0

Computer_off_hit_mess:
  db "���������..", 0
