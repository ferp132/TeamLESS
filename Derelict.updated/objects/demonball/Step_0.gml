duration--
if(duration!=0){
if(image_index>=7)
{
	image_speed=0	
	
}
}


if(duration<=0)
{
	image_speed=1
	if(image_index>=11)
	{
	instance_destroy()

	}
}

if(instance_exists(objPlayer))
{
move_towards_point(objPlayer.x,objPlayer.y, 3);
}

