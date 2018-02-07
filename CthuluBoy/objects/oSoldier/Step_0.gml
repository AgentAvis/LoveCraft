/// @description Insert description here
// You can write your code in this editor
event_inherited()

if paused exit;

if instance_exists(gun) {
	gun.rate = 5
	if oGameBase.scaringTime { instance_deactivate_object(gun) } else { instance_activate_object(gun) }
	
	if oGameBase.hours > 19 and oGameBase.hours < 7 { instance_destroy(gun) }
	if hasBeenPicked {  instance_destroy(gun)  }
	with (gun) { x = other.x y = 95+4-other.z-vspeed }
	

}
if(y > 100){
	y = 100
}
//if !hasBeenPicked {
		
//}
