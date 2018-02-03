/// @description Insert description here
// You can write your code in this editor



x = lerp(x,tarx,0.03);
y = approach(y,tary,4);

if(tary != 0){
tarx = mouse_x;

tarx = clamp(tarx,0,123);
}


if(mouse_check_button_pressed(mb_left)){
tary = 0;
if(hasPicked){
tary = -103;
}	
}

if(mouse_check_button_pressed(mb_right)){
	repeat(20){
	instance_create(0,0,oPerson);
	}
	
	instance_create(mouse_x,mouse_y,oCultist);
}


if(y = 0){
	
tary = -90;	
}


if(y == -103 and hasPicked){
instance_destroy(human);

oGameBase.hunger += 3;
instance_create(160,-10,oPersonFalling);
tary = -90;

hasPicked = false;
}