/// @description Insert description here
// You can write your code in this editor
// Draw Coin GUI
//draw_set_alpha(1);


//var _w = display_get_gui_width();

// draw coin text

if ((room == RoomMain) || (room == room0))
{
	draw_set_alpha(1);
	draw_set_halign(fa_right);

	draw_set_font(fntHud);
	draw_set_color(c_white);
	draw_self();
	
}

