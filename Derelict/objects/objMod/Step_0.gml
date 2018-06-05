/// @description Insert description here
// You can write your code in this editor
pickup = keyboard_check_pressed(ord("F"));

// Picking up the mod
if (place_meeting(x, y, objPlayer))
{
	if (pickup)
	{
		scrModPickup(typeMod);
		instance_destroy();
	}
}