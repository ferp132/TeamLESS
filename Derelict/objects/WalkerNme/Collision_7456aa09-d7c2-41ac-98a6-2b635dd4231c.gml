

if(place_meeting(x+hsp,y,floor_obj0)) //since x is predefined, now so if the movement x+hsp collides with block
{
   while(!place_meeting(x+sign(hsp),y,floor_obj0))	// if there isnt collision 1 pixel to the left or right
   {
   x=x+sign(hsp);	//push the characters coordinate as close by increasing it by 1 pixel
   }
   hsp=-hsp;

   
}

