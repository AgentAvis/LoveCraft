/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord("P")) {  room_persistent = true room_goto(rMenu) }
if room = room0 and startover { room_persistent = false room_restart() startover = false }
if room = room0 { canload = true }