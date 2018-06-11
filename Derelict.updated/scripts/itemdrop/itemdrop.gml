
for(i=0; i<maxgunitems; i++)
{
	if(global.guninventory[i] ==argument0) //if slot i is empty
	{
		global.guninventory[i] =-1;
		return (1);	//returns a 1 when the slot is filled, stops the for loop immediately
	}
}

for(i=0; i<maxarmouritems; i++)
{
	if(global.armourinventory[i] ==argument0) //if slot i is empty
	{
		global.armourinventory[i] =-1;
		return (1);	//returns a 1 when the slot is filled, stops the for loop immediately
	}
}

return 0;
