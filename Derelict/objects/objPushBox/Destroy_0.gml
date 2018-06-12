SpawnSlime = irandom_range(0,10);

if(SpawnSlime > 8) 
{
	with(instance_create_layer(x,y,"Instances", objGoo))
{
//	hMovement	= random_range(-50, 50);
//	vMovement	= random_range(-10, -25);
}
}

if(Spawner != 0) 
{
	with(Spawner)
	{
		BoxCount--;
		BoxDropTimer =  BoxRate * BoxCount * BoxCount;
	}
}



for (i = 0; i < 4; i++)
{
	with(instance_create_layer(x,y,"Instances", objPushBoxPiece))
{
	hMovement	= random_range(-50, 50);
	x += sign(hMovement) * 32
	vMovement	= random_range(-10, -25);
	Spin		= random_range(0, 20);
}
}