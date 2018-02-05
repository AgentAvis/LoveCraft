
randomize();
var strTotal = "";

var name = "";

var describer = "";

var dominion = "";



var tempNum1 = irandom_range(0,5);


switch(tempNum1){
	
	case 0:
	name = "Beezlebub";
	break;
	case 1:
	name = "Rothnor";
	break;
	case 2:
	name = "Tithletor";
	break;
	case 3:
	name = "Bob"
	break;
	case 4:
	name = "S'Vaak Yuun";
	break;
	case 5:
	name = "Sheboleth";
	break;
}

var tempNum2 = irandom_range(0,5);


switch(tempNum2){
	
	case 0:
	describer = "Consumer Of";
	break;
	case 1:
	describer = "Destroyer Of";
	break;
	case 2:
	describer = "Eater Of";
	break;
	case 3:
	describer  = "All Knowing Lord Of"
	break;
	case 4:
	describer = "Seeker Of";
	break;
	case 5:
	describer = "Scryer Of";
	break;
}

var tempNum3 = irandom_range(0,5);


switch(tempNum3){
	
	case 0:
	dominion = "The Void";
	break;
	case 1:
	dominion = "Minds";
	break;
	case 2:
	dominion = "Flesh";
	break;
	case 3:
	dominion  = "The Library"
	break;
	case 4:
	dominion = "Insanity";
	break;
	case 5:
	dominion = "Men";
	break;
}
var strTotal = name + " " + describer + " " + dominion;

return strTotal;