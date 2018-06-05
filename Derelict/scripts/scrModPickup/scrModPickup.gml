// 
//This script adds a mod to the inventory
for (j = 0; j < invRow; j++)				//'For' loops iterate through inventory
{
	for (i = 0; i < invCol; i++)
	{
		if (global.inventory[i, j] == -1)	//If the current inventory slot is empty...
		{
			global.inventory[i, j] = argument0;
			return(1);
		}
	}
}
return(0);