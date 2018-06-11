/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_tab))
{
	if (showInv)
	{
		showInv = false;
	}
	else
	{
		showInv = true;
	}
}


// Checks whether or not left shift has been pressed
if (keyboard_check_pressed(vk_lshift))  //&& (objModStats.dashCountDown == 0)
{
	// Checks for the dash or double dash mod in the inventory
	if (scrEquipModCheck(1) && (objModStats.currentDash != 0))
	{
		// If returns true, dashes
		objModStats.isDashing = 1;
		objModStats.currentDash--;
		//scrDash();
	}
	else if (scrEquipModCheck(0) && (objModStats.dashCountDown == 0))
	{
		objModStats.isDashing = 1;
		//objModStats.currentDash--;
	}
}