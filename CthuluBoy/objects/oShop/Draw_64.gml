/// @description Insert description here
// You can write your code in this editor

if(shopVisible){
draw_set_color(c_black);
draw_text(100,32,"X: " + string(oGameBase.powerLevel) + " Y: " + string(yy) + " Scale: " + string(ss));
scr_make_gui();
draw_set_color(c_ltgray);
//draw_rectangle(60,196,943,731,false);
draw_sprite(shopWindow,0,60,196);
draw_set_color(c_black);
draw_text(72 + 22,200 + 17,"SHOP:");

draw_sprite_ext(s_cultist,0,82 + 14,270,10.7,10.7,0,c_white,1);
draw_text(102+ 14,248,"X " + string(oGameBase.numberOfFollowers));
scr_button(96,346,96+100,346+100,c_gray,c_dkgray,2,0,0,oBeachBallFalling,"Ball \n (Cost: 2)");
scr_button(204,346,204+100,346+100,c_gray,c_dkgray,1,0,0,oFood,"Food \n (Cost: 1)");
scr_button(320,346,320+100,346+100,c_gray,c_dkgray,8,0,0,oBoneFalling,"Bone \n (Cost: 8)");
scr_button(436,346,436+100,346+100,c_gray,c_dkgray,3,0,0,oSteakFalling,"Steak \n (Cost: 3)");

//Furnitur
draw_set_color(c_black);
draw_text(72 + 26,562 - string_height("FURNITURE") - 5,"FURNITURE:");
if(!instance_exists(oWriting)){
scr_button(96,562,96+100,562+100,c_gray,c_dkgray,1,0,0,oWriting,"Writing \n (Cost: 1)");
}
if(!instance_exists(oCandles)){
scr_button(204,562,204+100,562+100,c_gray,c_dkgray,3,0,0,oCandles,"Candles \n (Cost: 3)");
}
if(!instance_exists(oAstral)){
scr_button(320,562,320+100,562+100,c_gray,c_dkgray,7,0,0,oAstral,"oAstral \n (Cost: 7)");
}
if(!instance_exists(oScroll)){
scr_button(436,562,436+100,562+100,c_gray,c_dkgray,3,0,0,oScroll,"Scroll \n (Cost: 3)");
}




}







