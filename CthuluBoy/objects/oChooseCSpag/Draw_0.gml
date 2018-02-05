/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(Egg2,0,x,y,image_xscale,image_yscale,0,global.mColor,1);

if(point_in_rectangle(mouse_x,mouse_y,x - sprite_get_width(sprite_index),y - sprite_get_height(sprite_index),x + sprite_get_width(sprite_index),y + sprite_get_height(sprite_index))){
draw_sprite_ext(xRayCthu,0,x,y,image_xscale,image_yscale,0,c_white,0.3);
}