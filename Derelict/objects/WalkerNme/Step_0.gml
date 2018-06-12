hp=hp+0.01;

if(death==false && attacking==false){
vsp=vsp+grv ;//by default it pushes the character down

//collision
delay=5;		//resets the delay
image_speed=1
sprite_index=WalkerWalk;
x=x+hsp;



if (place_meeting(x,y+vsp,objCollision))
{
	sprite_index=WalkerWalk;
    while(!place_meeting(x,y +sign(vsp),objCollision))
   {
   y=y +sign(vsp);
    
   }

 vsp = 0;
}



y=y+vsp;

 
	  
if(hsp==0 )
{
	sprite_index=WalkerIdle;
}
if(hsp!=0)
{
		
    image_xscale=sign(hsp);     //syncs the scale to the speed
}



//enemy attacking and chasing MAIN PLAYER only if not dead and if not attacking


if(instance_exists(objPlayer)){
if(distance_to_object(objPlayer)<300)		//play around with these numbers for ai detection
{
dir=sign(objPlayer.x-x);	
	hsp=dir*3.5;			//play around with these numbers for ai detection and response
	if(distance_to_object(objPlayer)<2)
	{
		
		sprite_index=WalkerAttack;
		attacking=true;
		
	}
	if(distance_to_object(objPlayer)>301)  //play around with these numbers for ai detection
	{
		attacking=true;
	
	}
}


}


}

if(attacking==true){

if(!place_meeting(x+hsp, y, objPlayer))	//when not collision with player
{												//this is for attack cooldown

if(sprite_index==WalkerAttack )
{
	
		
	image_speed=1;
	if( image_index>=10){
				
		image_speed=0;
		delay--;	
			
	}
}

if(place_meeting(x+hsp, y, objPlayer))	//when not collision with player
{												//this is for attack cooldown


	image_speed=1;
	if( image_index>=8)
	{
		objPlayer.phealth--
	}
}



if(sprite_index==WalkerAttack )
{
	image_speed=1;
	if( image_index>=10){
		
		image_speed=0;
		delay--;	//attackcooldown
	
	}}

}

if(place_meeting(x+hsp, y, objPlayer))	//when not collision with player
{												//this is for attack cooldown


	image_speed=1;
	if( image_index>=8)
	{
		objPlayer.phealth--
	
	}
}


}

if(place_meeting(x, y+5, objPlayerBullet))
{
	hp=hp-1
	flash=1
	
}


	
	
if(delay<=0)
{

attacking=false;	//reseteverything after cooldown

}


if(hp<=0)			//MUST USE RANDOMIZER TO AFFECT HEALTH IE;CREATE A DODGING ABILITY
{
	death=true;
	image_speed=1
	sprite_index=WalkerDead;
	
		if(image_index>=27)
		{
			instance_destroy();	
		}	
	
	
}

