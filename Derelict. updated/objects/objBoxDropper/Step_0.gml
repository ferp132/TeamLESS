BoxDropTimer--;
if(BoxDropTimer <= 0 && noone == collision_point(x - 32, y + 64, objPushBox, false, true))
{
	with(instance_create_depth(x - 32, y + 64, depth+1, objPushBox))
	{
		Spawner = other.id;
	}
	BoxCount++;
	BoxDropTimer = BoxDropRate;	
}

	BoxDropRate = 20 + BoxCount * BoxCount * BoxRate;
