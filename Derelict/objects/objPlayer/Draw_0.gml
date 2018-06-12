/// @description Insert description here
// You can write your code in this editor
// Draw Coin GUI
//draw_set_alpha(1);


//var _w = display_get_gui_width();

// draw coin text

if ((room == RoomMain) || (room == room0) && (currentState != state.dead))
{
	draw_set_alpha(1);
	draw_set_halign(fa_right);

	draw_set_font(fntHud);
	draw_set_color(c_white);
	draw_self();
	
}

if (currentState == state.dead)
{
	depth = -500;
	
	deathAlpha = scrApproach(deathAlpha, 0.8, 0.005);
	draw_set_alpha(deathAlpha);
	
	draw_set_color(c_black);
	var x1 = camera_get_view_x(view_camera[0]);
	var y1 = camera_get_view_y(view_camera[0]);
	var x2 = camera_get_view_x(view_camera[0]) + viewWidth;
	var y2 = camera_get_view_y(view_camera[0]) + viewHeight;
	draw_rectangle(x1, y1, x2, y2, false);
	
	draw_set_alpha(deathAlpha);
	draw_set_color(c_maroon);
	draw_set_halign(fa_center);
	draw_set_font(fntDeath);
	draw_text(camera_get_view_x(view_camera[0])+centreX, camera_get_view_y(view_camera[0]) + centreY, "YOU DIED");
	if (deathAlpha != 0.8)
	{
		alarm[0] = room_speed*3;
	}
}