/// @description Insert description here
// You can write your code in this editor




spd += 0.04;


y += spd;
image_angle += rotSpd;

if(y > 80){
	
image_alpha -= 0.1;	
}

if(image_alpha <=0){
	instance_destroy();
}