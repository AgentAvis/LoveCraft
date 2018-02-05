/// @description Insert description here
// You can write your code in this editor


if(point_in_rectangle(mouse_x,mouse_y,x - sprite_get_width(sprite_index),y - sprite_get_height(sprite_index),x + sprite_get_width(sprite_index),y + sprite_get_height(sprite_index))){
	if(mouse_check_button_pressed(mb_left)){
	selected = true;
	oChooseCthu.selected = false;
	}
}


if(selected){
	image_xscale = lerp(image_xscale,1,.2);
	image_yscale = lerp(image_yscale,1,.2);
	global.monster = 1;
	
}else{
	
	image_xscale = lerp(image_xscale,.8,.2);
	image_yscale = lerp(image_yscale,.8,.2);
}