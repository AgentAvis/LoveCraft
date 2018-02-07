/// @description Insert description here
// You can write your code in this editor


//if keyboard_check_pressed(ord("O")) {  paused = !paused }
if keyboard_check_pressed(ord("P")) {  room_persistent = true room_goto(rMenu) }



if room = room0 and startover { room_persistent = false room_restart() startover = false }
if room = room0 { canload = true }

if room = room0 { with (oYouCanPause) {
	if keyboard_check_pressed(ord("P")) {
		die = true
	}
}}

if room != room0 { exit }

//if days < 1 { exit }
if oGameBase.days > 2 {
	if global.dead mod (8+1)= 1{ global.dead ++ instance_create(-20,105,oJeep) }
exit;

} 
if oGameBase.days > 1 {
	if global.dead > 2  {
		if global.dead mod (8+1)= 1{ global.dead ++ instance_create(-20,105,oPolice_car) }
		//if keyboard_check_pressed(vk_space) { instance_create_depth(mouse_x,mouse_y,-1000,oPolice_car)  }
	}
}