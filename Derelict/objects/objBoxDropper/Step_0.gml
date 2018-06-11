BoxDropTimer--;
if(BoxDropTimer <= 0)
{
	with(instance_create_depth(x, y + 32, depth+1, objPushBox))
	{
		Spawner = other.id;
	}
	BoxCount++;
	BoxDropTimer = BoxDropRate;	
}

	BoxDropRate = 20 + BoxCount * BoxCount * BoxCount * BoxCount;
