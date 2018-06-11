/// @description Insert description here
// You can write your code in this editor


var item = global.inventory[slotX, slotY];
var clicked = mouse_check_button_pressed(mb_left);

if (showInv)
{
	if ((abs(mouse_x - x) < 20) && (abs(mouse_y - y) < 20))	//Checks if mouse is hovering over inventory button
	{
		draw_set_color(c_white);
		draw_set_alpha(0.7);
		draw_rectangle(x-13, y-13, x+13, y+13, false);
		
		if (clicked)
		{
			if (item != -1)
			{
				scrSlotModRemove(slotX, slotY);
			}
			if (cursorMod != -1)
			{
				scrSlotModPickup(slotX, slotY, cursorMod);
			}
			cursorMod = item;
		}
	}
	
	if (item != -1)
	{
		draw_sprite(sprMods, item, x, y);
	}
}