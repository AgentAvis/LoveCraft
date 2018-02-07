/// @description Insert description here
// You can write your code in this editor
if paused { exit }

x = lerp(x,dest,.05)

if paused exit;


if point_distance(x,y,dest,y) < .25 and boarded { 
	boarded = false
	loop = 2
	repeat (2) {
		loop --
		instance_create(x+loop,y,oOfficer)
	}
	die = true
}

if die {
	image_alpha *= .995	
	if image_alpha <= .01 { instance_destroy() }
	audio_stop_sound(weewoo)
}

