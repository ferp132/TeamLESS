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
		audio_play_sound(sndInventoryPick, 5, false);
		
		with (instance_create_layer(x, y, "Instances", objTextPickup))
	{
		if (other.typeMod == modType.energyShield)
		{
			parentCreation = "Energy Shield Mod";
		}
		if (other.typeMod == modType.pulseblast)
		{
			parentCreation = "Pulse-blast Mod";
		}
		if (other.typeMod == modType.repeatershot)
		{
			parentCreation = "Repeater shot Mod";
		}
		if (other.typeMod == modType.twinblast)
		{
			parentCreation = "Twin-Blast Mod";
		}
	}
	}
}