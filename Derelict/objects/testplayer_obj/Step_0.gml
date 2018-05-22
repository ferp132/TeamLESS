key_left= keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right= keyboard_check(vk_right)|| keyboard_check(ord("D"));;
key_jump= keyboard_check_pressed(vk_space) || keyboard_check(ord("W"));

var move= key_right - key_left; 
hsp= move*walksp; 


if(place_meeting(x+hsp,y,floor_obj0)) //since x is predefined, now so if the movement x+hsp collides with block
{
   while(!place_meeting(x+sign(hsp),y,floor_obj0))
   {
   x=x+sign(hsp);
   }
    hsp=0;

}
    
  
    x=x+hsp;//implementing movement x coordinate + your input enhanced after if statement is executed

if (place_meeting(x,y+vsp,floor_obj0))
{
    while(!place_meeting(x,y +sign(vsp),floor_obj0))
   {
   y=y +sign(vsp);
   }

 vsp = 0;
}

    y=y+vsp;

//	IMPORTANT CODE FOR PLAYER HEALTH TO LINK THE HEALTHBAR
if(phealth<=0)
{
instance_destroy();	
}