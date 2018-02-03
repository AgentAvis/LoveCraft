
if room = rMenu_main {
	zoom_level = 1
}

if !oConsole.console_status and room != rMenu_main{
	
	if mouse_wheel_down() {
		scroll_level -= .75
	}
	if mouse_wheel_up() {
		scroll_level += .75
	}
	if global.fullzoom {
		scroll_level = clamp(scroll_level,-3,5)
	} else {
		scroll_level = clamp(scroll_level,0,4)		
	}
	rscroll_level = round(scroll_level)
	if rscroll_level = -3 { zoom_level = 16 }	
	if rscroll_level = -2 { zoom_level = 8 }	
	if rscroll_level = -1 { zoom_level = 4 }	
	if rscroll_level = 0 { zoom_level = 2 }	
	if rscroll_level = 1 { zoom_level = 1 }
	if rscroll_level = 2 { zoom_level = 1/2 }
	if rscroll_level = 3  { zoom_level = 1/4 }
	if rscroll_level = 4 { zoom_level = 1/8 }
	if rscroll_level = 5 { zoom_level = 1/16 }
	

}
final_zoom_level = lerp(final_zoom_level,zoom_level,.1)

if (default_zoom_width != window_get_width()) or (default_zoom_height != window_get_height())
{
	default_zoom_width = window_get_width()
	default_zoom_height = window_get_height()
}

if window_has_focus() {
	if (surface_get_width(application_surface)!= window_get_width()) or (surface_get_height(application_surface) != window_get_height())
	{
		surface_resize( application_surface, window_get_width()*(zoom_level*1), window_get_height()*(zoom_level*1));
		//surface_resize( application_surface, window_get_width(), window_get_height());
		//window_center()
		//window_set_position(window_get_x(),window_get_y()-12) 
	}
	//surface_resize( application_surface, window_get_width(), window_get_height());
	if zoom_level < 1 {
		surface_resize( application_surface, window_get_width()*(zoom_level*2), window_get_height()*(zoom_level*2));
	}
}

	
if shaketime > 0 {
    shaketime --
    paused = true
    screenshake = true
} else {
    paused = false
    screenshake = false
}

if screenshake and !staticcam {
	camera_set_view_angle(view_camera[0],random_range(-weight/2,weight/2))
} else {
	camera_set_view_angle(view_camera[0],0)
}


//Get current size
var view_w = camera_get_view_width(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);

//Set the rate of interpolation
var rate = .75;

//Get new sizes by interpolating current and target zoomed size
var new_w = lerp(view_w, final_zoom_level * default_zoom_width, rate);
var new_h = lerp(view_h, final_zoom_level * default_zoom_height, rate);

//Apply the new size
camera_set_view_size(view_camera[0], new_w, new_h);


//surface_resize( application_surface, window_get_width(), window_get_height());
/*
/// @description Insert description here
// You can write your code in this editor
//Move the zoom level based on mouse scrolling. Clamp the value so stuff doesn't get too silly.
if !obj_console.console_status {//and mode !=0 and mode !=1{
	zoom_level = clamp(zoom_level + (((mouse_wheel_down() - mouse_wheel_up())) * 0.05), 0.1, 2);
}

hh = window_get_height()
ww = window_get_width()
camera_set_view_size(camera,hh,ww)


//Get current size
var view_w = ww//camera_get_view_width(view_camera[0]);
var view_h = hh//camera_get_view_height(view_camera[0]);


//Set the rate of interpolation
var rate = 0.2;


//Get new sizes by interpolating current and target zoomed size
var new_w = lerp(view_w, zoom_level * ww, rate);
var new_h = lerp(view_h, zoom_level * hh, rate);

//Apply the new size
camera_set_view_size(view_camera[0], new_w, new_h);



