/// @description Insert description here
// You can write your code in this editor
draw_set_color(make_color_rgb(128,128,128));
draw_rectangle(0,0,146,56,false);
draw_set_color(c_black);
draw_text(10,10,timeStr);



draw_set_color(make_color_rgb(128,128,128));
draw_healthbar(1030,17,1286,29,(hp/maxHp) * 100, c_black, color1, color1, 0, true, false);

draw_healthbar(1030,56,1286,70,(hunger/maxHunger) * 100, c_black, color2, color2, 0, true, false);

draw_healthbar(1030,98,1286,110,(nFF/maxNFF) * 100, c_black, color3, color3, 0, true, false);
