/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, objPlayer) && (playerTrigger == false))
{
	objEnemyControl.canSpawn = true;
	playerTrigger = true;
}
else
{
	objEnemyControl.canSpawn = false;
	playerTrigger = false;
}