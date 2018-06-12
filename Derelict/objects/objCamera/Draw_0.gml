/// @description Insert description here
// You can write your code in this editor
xx = camera_get_view_x(view_camera[0])+viewWidth-230;
yy = camera_get_view_y(view_camera[0]);
xx2 = camera_get_view_x(view_camera[0])+viewWidth;
yy2 = yy+viewHeight-510;

draw_set_alpha(0.7);
draw_set_color(c_black);
draw_rectangle(xx, yy+130, xx2, yy2, false);

// Drawing stats
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_text(xx2-100, yy+150, "Credits: ");

draw_text(xx2-100, yy+180, "Health: ");
draw_text(xx2-20, yy+180, string(objPlayer.phealth)+"/"+string(objPlayer.maxHp));

draw_text(xx2-100, yy+210, "Damage: ");
draw_text(xx2-20, yy+210, string(objPlayerGun.damage));

draw_text(xx2-100, yy+240, "Firerate: ");
draw_text(xx2-20, yy+240, string((objPlayerGun.firerate)*0.1));

draw_text(xx2-100, yy+270, "Bulletspeed: ");
draw_text(xx2-20, yy+270, string(objPlayerGun.bulletSpeed));