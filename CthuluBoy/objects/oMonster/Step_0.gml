/// @description Insert description here
// You can write your code in this editor
//if keyboard_check_pressed(ord("V")) { oGameBase.powerLevel ++ }
depth = oCaveBase.depth+1

//if(oGameBase.powerLevel > 1){

//}

if(oGameBase.powerLevel > 60){
	sprite_index = stage[2];
	scale = .5
}

if(oGameBase.powerLevel > 80){
	sprite_index = stage[3];
	scale = .75
}

y = oy + sin(current_time/1000)*(2*scale)



if(oGameBase.powerLevel > 86){

	oy = approach(oy,-62,0.5);
	
}


if(oy = -62){

	room_goto(room011);
	
}

if(oy = 167){
	room_goto(room0111);
}


if(oGameBase.hp <= 0 or oGameBase.mood = 0){

oy = approach(oy,167,0.25);

	
}
