/// @description Insert description here
// You can write your code in this editor
x = lerp(x,dest,.05)


if point_distance(x,y,dest,y) < .25 and boarded { 
	boarded = false
	loop = 3
	repeat (3) {
		loop --
		instance_create(x+loop,y,oSoldier)
	}
	die = true
}

if die {
	image_alpha *= .995	
	if image_alpha <= .01 { instance_destroy() }
	
}

