if(death==false && detected==false){


//collision

if(place_meeting(x+hsp,y,floor_obj0)) //since x is predefined, now so if the movement x+hsp collides with block
{	
	
   while(!place_meeting(x+sign(hsp),y,floor_obj0))	// if there isnt collision 1 pixel to the left or right
   {
   x=x+sign(hsp);	//push the characters coordinate as close by increasing it by 1 pixel
   }
   image_xscale=sign(hsp);
hsp=-hsp;

 	
}


x=x+hsp;



if (place_meeting(x,y+vsp,floor_obj0))
{
	
	
    while(!place_meeting(x,y +sign(vsp),floor_obj0))
   {
	
 
   y=y +sign(vsp);
   }

vsp=-vsp

}
 y=y +vsp;




if(instance_exists(testplayer_obj)){
 if(distance_to_object(testplayer_obj)<100)
{
	detected=true
	sprite_index=scourge_spots;
	image_index=1

	if(!collision_line(x,y,testplayer_obj.x, testplayer_obj.y,floor_obj0,false, true))
	{
		move_towards_point(testplayer_obj.x,testplayer_obj.y, 20);
		
	if(sign(testplayer_obj.x-x)==1)
	{
	image_xscale=sign(hsp);
	}
		
	}

	
}
 
 
}
}

if(instance_exists(testplayer_obj)){
   if(distance_to_object(testplayer_obj)>100)
 {
	 detected=false
	 sprite_index=scourge_flying;
	
 } 
}


 if(place_meeting(x,y,testplayer_obj)) && met==false
 {
	 flash=1
	 met=true
	 death=true
	hp=0
	
	sprite_index=scourge_dead;
	testplayer_obj.phealth--;	
	
	 
 }
 
 

if(hp<=0)			
{
	
	
	hsp=0
	vsp=0
	
	
	
	if(image_index>=5)
	{
		
		instance_destroy();
	}
}

