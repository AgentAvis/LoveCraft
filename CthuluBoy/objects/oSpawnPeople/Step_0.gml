/// @description Insert description here
// You can write your code in this editor


time++;

if(time > timeneeded){
if(instance_number(oPerson) < 15){
repeat(irandom_range(1,4)){
if(oGameBase.feedingTime){
instance_create(x,y,oPerson);
}
}
}
timeneeded = room_speed * irandom_range(15,45);
time = 0;
}

