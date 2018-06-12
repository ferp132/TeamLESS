/// @description Insert description here
// You can write your code in this editor
xx = camera_get_view_x(view_camera[0])+viewWidth-230;
yy = camera_get_view_y(view_camera[0]);
xx2 = camera_get_view_x(view_camera[0])+viewWidth;
yy2 = yy+viewHeight-510;



// Drawing stats
if (room == RoomMain) && (objPlayer.currentState != state.dead)
{
	draw_set_alpha(0.7);
	draw_set_color(c_black);
	draw_rectangle(xx, yy+130, xx2, yy2, false);

	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_halign(fa_right);
	draw_text(xx2-100, yy+140, "Credits: ");
	draw_text(camera_get_view_x(view_camera[0])+viewWidth - 40,camera_get_view_y(view_camera[0]) + 140,objPlayer.coins);

	draw_text(xx2-100, yy+170, "Health: ");
	draw_text(xx2-20, yy+170, string(objPlayer.phealth)+"/"+string(objPlayer.maxHp));

	draw_text(xx2-100, yy+200, "Damage: ");
	draw_text(xx2-20, yy+200, string(objPlayerGun.damage));

	draw_text(xx2-100, yy+230, "Firerate: ");
	draw_text(xx2-20, yy+230, string((objPlayerGun.firerate)*0.1));

	draw_text(xx2-100, yy+260, "Bulletspeed: ");
	draw_text(xx2-20, yy+260, string(objPlayerGun.bulletSpeed));
}

if (room == Room_Menu)
{
	Scr_format_text();
	draw_text(room_width-100,50,string(objPlayer.coins));
}
if (room == Room_Shop_Buy)
{
	Scr_format_text();
	draw_text(room_width-100,50, string(objPlayer.coins));
}
if (room == Room_Shop_Sell)
{
	Scr_format_text();
	draw_text(viewWidth-50, 50,string(objPlayer.coins));
}