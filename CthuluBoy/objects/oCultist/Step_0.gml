/// @description Insert description here
// You can write your code in this editor

timer ++
if timer > timeneeded {
    //tarx = random_range(0,122);
    timer = 0 //reset the timer
	timeneeded = room_speed * random_range(5,10);
}


spd += 0.02;


y += spd;


if(y > 99){
y = 99;	
}

x = approach(x,tarx,0.25);


if(!oGameBase.scaringTime){

tarx = -30;

if(x = -30){
instance_destroy();	
}
	
}
