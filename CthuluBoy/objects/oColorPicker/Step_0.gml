/// @description Insert description here
// You can write your code in this editor
if(point_in_rectangle(mouse_x,mouse_y,x,y,x+sprite_get_width(ColorPicker),y+sprite_get_height(ColorPicker))){
	
	if(mouse_check_button_pressed(mb_left)){
		global.mColor = draw_getpixel(mouse_x,mouse_y);
		
	}
	
	
	
}