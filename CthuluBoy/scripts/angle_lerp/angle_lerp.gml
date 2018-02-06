/// @desc lerp_but_with_angles
/// @arg angle
/// @arg target_angle
/// @arg value
var angle = argument0;
var target_angle = argument1;
var value = argument2;

angle += angle_difference(target_angle,angle)*value

return angle;

