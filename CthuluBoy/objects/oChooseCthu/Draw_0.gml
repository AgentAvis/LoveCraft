/// @description Insert description here
// You can write your code in this editor
if  selected {
	_a = lerp(_a,1,.1)
} else {
	_a = lerp(_a,0,.1)	
}

draw_sprite_ext(sGradient,0,x,y,_a/5,_a/5,0,global.mColor,_a);

draw_sprite_ext(Egg1,0,x,y,image_xscale,image_yscale,0,global.mColor,1);
if(point_in_rectangle(mouse_x,mouse_y,x - sprite_get_width(sprite_index),y - sprite_get_height(sprite_index),x + sprite_get_width(sprite_index),y + sprite_get_height(sprite_index))){
	_aa = lerp(_aa,.3,.1)
} else {
	_aa = lerp(_aa,0,.1)	
}
draw_sprite_ext(xRaySpag,0,x,y,image_xscale,image_yscale,0,c_white,_aa);