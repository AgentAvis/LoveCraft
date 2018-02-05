randomize();
var strTotal = "";

var prename = "";

var sufname = "";

var describer = "";

var dominion = "";



var tempNum1 = irandom_range(0,7);


switch(tempNum1){
    
    case 0:
    prename = "Baal";
    break;
    case 1:
    prename = "Roth";
    break;
    case 2:
    prename = "Tith";
    break;
    case 3:
    prename = "Yog"
    break;
    case 4:
    prename = "Vaak";
    break;
    case 5:
    prename = "She";
    break;
    case 6:
    prename = "Shugg";
    break;
    case 7:
    prename = "Mal";
    break;
}


var tempNum2 = irandom_range(0,7);


switch(tempNum2){
    
    case 0:
    sufname = "fore";
    break;
    case 1:
    sufname = "nor";
    break;
    case 2:
    sufname = "letor";
    break;
    case 3:
    sufname = "'Soth"
    break;
    case 4:
    sufname = " Yuun";
    break;
    case 5:
    sufname = "boleth";
    break;
    case 6:
    sufname = "'Noggoth";
    break;
    case 7:
    sufname = "focale";
    break;
}

var tempNum3 = irandom_range(0,5);


switch(tempNum3){
    
    case 0:
    describer = "Prophet Of";
    break;
    case 1:
    describer = "Bringer Of";
    break;
    case 2:
    describer = "Devourer Of";
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

var tempNum4 = irandom_range(0,5);


switch(tempNum4){
    
    case 0:
    dominion = "The Void";
    break;
    case 1:
    dominion = "Nocturnal Visions";
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
var strTotal = prename + sufname + " " + describer + " " + dominion;

return strTotal;