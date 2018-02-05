/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord("V")) { oGameBase.powerLevel ++ }
depth = oCaveBase.depth+1

//if(oGameBase.powerLevel > 1){

//}

if(oGameBase.powerLevel > 30){
	sprite_index = stage[2];
	scale = .5
}

if(oGameBase.powerLevel > 50){
	sprite_index = stage[3];
	scale = .75
}

y = oy + sin(current_time/1000)*(2*scale)

