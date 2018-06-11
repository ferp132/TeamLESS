for(i=0; i<maxarmouritems; i++)
{
	if(global.armourinventory[i] ==-1) //if slot i is empty
	{
		global.armourinventory[i]=argument0;
		return (1);	//returns a 1 when the slot is filled
	}
		
}
return 0;
