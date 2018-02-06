/// @description Insert description here
// You can write your code in this editor
x = lerp(x,dest,.05)

if point_distance(x,y,dest,y) < .25 { 
	boarded = false
	loop = men
	repeat (men) {
		loop --
		instance_create(x+loop,y,oOfficer)
	}
}
