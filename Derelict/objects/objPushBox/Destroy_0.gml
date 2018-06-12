Spawn = irandom_range(0,100);

if(Spawn >= 95) 
{
	with(instance_create_layer(x+32,y+32,"Instances", objGoo))
{
	hMovement	= random_range(-10, 10);
	vMovement	= random_range(-10, -25);
}
}
else if (Spawn <= 15)
{
	instance_create_layer(x+32,y+32,"Instances", objHealthPack);
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