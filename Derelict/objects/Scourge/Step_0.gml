if(death==false && detected==false){


//collision

if(place_meeting(x+hsp,y,objCollision)) //since x is predefined, now so if the movement x+hsp collides with block
{	
	
   while(!place_meeting(x+sign(hsp),y,objCollision))	// if there isnt collision 1 pixel to the left or right
   {
   x=x+sign(hsp);	//push the characters coordinate as close by increasing it by 1 pixel
   }
   image_xscale=sign(hsp);
hsp=-hsp;

 	
}


x=x+hsp;



if (place_meeting(x,y+vsp,objCollision))
{
	
	
    while(!place_meeting(x,y +sign(vsp),objCollision))
   {
	
 
   y=y +sign(vsp);
   }

vsp=-vsp

}
 y=y +vsp;




if(instance_exists(objPlayer)){
 if(distance_to_object(objPlayer)<50)
{
	detected=true
	sprite_index=scourge_spots;
	image_index=1
	

	if(!collision_line(x,y,objPlayer.x, objPlayer.y,objCollision,false, true))
	{
		image_angle = point_direction(x, y, objPlayer.x, objPlayer.y);
		move_towards_point(objPlayer.x,objPlayer.y, 10);
		image_angle = point_direction(x, y, objPlayer.x, objPlayer.y);
	if(sign(objPlayer.x-x)==1)
	{
	image_xscale=sign(hsp);
	}
		
	}

	
}
 
 
}
}

if(instance_exists(objPlayer)){
   if(distance_to_object(objPlayer)>100)
 {
	 detected=false
	 sprite_index=scourge_flying;
	
 } 
}


 if(place_meeting(x,y,objPlayer)) && met==false
 {
	 flash=1
	 met=true
	 death=true
	hp=0
	
	sprite_index=scourge_dead;
	objPlayer.phealth=objPlayer.phealth -20;	
	
	 
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

