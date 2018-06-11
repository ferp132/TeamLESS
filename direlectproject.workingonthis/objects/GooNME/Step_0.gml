if(death==false){


if(bothhandv==false){
vsp=vsp+0.5 ;//by default it pushes the character down

//collision




if(place_meeting(x+hsp,y,floor_obj0)) //since x is predefined, now so if the movement x+hsp collides with block
{	sprite_index=GooIdle;
	
   while(!place_meeting(x+sign(hsp),y,floor_obj0))	// if there isnt collision 1 pixel to the left or right
   {
   x=x+sign(hsp);	//push the characters coordinate as close by increasing it by 1 pixel
   }

hsp=irandom_range(-1,1);
vsp=irandom_range(-8, 8);
 	
}


x=x+hsp;



if (!place_meeting(x,y+vsp,floor_obj0))
{
	sprite_index=GooMove;
	
    while(place_meeting(x,y +sign(vsp),floor_obj0))
   {
	
   vsp=vsp-grv;  
   y=y +sign(vsp);
   }


}


if (place_meeting(x,y+vsp,floor_obj0))
{
	sprite_index=GooIdle;
    while(!place_meeting(x,y +sign(vsp),floor_obj0))
   {
   y=y +sign(vsp);
    
   }
hsp=irandom_range(-1,1);
vsp=irandom_range(-4, 4);

}


y=y+vsp;

 if(distance_to_object(testplayer_obj)<350)
{
dir=sign(testplayer_obj.x-x);	
hsp=dir*5;
	
}


if(place_meeting(x+hsp,y,floor_obj0) && (place_meeting(x,y+vsp,floor_obj0)))
{
	
	bothhandv=true


}



}

if(place_meeting(x+hsp,y,floor_obj0) && (place_meeting(x,y+vsp,floor_obj0)) && bothhandv==true)
{
	
	bothhandv=false
	if(hsp==0)
	{
	hsp=irandom_range(-20,20);
	
	}
	
	if(vsp==0)
	{
	
	vsp=irandom_range(-20, 20);	
	}
	x=x+hsp
	y=y+vsp
}


}
if(hp<=0)			
{
	death=true;
	
	sprite_index=Goodead;
	if(image_index>=5)
	{
		instance_destroy();
	}
}
