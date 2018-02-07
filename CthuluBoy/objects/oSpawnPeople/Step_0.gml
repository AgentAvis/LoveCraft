/// @description Insert description here
// You can write your code in this editor

if paused exit;

time++;

if(time > timeneeded){
if(instance_number(oPerson) < 15){
repeat(irandom_range(2,4)){
if(oGameBase.feedingTime){
instance_create(x,y,oPerson);
}
}
}
timeneeded = room_speed * irandom_range(15,30);
time = 0;
}

