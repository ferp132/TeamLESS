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
			if (room = Room_Shop_Sell)
			{
				if (item != -1)
				{
					var itemRemoved = scrSlotModRemove(slotX, slotY);
					if (itemRemoved == 0)	// Dash
					{
						objPlayer.coins = objPlayer.coins + 300;
					}
					if (itemRemoved == 1)	// Double-Dash
					{
						objPlayer.coins = objPlayer.coins + 400;
					}
					if (itemRemoved == 2)	// Energy Shield
					{
						objPlayer.coins = objPlayer.coins + 500;
					}
					if (itemRemoved == 3)	// Damage-reduction
					{
						objPlayer.coins = objPlayer.coins + 150;
					}
					if (itemRemoved == 4)	// Movespeed increase
					{
						objPlayer.coins = objPlayer.coins + 200;
					}
					if (itemRemoved == 5)	// Health increase
					{
						objPlayer.coins = objPlayer.coins + 300;
					}
					if (itemRemoved == 6)	// Twin-Blast
					{
						objPlayer.coins = objPlayer.coins + 750;
					}
					if (itemRemoved == 7)	// Repeater-shot
					{
						objPlayer.coins = objPlayer.coins + 700;
					}
					if (itemRemoved == 8)	// Pulse-blast
					{
						objPlayer.coins = objPlayer.coins + 750;
					}
					if (itemRemoved == 9)	// Firerate Increase
					{
						objPlayer.coins = objPlayer.coins + 165;
					}
					if (itemRemoved == 10)	// Damage Increase
					{
						objPlayer.coins = objPlayer.coins + 250;
					}
					if (itemRemoved == 11)	// Bullet speed increase
					{
						objPlayer.coins = objPlayer.coins + 185;
					}
					audio_play_sound(sndPurchase, 5, false);
				}
			}
			else
			{
				if (item != -1)
				{
					scrSlotModRemove(slotX, slotY);
					audio_play_sound(sndInventoryPick, 10, false);
				}
				if (cursorMod != -1)
				{
					scrSlotModPickup(slotX, slotY, cursorMod);
					audio_play_sound(sndInventoryPlace, 10, false);
				}
				cursorMod = item;
			}
		}
	}
	
	if (item != -1)
	{
		draw_sprite(sprMods, item, x, y);
	}
}