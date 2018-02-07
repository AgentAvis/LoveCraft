/// @description Insert description here
// You can write your code in this editor

if paused exit;

timer ++

image_angle = angle_lerp(image_angle,point_direction(x,y,o_tentacle.x-1,o_tentacle.y +102),.1);

if clip <= 0 {
	wait++
	if wait > room_speed * 2 {
		wait = 0 clip = mclip
	}	
} else {
	if timer mod rate = 1 {
		clip --
		with (instance_create(x,y,oBullet)) {
			audio_play_sound(hello,1,false)
			dmg = other.dmg
			direction = other.image_angle
			speed = 2
		}
	}
}

