/// @description Insert description here
// You can write your code in this editor
global.debug = false;
global.fullzoom = false;

globalvar input_up;
input_up = keyboard_check(vk_up) + keyboard_check(ord("W"))
globalvar input_left;
input_left = keyboard_check(vk_left) + keyboard_check(ord("A"))
globalvar input_down;
input_down = keyboard_check(vk_down) + keyboard_check(ord("S"))
globalvar input_right;
input_right = keyboard_check(vk_right) + keyboard_check(ord("D"))

esctimer = 0 

globalvar pause;
pause = false

timerr = 0
fps_stack = fps_real
global.timescale = 1