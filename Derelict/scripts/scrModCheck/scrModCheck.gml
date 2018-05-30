//This script checks to see if a specific mod is in the inventory
for (j = 0; j < invRow; j++)				//'For' loops iterate through inventory
{
	for (i = 0; i < invCol; i++)
	{
		if (global.inventory[i, j] == argument0)	//If the current inventory slot contains the item we are looking to remove
		{
			return(1);
		}
	}
}
return(0);