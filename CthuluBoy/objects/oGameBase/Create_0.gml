/// @description Insert description here
// You can write your code in this editor



//All the variables we're gonna need for the game.



//Relating to time
days = 0;
hours = 23;
minutes = 58;
minuteRate = room_speed * 1;
amOrPm = false
timeStr = "";
timer = 0


//Dealing with Monster Stats
hp = 50;
maxHp = 100;
hunger = 75;
maxHunger = 100;
//Need for followers
nFF = 75;
maxNFF = 100;
numberOfFollowers = 0;

name = "";

//Scary Juice
scaryJuice =0;
maxScaryJuice = 0;


//Some boolean variables for controlling the activity
isFeeding = false;
isLeading = false;



//For the GUI
globalvar GUISCALE_X;
globalvar GUISCALE_Y;
GUISCALE_X = 1600/window_get_width();
GUISCALE_Y = 900/window_get_height();


color1 = make_color_rgb(169,51,51);
color2 = make_color_rgb(226,105,24);
color3 = make_color_rgb(127,0,55);


