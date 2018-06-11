for(i=0; i<maxgunitems; i++)
{
	if(global.guninventory[i] ==argument0) //if slot i is empty
	{
		
		return (1);	//returns a 1 when the slot is filled, stops the for loop immediately
	}
}

for(i=0; i<maxarmouritems; i++)
{
	if(global.armourinventory[i] ==argument0) //if slot i is empty
	{
		
		return (1);	//returns a 1 when the slot is filled, stops the for loop immediately
	}
}

return 0;
