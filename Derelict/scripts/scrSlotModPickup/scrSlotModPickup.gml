//This script takes in (xArrayValue, yArrayValue, itemIndex)
//This script checks if the specific slot, specified by argument0 and argument1,
//If the specific slot is empty. It places the item in that slot. Else, returns 0.

if (global.inventory[argument0, argument1] == -1)
{
	global.inventory[argument0, argument1] = argument2;
	return(1);
}
return(0);