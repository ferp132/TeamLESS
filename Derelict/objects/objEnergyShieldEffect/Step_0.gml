/// @description Insert description here
// You can write your code in this editor
if (object_exists(objPlayer))
{
	x = objPlayer.x;
	y = objPlayer.y;
}

if (objModStats.shieldActive == 0)
{
	if (image_alpha != 0)
	{
		image_alpha -= 0.05;
	}
}