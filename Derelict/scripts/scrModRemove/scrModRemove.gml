//This script looks for a specific mod in the inventory and removes it if it is there.
for (j = 0; j < invRow; j++)				//'For' loops iterate through inventory
{
	for (i = 0; i < invCol; i++)
	{
		if (global.inventory[i, j] == argument0)	//If the current inventory slot contains the item we are looking to remove
		{
			global.inventory[i, j] = -1;
			return(1);
		}
	}
}
return(0);