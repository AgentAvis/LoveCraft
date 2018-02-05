/// @description Insert description here
// You can write your code in this editor



//Dealing with the progression of days
timer ++
if timer > minuteRate {
    
	minutes++;
	if(hunger <= 0){
		hp-=0.25;
		mood -= 0.01;
	}
	
	hunger-=0.08;
	
	huner = clamp(hunger,0,maxHunger);
	
	nFF+= 0.1;
	nFF = clamp(nFF,0,maxNFF);
	
	
	
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




//Timing

if(hours > 6 and hours < 18){
feedingTime = true;	
scaringTime = false;
cultistSpawned = false;

if(firstDay){
	var p = instance_create(0,0,oTutorial);
	p.whichTutorial = 0;
	firstDay = false;
}
}else{
	if(firstNight){
	var p = instance_create(0,0,oTutorial);
	p.whichTutorial = 1;
	firstNight = false;
}
	feedingTime = false;
	scaringTime = true;
}


if(scaringTime){

if(!cultistSpawned){
repeat(clamp(numberOfFollowers,1,5)){
	instance_create(-23,99,oCultist);

cultistSpawned = true;
}
	
	
}

}


mood = clamp(mood,0,maxMood);

