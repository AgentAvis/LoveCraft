/// @description Insert description here
// You can write your code in this editor
draw_set_color(make_color_rgb(128,128,128));
draw_rectangle(0,0,146,56,false);
draw_set_color(c_black);
draw_text(10,10,timeStr);



draw_set_color(make_color_rgb(128,128,128));
draw_rectangle(917,0,room_width,room_height,false);

draw_healthbar(922,118,1022,128,(hp/maxHp) * 100, c_black, c_red, c_green, 0, true, false);

draw_healthbar(922,200,1022,210,(hunger/maxHunger) * 100, c_black, c_blue, c_blue, 0, true, false);

draw_healthbar(922,220,1022,230,(nFF/maxNFF) * 100, c_black, c_purple, c_purple, 0, true, false);
