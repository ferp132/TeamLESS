
    instance_destroy(); //destroy the acid projectile
	
with(other)	//IMPORTANT TO LINK PLAYER HEALTH
{
	if (objModStats.shieldActive != 1)
	{
		phealth -= 15;		
	}
	
}

