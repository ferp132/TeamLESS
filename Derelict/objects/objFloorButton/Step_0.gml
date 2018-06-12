if(place_meeting(x, y, all) && Pressed == false) 
{
	Pressed = true;
	audio_play_sound(sndButtonActivate, 0, false);	
}
else if (!place_meeting(x, y, all)) Pressed = false;


	if(AscObj != noone)
	{
		if(Pressed == true)             with(AscObj)	PowerOn = 1;
		else							with(AscObj)	PowerOn = 0;
	}