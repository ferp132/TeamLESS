/// @description Insert description here
// You can write your code in this editor
objEnemyControl.hiddenScore += 1;

if (modDrop)
{
	with (instance_create_layer(x, y, "Instances", objMod))
	{
		image_index = other.modDropped;
	}
}