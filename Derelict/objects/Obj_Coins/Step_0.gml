/// Desc
// collect coin

if(place_meeting(x,y, objPlayer) && !collected)
{	
	objPlayer.coins++;
	image_index = 0;
	collected = true;
}

// collected

if(collected)
{
	sprite_index = spr_coineffect;

	if(floor(image_index) >= image_number -1)
	{
		instance_destroy();
	}
}