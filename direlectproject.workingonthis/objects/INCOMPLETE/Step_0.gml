if(death==false && attacking==false && detected ==false)
{
	vsp=vsp+grv;
	//collision
delay=5;		//resets the delay
image_speed=1
sprite_index=Demonrestless;		//base state when alive
x=x+hsp;



if (place_meeting(x,y+vsp,floor_obj0))
{
	sprite_index=Demonrestless;	//moves like this slow tho
    while(!place_meeting(x,y +sign(vsp),floor_obj0))
   {
   y=y +sign(vsp);
    
   }

 vsp = 0;
}



y=y+vsp;

 
	  
if(hsp==0 )		//stops the demon when stationary 
{
	sprite_index=Demonstay;
}
if(hsp!=0)
{
		
    image_xscale=sign(hsp);     //syncs the scale to the speed
}
	
	
	
	//AI DETECTION
	if(distance_to_object(testplayer_obj)<3000)		//play around with these numbers for ai detection
{
	detected=true
   sprite_index=DemonDash;
  move_towards_point(testplayer_obj.x, testplayer_obj.y, 10);

 	
}
	
	
	


}

	
if(sprite_index==DemonDash)		//if demondashes sprites activated
{
if(image_index>=5)
 {
	image_speed=0;	 
 }
			
}
	

if(distance_to_object(testplayer_obj)<40)//play around with these numbers for ai detection and response
{
		
		sprite_index=DemonPunch;
		attacking=true;
		
}
	//show_message(distance_to_object(testplayer_obj));
if(distance_to_object(testplayer_obj)>3002) //play around with these numbers for ai detection
{
	detected=false;
	hsp=random_range(-4,4);
}





if(hp<=0)			//MUST USE RANDOMIZER TO AFFECT HEALTH IE;CREATE A DODGING ABILITY
{
	death=true;
	
	sprite_index=DemonDeath;
	if(image_index>=20)
	{
		instance_destroy();
		
	}
}

