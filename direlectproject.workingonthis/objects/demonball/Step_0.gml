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

if(instance_exists(testplayer_obj))
{
move_towards_point(testplayer_obj.x,testplayer_obj.y, 3);
}

