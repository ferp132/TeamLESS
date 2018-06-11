/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, objPlayer))
{
	objEnemyControl.canSpawn = true;
	playerTrigger = true;
}
else
{
	objEnemyControl.canSpawn = false;
}