/// @description Insert description here
// You can write your code in this editor


draw_set_font(Font_1);

var _w = display_get_gui_width();

// draw coin text
draw_set_halign(fa_right);
if (room == RoomMain)
{
	xx = camera_get_view_x(view_camera[0])+viewWidth;
	yy = camera_get_view_y(view_camera[0]);
	draw_set_alpha(0.7);
	draw_set_color(c_black);
	draw_rectangle(xx - 180, yy+110, xx, yy+viewHeight-450, false);
	
	draw_set_color(c_white);
	draw_set_font(fntHud);
	draw_set_alpha(1);
	draw_text(xx-60, yy+120, "Credits: ");
	draw_text(xx - 10,camera_get_view_y(view_camera[0]) + 120,objPlayer.coins);
	
	draw_text(xx-60, yy+160, "Damage: ");
	draw_text(xx - 10,camera_get_view_y(view_camera[0]) + 160,string(objPlayerGun.damage));
	
	draw_text(xx-60, yy+200, "Firerate: ");
	draw_text(xx-10, yy+200, string((objPlayerGun.firerate)*0.1));
	
	draw_text(xx-60, yy+240, "BulletSpeed: ");
	draw_text(xx-10, yy+240, string(objPlayerGun.bulletSpeed));
	
	draw_text(xx-80, yy+280, "Health: ");
	draw_text(xx-10, yy+280, string(objPlayer.phealth)+"/"+string(objPlayer.maxHp));
	
	draw_text(xx-60, yy+320, "Movespeed: ");
	draw_text(xx-10, yy+320, string(objPlayer.hSpeed));
}
if (room == Room_Menu)
{
	Scr_format_text();
	draw_text(camera_get_view_x(view_camera[0])+viewWidth + 350,camera_get_view_y(view_camera[0]) + 40,objPlayer.coins);
}
if (room == Room_Shop_Buy)
{
	Scr_format_text();
	draw_text(camera_get_view_x(view_camera[0])+viewWidth + 1300,camera_get_view_y(view_camera[0]) + 40,objPlayer.coins);
}
if (room == Room_Shop_Sell)
{
	Scr_format_text();
	draw_text(camera_get_view_x(view_camera[0])+viewWidth +350,camera_get_view_y(view_camera[0]) + 40,objPlayer.coins);
}