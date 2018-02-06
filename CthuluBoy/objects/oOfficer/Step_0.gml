/// @description Insert description here
// You can write your code in this editor
event_inherited()

if instance_exists(gun) {
	
	if oGameBase.scaringTime { instance_deactivate_object(gun) } else { instance_activate_object(gun) }
	
	if oGameBase.hours > 19 and oGameBase.hours < 7 { instance_destroy(gun) }
	if hasBeenPicked {  instance_destroy(gun)  }
	with (gun) { x = other.x y = 95+2-other.z-vspeed }
	

}
if(y > 95){
	y = 95
}
//if !hasBeenPicked {
		
//}
