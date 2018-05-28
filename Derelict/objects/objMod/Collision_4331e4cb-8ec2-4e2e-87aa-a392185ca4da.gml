/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("E")))
{
	with(other)
	{
		armouritempickup(0);
		
	}
	//global.armourinventory[i] = typeMod;
	global.armourItem = typeMod;
	instance_destroy();
}