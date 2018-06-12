/// @description Insert description here
// You can write your code in this editor
pickup = keyboard_check_pressed(ord("F"));

// Picking up the mod
if (collision_rectangle(x-20, y-20, x+20, y+20, objPlayer, false, true))
{
	if (pickup)
	{
		scrModPickup(typeMod);
		instance_destroy();
	}
}