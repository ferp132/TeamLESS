//Get players input
if(!ControlsDisabled)
{
hInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
vInput = keyboard_check_pressed(vk_space);
}
else
{
	hInput = 0;
	vInput = 0;
}
