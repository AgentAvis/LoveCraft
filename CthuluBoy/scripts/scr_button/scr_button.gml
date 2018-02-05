/// @description scr_button(x, y, x2,y2,buttonColor,selectedColor,cost,itemX,itemY,item,itemText)
/// @function scr_button
/// @param x
/// @param  y
/// @param  x2
/// @param y2
/// @param buttonscolor
/// @param selectedcolor
/// @param itemcost
/// @param itemx
/// @param itemy
/// @param itemobject
/// @param buttontext

var mouseVar = point_in_rectangle(window_x,window_y,argument0,argument1,argument2,argument3);


//var scale = 1;
draw_set_color(argument4);
draw_rectangle(argument0,argument1,argument2,argument3,false);
if(mouseVar){
draw_set_color(c_black);	
draw_rectangle(argument0,argument1,argument2,argument3,true);
draw_set_color(argument5);	
draw_rectangle(argument0,argument1,argument2,argument3,true);
if(mouse_check_button_pressed(mb_left)){
if(oGameBase.numberOfFollowers >= argument6){
oGameBase.numberOfFollowers -= argument6;
instance_create(argument7,argument8,argument9);
repeat(argument6){
instance_create(0,-23,oCultistFalling);	
}
	
}
}
}

var width = argument2 - argument0;
var height = argument3 - argument1;
draw_set_font(font1);
var scale = (argument2 - argument0)/string_width(argument10);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text_transformed(argument0 + (width/2), argument1 + (height/2),argument10,scale,scale,0);
draw_set_halign(-1);
draw_set_font(-1);
draw_set_valign(-1);

