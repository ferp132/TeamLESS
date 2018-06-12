/// @description Insert description here
// You can write your code in this editor
// Draw Coin GUI
draw_set_alpha(1);


var _w = display_get_gui_width();

// draw coin text
draw_set_halign(fa_right);
Scr_format_text();
draw_set_font(fntHud);
draw_set_color(c_white);
if ((room == RoomMain) || (room == room0))
{
	draw_set_alpha(1);
	draw_self();
	draw_text(camera_get_view_x(view_camera[0])+viewWidth - 40,camera_get_view_y(view_camera[0]) + 150,coins);
}
if (room == Room_Menu)
{
	draw_text(camera_get_view_x(view_camera[0])+viewWidth + 350,camera_get_view_y(view_camera[0]) + 40,coins);
}
if (room == Room_Shop_Buy)
{
	draw_text(camera_get_view_x(view_camera[0])+viewWidth + 1300,camera_get_view_y(view_camera[0]) + 40,coins);
}
if (room == Room_Shop_Sell)
{
	draw_text(camera_get_view_x(view_camera[0])+viewWidth +350,camera_get_view_y(view_camera[0]) + 40,coins);
}
