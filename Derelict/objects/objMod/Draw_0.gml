/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1);
draw_self();
draw_set_color(c_red);
draw_set_halign(fa_center);
draw_set_font(fntHud);

if (collision_rectangle(x-20, y-20, x+20, y+20, objPlayer, false, true))
{
    draw_text(x, scrWave(y-65, y-80, 4, 0)," [Press F to pick up]");
	
}