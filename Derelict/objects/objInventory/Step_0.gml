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
if (keyboard_check_pressed(vk_lshift))
{
	// Checks for the dash mod in the inventory
	if (scrModCheck(0))
	{
		// If returns true, dashes
		scrDash();
	}
}