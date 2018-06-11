//This script looks to see if a specific slot, specified by argument0 and argument1, is not empty
//and if not, it makes it empty.

if (global.equipInventory[argument0, argument1] != -1)
{
	var modRemoved = global.equipInventory[argument0, argument1];	//This variable stores the value that was in this slot
	global.equipInventory[argument0, argument1] = -1;
	return(modRemoved);											//Return the index of the item that was in the slot
}
return(0);