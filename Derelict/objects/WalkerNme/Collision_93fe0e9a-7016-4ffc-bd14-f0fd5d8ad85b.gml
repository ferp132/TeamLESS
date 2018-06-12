/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x+hsp,y,objCollision)) //since x is predefined, now so if the movement x+hsp collides with block
{
   while(!place_meeting(x+sign(hsp),y,objCollision))	// if there isnt collision 1 pixel to the left or right
   {
   x=x+sign(hsp);	//push the characters coordinate as close by increasing it by 1 pixel
   }
   hsp=-hsp;

   
}