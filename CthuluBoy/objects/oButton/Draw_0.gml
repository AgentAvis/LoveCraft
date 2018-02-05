/// @description Insert description here
// You can write your code in this editor
image_xscale = scale
image_yscale = scale
draw_self()
draw_set_halign(fa_center)
draw_set_color(c_black)
draw_text_transformed(x,y-(11*scale),text,scale,scale,0)

col = c_white
if text = "Quit?" {
	if mouse_over() {
		alph = lerp(alph,1,.1)
	} else {
		alph = lerp(alph,0,.1)
	}
	mscale = scale/2
	draw_text_transformed_color(x,y+(11*mscale),"WARNING: all progress will be lost on quit!",mscale,mscale,0,col,col,col,col,alph)		
}