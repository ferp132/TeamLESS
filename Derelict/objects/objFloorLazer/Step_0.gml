if(!PowerOn)
{
	//Create Lazer Object
	if(MyLazer == noone)
	{
		with(instance_create_depth(x,y-16, -1, objLazer))
		{
			other.MyLazer = id;
			image_yscale = other.LazerHeight;
			LazerDamage = other.LazerDamage;
		}
	}
}
else
{
	if(MyLazer != noone)
	{
		instance_destroy(MyLazer);
		MyLazer = noone;
	}
}