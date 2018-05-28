/// @description View stuff
/*var base_w = 960; //960 //896
var base_h = 640; //640 //504
var max_w = display_get_width();
var max_h = display_get_height();
var aspect = display_get_width() / display_get_height();
if (max_w < max_h)
    {
    // portait
    var VIEW_WIDTH = min(base_w, max_w);
    var VIEW_HEIGHT = VIEW_WIDTH / aspect;
    }
else
    {
    // landscape
    var VIEW_HEIGHT = min(base_h, max_h);
    var VIEW_WIDTH = VIEW_HEIGHT * aspect;
    }

__view_set( e__VW.WView, 0, floor(VIEW_WIDTH ));
__view_set( e__VW.HView, 0, floor(VIEW_HEIGHT ));
view_wport[0] = max_w;
view_hport[0] = max_h;

surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));*/

//Camera creation

//Build a camera at (0,0), with size 640x480, 0 degrees of angle, no target instance, instant-jupming hspeed and vspeed, with a 32 pixel border
camera = camera_create_view(0, 0, 960, 640, 0, -1, -1, -1, 32, 32);

//Set view0 to use the camera "camera"
view_set_camera(0, camera);

//Basic set up
camera_set_view_pos(view_camera[0], 0, 0);
camera_set_view_size(view_camera[0], 640, 480);

//Setting up object target information
camera_set_view_target(view_camera[0], objPlayer);
camera_set_view_speed(view_camera[0], -1, - 1);
camera_set_view_border(view_camera[0], 32, 32);