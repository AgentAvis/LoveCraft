/// @description Insert description here
// You can write your code in this editor



//All the variables we're gonna need for the game.



//Relating to time
days = 1;
hours = 7;
minutes = 0;
minuteRate = room_speed * 0.1;
amOrPm = false
timeStr = "";
timer = 0


//Dealing with Monster Stats
hp = 100;
maxHp = 100;
hunger = 20;
maxHunger = 100;
//Need for followers
nFF = 60;
maxNFF = 100;
numberOfFollowers = 1;

name = "";

//Scary Juice
scaryJuice =400;
maxScaryJuice = 400;


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


feedingTime = false;
scaringTime = false;
cultistSpawned = false;


instance_create(x,y,oCultistGroup);

instance_create(x,y,dayNight_visual);
instance_create(x,y,oShop);


name = generate_name();

mood = 20;
maxMood = 40;


var snd = audio_play_sound(snd_music,1,true);
audio_sound_gain(snd, 0, 0);
audio_sound_gain(snd, 1, 5000);


firstDay = true;
firstNight = true;

instance_create(167,-10,oEgg);


powerLevel = 0;
