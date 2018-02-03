//Build a camera at (0,0), with size 512x384, 0 degrees of angle, no target instance, instant-jupming hspeed and vspeed, with a 32 pixel border
camera = camera_create_view(0, 0, 512, 384, 0, -1, -1, -1, 32, 32);



//Set view0 to use the camera "camera"
view_set_camera(0, camera);

tarx = x //this is the final, desired x. Camera lerps to this
tary = y //this is the final, desired y. Camera lerps to this

mode = 1 //mode 0 is static, mode 1 is keyboard movement, mode 2 is follow an object
target = noone //needs to be something for mode 2
global.focus = noone //if this is set to something, the camera switches to mode 2 and follows it

zoom_level = .5; //percentage of 1, less zooms more in, more zooms more out 1 is perfect 1:1 ratio

scroll_level = 1 //four levels, 1,2,3,4
final_zoom_level = 1 //used for lerping

screenshake = false //is the screenshaking?
shakemag = 1 //how much is it shaking
shaketime = 0 //how long to shake for untill screenshake is set to false

staticcam = false //this variable is used to switch off most of the camera code, good for gif recording.

//Get the starting view size to be used for interpolation later
default_zoom_width = camera_get_view_width(view_camera[0]);
default_zoom_height = camera_get_view_height(view_camera[0]);

c = false

