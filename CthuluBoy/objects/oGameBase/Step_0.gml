/// @description Insert description here
// You can write your code in this editor



//Dealing with the progression of days
timer ++
if timer > minuteRate {
    
	minutes++;
	if(hunger <= 0){
		hp-=0.5;	
	}
	
		hunger-=0.05;
	
    timer = 0 //reset the timer
}

if(minutes == 60){
	hours++;	

	minutes = 0;
}

if(hours == 24){
	days++;
	hours = 0;
}

if(hours > 11){
if(hours != 12){
timeStr = string_format(hours - 12,2,0) + ":" + string_replace(string_format(minutes,2,0)," ",string(0)) + " P.M";
	}else{
	timeStr = string_format("12",2,0) + ":" + string_replace(string_format(minutes,2,0)," ",string(0)) + " P.M";
	}
}else{
	if(hours  == 0){
	timeStr = string_format("12",2,0) + ":" + string_replace(string_format(minutes,2,0)," ",string(0)) + " A.M";
	}else{
	timeStr = string_format(hours,2,0) + ":" + string_replace(string_format(minutes,2,0)," ",string(0)) + " A.M";	
	}
}