/// @description Insert description here
// You can write your code in this editor
if (instance_exists(objPlayer))
{
	x = objPlayer.x;
	y = objPlayer.y;
}

if (place_meeting(x, y, objEnemyProjectileParent)) && (scrEquipModCheck(2)) || (keyboard_check_pressed(ord("B")))
{
	objModStats.hit = 1;
	objModStats.shieldActive = 0;
}

if (objModStats.hit == 1)
{
	if (image_alpha != 0)
	{
		image_alpha -= 0.05;
	}
}