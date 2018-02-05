/// @description Insert description here
// You can write your code in this editor




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

