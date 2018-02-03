/*****************************
* This creates the console
* system and stores it in a
* variable.
*****************************/
my_console = console_create();

/*****************************
* This allows you to override
* the default settings for the
* console system.
*****************************/
console_settings(my_console,",",false);

/*****************************
* This loads some preset commands
* into the console system.
*****************************/
console_preset(my_console);

/*****************************
* This loads all the available
* commands from a text file,
* which will be shown as suggestions
* whilst the user types.
*****************************/
//console_text_open(my_console,"commands.txt");

/*****************************
* You can also add individual
* commands to the suggestions
* list.
*****************************/
//console_add(my_console,"down [amount to shrink console by]")
//console_add(my_console,"up [amount to grow console by]")
s = my_console[? "sep"];
console_add(my_console,"help"+s+"-provides info pertaining to console")
str = "type help if you don't know how to use me!"
ds_list_insert(my_console[? "history"],0,str);	

console_add(my_console,"pause"+s+"toggles global game pause")
console_add(my_console,"rn"+s+"-Move to next room")
console_add(my_console,"rp"+s+"-Move to previous room")
console_add(my_console,"restart"+s+"-resets the room you are in")
//console_add(my_console,"gunlist"+s+"-resets the room you are in")
console_add(my_console,"debug"+s+"-Toggles debug mode, basically just test drawing stuff")
//console_add(my_console,"gun"+s+"[gun to spawn]")
console_add(my_console,"quit"+s+"-exits the game");
console_add(my_console,"exit"+s+"-exits the game");
console_add(my_console,"menu"+s+"-goes to main menu");
console_add(my_console,"testrm"+s+"-goes to test room");
console_add(my_console,"clear"+s+"-clears console history");
console_add(my_console,"make"+s+"o[Pawn to create]"+s+"[number of pawns to spawn]");
console_add(my_console,"dest"+s+"[Pawn to destroy] or all");
console_add(my_console,"explode"+s+"-creates an explosion at mouse position");
//console_add(my_console,"brainkill"+s+"[pawns to make braindead]");
console_add(my_console,"staticcam"+s+"-forces camera to quit moving");
console_add(my_console,"fullzoom"+s+"-allows more zoom levels");
//global.Gunlist = ds_list_create();
//var gl = global.Gunlist;
done = false;
gunliststring = ""
makenumber = 0




/*
var lownum = -4;
var testnum = lownum;

repeat(guncount) { //guncount comes from load_gun_stat, right here it means basically how many guns there are.
	load_gun_stat(testnum)
	ds_list_add(gl,string(testnum))	
	testnum ++;
}
*/

/* */
/*  */
zoom_desired_zoom = 500
desired_zoom = 0
working_zoom = 0
dconsole_zoom = 600
console_zoom = dconsole_zoom
console_status = false



