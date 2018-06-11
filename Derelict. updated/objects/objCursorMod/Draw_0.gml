/// @description Insert description here
// You can write your code in this editor
var item = cursorMod;
if (item != -1)
{
	x = mouse_x;
	y = mouse_y;
	draw_set_alpha(1);
	draw_sprite(sprMods, item, x, y);
}