/// @description Insert description here
// You can write your code in this editor
image_blend = c_white

if !oControl.canload { if text = "Resume" { image_blend = c_dkgray exit } }
if room = room01 {
	if oChooseCSpag.selected and oChooseCthu.selected { if text = "Continue" { image_blend = c_dkgray exit  } }
}
if text = "Continue" { iscale = .75 yoffset = 3 }

if mouse_over() {
	scale = lerp(scale,.9,.1)	

	if mouse_check_button_pressed(mb_any) {
		scale = .8
		if text = "New" { room_goto_next() oControl.startover = true }
		if text = "Resume" { room_goto(room0)  oControl.startover = false }
		if text = "Quit?" { game_end() }
		if text = "Continue" {  room = room0  }
	}
} else {
	scale = lerp(scale,1.1,.1)	
}


