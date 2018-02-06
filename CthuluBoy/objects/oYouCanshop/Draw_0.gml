/// @description Insert description here
// You can write your code in this editor
if start_alpha < 1 { start_alpha += .05 }

if die {
	alph *= .995
}
if keyboard_check_released(ord("S")) { die = true }  
draw_text_transformed_color(x,y+sin(current_time/1000),"Press ''S'' to open the shop!",.25,.25,0,c_black,c_black,c_black,c_black,alph*start_alpha)
