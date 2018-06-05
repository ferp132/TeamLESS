//Camera creation
viewWidth = 640;
viewHeight = 480;
globalvar centreX, centreY;
centreX = viewWidth/2;
centreY = viewHeight/2;

//Build a camera at (0,0), with size 640x480, 0 degrees of angle, no target instance, instant-jupming hspeed and vspeed, with a 32 pixel border
camera = camera_create_view(0, 0, viewWidth, viewHeight, 0, objPlayer, -1, -1, 32, 32);

//Set view0 to use the camera "camera"
view_set_camera(0, camera);

//Basic set up
camera_set_view_pos(view_camera[0], 0, 0);
camera_set_view_size(view_camera[0], viewWidth, viewHeight);

//Setting up object target information
camera_set_view_target(view_camera[0], objPlayer);
camera_set_view_speed(view_camera[0], -1, -1);
camera_set_view_border(view_camera[0], centreX, centreY);
