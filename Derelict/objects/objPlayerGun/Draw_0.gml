/// @description Insert description here
// You can write your code in this editor

if (room == LouisTestRoom) || (room == rmSunnyTestRoom) || (room == RoomMain)
{
	if (objPlayer.currentState == state.dead)
	{
		draw_set_alpha(0);
	}
	else
	{
		draw_set_alpha(1);
		draw_self();
	}
}