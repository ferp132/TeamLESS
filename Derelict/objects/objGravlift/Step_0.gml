if(PowerOn)
{
	//Create Lift Object
	if(MyLiftBox == noone)
	{
		with(instance_create_layer(x,y, "Instances", objLiftBox))
		{
			other.MyLiftBox = id;
			image_yscale = -other.LiftHeight;
			LiftPower = other.LiftPower;
		}
	}
	
	
	if(LiftTimer <= 0)
	{
		var Spawnpoint = irandom_range(x, x + sprite_width - 2);
		
		with(instance_create_layer(Spawnpoint, y-1, "Instances", objLift))
		{
			image_yscale = -0.1;
			MaxHeight = y - (other.LiftHeight * 64 + irandom_range(0, 64));
		}
		LiftTimer = irandom_range(1, LiftRate);
	}
	//Spawn Lift Animation
	LiftTimer--;
}
else
{
	if(MyLiftBox != noone)
	{
		
		instance_destroy(MyLiftBox);
		MyLiftBox = noone;
	}
}