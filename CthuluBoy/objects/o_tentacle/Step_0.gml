/// @description Insert description here
// You can write your code in this editor



x = lerp(x,tarx,0.03);
y = approach(y,tary,4);


if(!oShop.shopVisible){
if(oGameBase.feedingTime){
if(tary != 0){
tarx = mouse_x;

tarx = clamp(tarx,0,123);
}


if(mouse_check_button_pressed(mb_left)){
tary = 0;
if(hasPicked){
tary = -103;
}	
}




if(y = 0){
	
tary = -90;	
}

if(y = -123){
	
tary = -90;	
}


if(y == -103 and hasPicked){
	
with (instance_create(160,-10,oPersonFalling)) { image_index = other.human.image_index  }	
instance_destroy(human);

oGameBase.hunger += 6;
oGameBase.hunger = clamp(oGameBase.hunger,0,oGameBase.maxHunger);

tary = -90;

hasPicked = false;
}
}


if(oGameBase.scaringTime){
	
	tarx = mouse_x;
	tarx = clamp(tarx,0,123);
	if(mouse_check_button(mb_left)){
		if( oGameBase.scaryJuice > 0){
		tary = 0;
		oGameBase.scaryJuice -= 1;
		}else{
			tary = -90;
		}
	
	}else{
		oGameBase.scaryJuice++;
		oGameBase.scaryJuice = clamp(oGameBase.scaryJuice,0,oGameBase.maxScaryJuice);
		tary = -90;
	}
	
	if(y = 0){
		isScaring = true;	
	}else{
		isScaring = false;
	}
	
	
}
}else{
	tarx = -123
}