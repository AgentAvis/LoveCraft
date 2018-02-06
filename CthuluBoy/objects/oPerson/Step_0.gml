/// @description Insert description here
// You can write your code in this editor

if(insanity < 100 and sprite_index != s_cultist){
timer ++
if timer > timeneeded {
    tarx = random_range(0,122);
    timer = 0 //reset the timer
	timeneeded = room_speed * random_range(5,10);
}
}

spd += 0.02;


y += spd;


if(y > 100.5){
y = 100.5;	
}

x = approach(x,tarx,hspd);
if !hasBeenPicked {
	if tarx != x {
		if z <= 0 {
			zsp += hop
			z = .001
		}
	}
	zsp -= .1
	z += zsp
	if z <= 0 { z = 0 }
} else {
	z = 0	
}

if(hasBeenPicked == false and o_tentacle.hasPicked == false and place_meeting(x,y,o_tentacle) and oGameBase.scaringTime = false){
o_tentacle.human = id;
o_tentacle.tary = -103;
hasBeenPicked = true;
o_tentacle.hasPicked = true;


var num = irandom_range(0,3);
if(num = 0){
audio_play_sound(snd_scream,1,false);
}
if(num = 1){
audio_play_sound(snd_scream2,1,false);
}
if(num = 2){
audio_play_sound(snd_scream3,1,false);
}
if(num = 3){
audio_play_sound(snd_scream4,1,false);
}

	
}

if(hasBeenPicked){
	x = o_tentacle.x;
	y = o_tentacle.y + 100;
}


/*with(oCultist){
var cultId = id;
with(other){

if(point_distance(x,y,cultId.x,cultId.y) < detectionRadius){
insanity++;	
}else{
if(insanity < 100){
insanity -= 0.25;
insanity = clamp(insanity,0,100000);
}
}



}
}*/

with(oCultist)
{
   if(point_distance(x,y,other.x,other.y) < other.detectionRadius)
  {
    other.insanity++;
  }
  else
  {
	  if(sprite_index != s_cultist){
    other.insanity= max (other.insanity-.25,0); 
	  }
  }
}

if(insanity > 100){
hspd = 1;
tarx = -23;

sprite_index = s_cultist;

if(x <= -23){
oGameBase.nFF -= 6;
oGameBase.numberOfFollowers++;
instance_destroy();	
}
	
}


if(o_tentacle.isScaring){
	tarx = x + (1 * (sign(x - o_tentacle.x))) 
	tarx = clamp(tarx,0,123);
}
