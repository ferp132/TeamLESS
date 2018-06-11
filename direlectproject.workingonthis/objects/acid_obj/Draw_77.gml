if (place_meeting(x,y, floor_obj0))      //after drawing the bullet destroy once collision, you can put this in a step event
{
	image_speed=1;
    if(image_index>=4)
	{
	instance_destroy();
	}
}

