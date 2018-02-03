//if global.debug { visible = true } else { visible = false }

if room = rInit { pause = false room_goto_next() }
if room = rMenu_main or room = rMenu_settings { pause = false }
if room != rMenu_main and room != rMenu_settings {
	if keyboard_check_pressed(ord("P")) { pause = !pause }
}

if pause {
	if keyboard_check(vk_escape) {
		esctimer ++ 
	} else { esctimer = 0 }
	if esctimer > room_speed/2 {
		room_goto(rMenu_main)
		esctimer = 0
		pause = false
	}
	
}

//input handleing
if !(oConsole.console_status) and (room != rMenu_main) and (room != rMenu_settings) { 
	input_up = keyboard_check(vk_up) + keyboard_check(ord("W"))
	input_left = keyboard_check(vk_left) + keyboard_check(ord("A"))
	input_down = keyboard_check(vk_down) + keyboard_check(ord("S"))
	input_right = keyboard_check(vk_right) + keyboard_check(ord("D"))
} else {
	input_up = false
	input_left =  false
	input_down =  false
	input_right =  false
}





if keyboard_check_pressed(ord("N")) and instance_exists(global.focus) {
	new_number = get_n(global.focus,oPawn.object_index)+1
	if new_number > instance_number(oPawn)-1 { new_number = 0 } 
	global.focus = instance_find(oPawn,new_number)
} 





