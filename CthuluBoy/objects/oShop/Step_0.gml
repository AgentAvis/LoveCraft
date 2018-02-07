/// @description Insert description here
// You can write your code in this editor



window_x = window_mouse_get_x();
window_y = window_mouse_get_y();


if(keyboard_check_pressed(ord("S"))){

	shopVisible = !shopVisible;
	
}

if shopVisible and mouse_check_button_pressed(mb_right) {
	shopVisible = false
}
