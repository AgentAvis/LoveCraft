/// @description Insert description here
// You can write your code in this editor
timer ++

image_angle = angle_lerp(image_angle,point_direction(x,y,o_tentacle.x-1,o_tentacle.y +102),.1);

if timer mod rate = 1 {
	with (instance_create(x,y,oBullet)) {
		audio_play_sound(hello,1,false)
		dmg = other.dmg
		direction = other.image_angle
		speed = 2
	}
}

