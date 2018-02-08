/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
image_index = irandom_range(0,5);
tarx = random_range(-23,122);

fadein = 0

timer = 0
timeneeded = room_speed * 1; //(a second ussually)

spd = 0;

z = 0
zsp = 0
hop = random_range(.4,.6) //how high do i hop

hasBeenPicked = false;
depth = -1002

insanity = 0;

detectionRadius = 5;

hspd = 0.25

image_xscale = random_range(.9,1.1)
image_yscale = image_xscale

depth--;

//image_alpha = 0;