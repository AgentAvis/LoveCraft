if keyboard_check_pressed(192)  { console_status = !console_status console_toggle(my_console) io_clear() }
 x = oCamera.x
 y = oCamera.y

if console_status = true {
	if mouse_wheel_up() { zoom_desired_zoom += 15  }
	if mouse_wheel_down() { zoom_desired_zoom -= 15  }
	desired_zoom = lerp(desired_zoom,zoom_desired_zoom,.35)
} else {
	desired_zoom = -100
	zoom_desired_zoom = clamp(zoom_desired_zoom,10,1000)	
}
working_zoom = lerp(working_zoom,desired_zoom,.2)

/*****************************
* If a command has been submitted...
*****************************/
var list = my_console[? "history"];
var str = "";

if console_submit(my_console) {
    /*****************************
    * Here we can put all our commands.
    *****************************/
    /*****************************
    * If user enters into the console:
    * show_message "message"
    *****************************/
	if console_cmd(my_console,"help") {
		ds_list_clear(list);
		var str = "";
		str = "------=====HELP======------"
		ds_list_insert(list,0,str);
		str = " Type in a command followed by a coma and your arguments. seperate arguments with commas "
		ds_list_insert(list,0,str);
		str = " example: command_name,argument0,argument1 "
		ds_list_insert(list,0,str);
		
		command_list = my_console[? "text"]
		repeatno = ds_list_size(command_list); 
		str = string(repeatno)
		while (repeatno > 0) {
			temp_string = command_list[| repeatno];
			repeatno --;
			str = temp_string
			ds_list_insert(list,0,str);			
		}
	
		//str = "__"
		//ds_list_insert(list,0,str);
	}
    if console_cmd(my_console,"show_message") {
    
        /*****************************
        * Get the message value to display
        *****************************/
        msg = console_value(my_console,1);
		ds_list_insert(list,0,msg);
		
    }
	/*
	if console_cmd(my_console,"down") { 
		var amt = 0;
		amt = console_value(my_console,1)
		amt = real(amt)
		console_zoom -= amt
    }
	*/
	if console_cmd(my_console,"quit") or console_cmd(my_console,"exit") {
		game_end();
	}
	if console_cmd(my_console,"fullzoom") or console_cmd(my_console,"fulzoom") {
		global.fullzoom = !global.fullzoom
	}
	if console_cmd(my_console,"pause") or console_cmd(my_console,"Pause") or console_cmd(my_console,"II")  {
		pause = !pause
	}
	if console_cmd(my_console,"menu") {
		room_goto(rMenu_main)
	}
	if console_cmd(my_console,"rn") {
		if room_exists(room_next(room)) { room_goto_next() }  else {
			str = "No next room to go to."
			ds_list_insert(list,0,str);	
		}
	}
	if console_cmd(my_console,"rp") {
		ded = false
		if room_exists(room_previous(room)) {
			if room_previous(room) = rInit {
				ded = true
			} else {
				room_goto_previous() 
			}
		} else {
			ded = true
		}
		if ded {
			str = "No previous room to go to."
			ds_list_insert(list,0,str);
		}
	}
	if console_cmd(my_console,"restart") {
		room_restart() 
	}
	if console_cmd(my_console,"debug") {
		global.debug = !global.debug
	}
	if console_cmd(my_console,"clear") {
		ds_list_clear(list);
	} 
	/*
	if console_cmd(my_console,"gunlist") {
		ds_list_clear(list);
		var str = "";
		str = "------=====GUN LIST=====------"
		ds_list_insert(list,0,str)
		str = "use the shown commands to spawn the guns ( at mouse position )"
		ds_list_insert(list,0,str)
		llist = list;
		load_gun_stat(999)
	}
	*/
	if console_cmd(my_console,"make") {
		makeobject = console_value(my_console,1);
		makenumber = round(real(console_value(my_console,2)))
		makemouse_x = mouse_x
		makemouse_y = mouse_y
		/*
        if object_exists(asset_get_index(typeis)) {
			repeat (round(real(console_value(my_console,2)))) {
				instance_create(mouse_x,mouse_y,asset_get_index(typeis));
			}
        }
		*/
	}
	if console_cmd(my_console,"dest") {
		var countnum = 0;
		typeis = asset_get_index(console_value(my_console,1));//find_pawn(console_value(my_console,1))
		if instance_exists(typeis) {
			with (typeis) { countnum ++ instance_destroy() }
		} else {
			str = "Specified object not found."
			ds_list_insert(list,0,str);
		}
		str = string(countnum) + " objects destroyed "
		ds_list_insert(list,0,str);
	}
	/*
	if console_cmd(my_console,"tp") {
		var type1is = find_pawn(console_value(my_console,1));
		var foundtype1 = foundtype;
		var type2is = find_pawn(console_value(my_console,2));
		var foundtype2 = foundtype;
		if instance_exists(type1is) and instance_exists(type2is) {
			with (type1is) { x = type2is.x y = type2is.y }
			str = string(foundtype1) + " --> " + string(foundtype2)
			ds_list_insert(list,0,str);
		} else {
		str = "failure: arguments wrong"
		ds_list_insert(list,0,str);
		}
	}
	*/
	if console_cmd(my_console,"explode") {
		//ScExplode(mouse_x,mouse_y,5)
	}
	/*
	if console_cmd(my_console,"brainkill"){
		var countnum = 0;
		var type1is = find_pawn(console_value(my_console,1));
		with type1is { countnum ++ braindead = true }
		str = "Pawns effected = " + string(countnum)
		ds_list_insert(list,0,str);
	}
	*/
	if console_cmd(my_console,"test") {
		//testvalue = console_value(my_console,1)
		//change_limb_hp(0,testvalue)
		
		//str = "test value = " + string(testvalue)
		//ds_list_insert(list,0,str);
	}
	if console_cmd(my_console,"staticcam") {
		oCamera.staticcam = !oCamera.staticcam
		str = "staticcam = " + string(oCamera.staticcam)
		ds_list_insert(list,0,str);
	}
	/*
	if console_cmd(my_console,"liststat") {
		var typeiss = console_value(my_console,1);
		show_debug_message(string(typeiss))
		var found = false;
		with (oPawn) { if name = typeiss and !found { typeiss = id found = true } }
		if !found { typeiss = global.focus }
		
		if instance_exists(typeiss){
			str = "------===MY STATS===------"
			ds_list_insert(list,0,str);
			str = "First Name: " + typeiss.firstname
			ds_list_insert(list,0,str);
			str = "Last Name: " + typeiss.lastname
			ds_list_insert(list,0,str);
			str = typeiss.name
			ds_list_insert(list,0,str);
			str = "Base movement (walk) speed: " + string(typeiss.mspd)
			ds_list_insert(list,0,str);
			str = "Accuracy ( 1 is weapon base accuracy, above that is worse, below is better ): " + string(typeiss.accuracy)
			ds_list_insert(list,0,str);
			str = "Reanimation time: " + string(typeiss.undietime/room_speed) + " seconds"
			ds_list_insert(list,0,str);
			str = "Chance per second to start/stop walking: " + string(typeiss.wanderstarttime/room_speed)
			ds_list_insert(list,0,str);
			str = "Endurance, how long before you get winded: " + string(typeiss.endurance)
			ds_list_insert(list,0,str);
			str = "Smarts, how smart are you: " + string(typeiss.smarts)
			ds_list_insert(list,0,str);
			str = "View distance: " + string(typeiss.viewdis)
			ds_list_insert(list,0,str);
			str = "Blood Color " + string(typeiss.bloodcolor)
			ds_list_insert(list,0,str);
			str = "AI: " + string(typeiss.ai)
			ds_list_insert(list,0,str);
			str = "playable " + string(typeiss.playable)
			ds_list_insert(list,0,str);
			str = "Zombieable " + string(typeiss.zombieable)
			ds_list_insert(list,0,str);
			str = "skeletonable " + string(typeiss.skeletonable)
			ds_list_insert(list,0,str);
			str = "necro " + string(typeiss.necro)
			ds_list_insert(list,0,str);

		}
	}
	*/
}
repeat (2) {
	if makenumber > 0 {
		makenumber --;
		if object_exists(asset_get_index(makeobject)) {
			instance_create_depth(makemouse_x,makemouse_y,depth,asset_get_index(makeobject))
		} else {
			makenumber = 0
		}
	}
}

/* */
/*  */

