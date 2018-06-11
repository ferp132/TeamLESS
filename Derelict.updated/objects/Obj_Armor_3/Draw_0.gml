// Draw yourself!
draw_self();

// Format the text before drawing
Scr_format_text();

// Draw the button's name

draw_text(x, y, name);

if ((mouse_check_button_pressed(mb_left)) && (objPlayer.coins < 600))
{
	if ((mouse_x < x+400) && (mouse_x > x-400) && (mouse_y < y+30) && (mouse_y > y-30))
	{
		// "You don't have enough money" OR // Make icon blink red to indicate insufficent money...
		insufficient = 1;
	}
}
draw_rectangle(x-400, y-30, x+400, y+30, true);

if(mouse_check_button_pressed(mb_left) && objPlayer.coins >= 600)
{
	if ((mouse_x < x+400) && (mouse_x > x-400) && (mouse_y < y+30) && (mouse_y > y-30))
	{
		// Minus coins, place item in player inventory
		objPlayer.coins -= 600;
		scrModPickup(5);
	}
}

if (insufficient)
{
	draw_text(room_width/2, room_height/2+200, "Insufficient funds for health increase mod!");
	if (cd != 60)
	{
		cd++;
	}
	else
	{
		insufficient = 0;
		cd = 0;
	}
}