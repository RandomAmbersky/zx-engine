;указатели направления
dir_up   EQU 0
dir_up_right EQU 1
dir_right  EQU 2
dir_down_right EQU 3
dir_down EQU 4
dir_down_left EQU 5
dir_left  EQU 6
dir_up_left EQU 7
dir_center EQU 8; никуда не двигаем =)

; действия
do_end   EQU #00
do_stand EQU #01
; do_look  EQU #02
do_get_drop  EQU #03; берем (если руки свободны) или бросаем ( если руки заняты а ячейка свободна :P )
; do_use   EQU #04
; do_smach EQU #05
