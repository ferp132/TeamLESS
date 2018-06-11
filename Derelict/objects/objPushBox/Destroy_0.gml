if(Spawner != 0) 
{
	with(Spawner)
	{
		BoxCount--;
		BoxDropTimer -=  BoxCount * BoxCount * BoxCount;
	}
}



for (i = 0; i < 4; i++)
{
	with(instance_create_layer(x,y,"Instances", objPushBoxPiece))
{
	hMovement	= random_range(-50, 50);
	vMovement	= random_range(-10, -25);
	Spin		= random_range(0, 20);
	
}
}