/// @description Insert description here
// You can write your code in this editor

if(insanity < 200){
timer ++
if timer > timeneeded {
    tarx = random_range(0,122);
    timer = 0 //reset the timer
	timeneeded = room_speed * random_range(5,10);
}
}

spd += 0.02;


y += spd;


if(y > 99){
y = 99;	
}

x = approach(x,tarx,hspd);


if(hasBeenPicked == false and o_tentacle.hasPicked == false and place_meeting(x,y,o_tentacle)){
o_tentacle.human = id;
o_tentacle.tary = -103;
hasBeenPicked = true;
o_tentacle.hasPicked = true;


	
}

if(hasBeenPicked){
	x = o_tentacle.x;
	y = o_tentacle.y + 100;
}


with(oCultist){
var cultId = id;
with(other){

if(point_distance(x,y,cultId.x,cultId.y) < detectionRadius){
insanity++;	
}else{
if(insanity < 200){
insanity -= 0.25;
insanity = clamp(insanity,0,100000);
}
}



}
}

if(insanity > 200){
hspd = 1;
tarx = -23;

sprite_index = s_cultist;

if(x <= -23){
oGameBase.nFF -= 3;
oGameBase.numberOfFollowers++;
instance_destroy();	
}
	
}
