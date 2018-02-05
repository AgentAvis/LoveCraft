/// @description Insert description here
// You can write your code in this editor

draw_set_font(-1);
draw_set_color(make_color_rgb(128,128,128));
draw_rectangle(0,0,146,56,false);
draw_set_color(c_black);
draw_text(2,10 + string_height(timeStr),timeStr);
draw_text(2,10,"Day: " + string(days));



draw_set_color(make_color_rgb(128,128,128));
draw_healthbar(1030,17,1286,29,(hp/maxHp) * 100, c_black, color1, color1, 0, true, false);

draw_healthbar(1030,56,1286,70,(hunger/maxHunger) * 100, c_black, color2, color2, 0, true, false);

draw_healthbar(1030,98,1286,110,(nFF/maxNFF) * 100, c_black, color3, color3, 0, true, false);


draw_text(1290,15,"Health");

draw_text(1290,54,"Hunger");

draw_text(1290,95,"Love Needed");

draw_set_font(font0);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text(1300,233,name);
draw_set_valign(-1);
draw_set_halign(-1);

draw_set_font(-1);