duration--
if(duration!=0){
if(image_index>=5)
{
	image_speed=0	
	
}
}


if(duration<=0)
{
	image_speed=1
	if(image_index>=8)
	{
	instance_destroy()

	}
}
move_towards_point(testplayer_obj.x,testplayer_obj.y, 3);


