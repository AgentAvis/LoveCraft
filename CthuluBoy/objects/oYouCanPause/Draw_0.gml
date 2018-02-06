/// @description Insert description here
// You can write your code in this editor

if die{
	alph *= .95
	if alph < .1 { instance_destroy() }
}
draw_text_transformed_color(x,y+sin(current_time/1000),"Press P to pause/go to main menu!",.25,.25,0,c_black,c_black,c_black,c_black,alph)
