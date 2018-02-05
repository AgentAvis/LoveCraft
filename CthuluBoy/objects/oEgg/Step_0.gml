/// @description Insert description here
// You can write your code in this editor



image_blend = global.mColor;
spd += 0.04;

rotSpd += 0.3;
y += spd;
image_angle += rotSpd;

if(y > 80){
	
image_alpha -= 0.15;	
}

if(image_alpha <=0){
	instance_destroy();
}


if(global.monster = 0){
	
sprite_index = Egg2;	
}else{
	
	sprite_index = Egg1;
}

//x = 137;
