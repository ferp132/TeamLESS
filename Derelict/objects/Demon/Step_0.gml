firedelay=firedelay-0.5;

if(death==false && attacking==false && detected ==false)
{
			vsp=vsp+grv;
			//collision
		//delay=5;		//resets the delay
		image_speed=0.5
		sprite_index=Demonrestless;		//base state when alive
		hsp=0



		if (place_meeting(x,y+vsp,objCollision))
		{
	
		    while(!place_meeting(x,y +sign(vsp),objCollision))
		   {
		   y=y +sign(vsp);
    
		   }

		 vsp = 0;
		}

		y=y+vsp;

 
	  
		if(hsp==0 )		//stops the demon when stationary 
		{
			sprite_index=Demonrestless;
		}
		if(instance_exists(objPlayer)){
		if(objPlayer.hsp!=0)//looks at the player regardles where the player is
		{		
		     image_xscale=sign(objPlayer.x-x);    
		}
		}
	
	

	


}
	
		if(sprite_index==DemonDash)		//if demondashes sprites activated
		{
			if(distance_to_object(objPlayer)<=200){
		hsp=sign(objPlayer.x-x)*5;	
				
		Demon.x=Demon.x+hsp;
		
		
		if(image_index>=6)
		 {
			image_speed=0;	 
		 }
			
		}
		if(distance_to_object(objPlayer)>=200)
		{
			image_index=6
			
		}
		
		}
	
if(instance_exists(objPlayer)){
if(distance_to_point(objPlayer.x, clamp(y,y-20,y+81))<200) && (backtopos==false) && (duration<=0) && (ranged==false)
{
		
		sprite_index=DemonDash;
		detected=true
		attacking=true;
	
		hsp=sign(objPlayer.x-x)*5;	
	
		x=x+hsp;
		
		if(distance_to_object(objPlayer)<=20)//play around with these numbers for ai detection and response
		{
			sprite_index=DemonPunch;
			image_speed=0.5;
			if(place_meeting(x,y,objPlayer))
			{
				if(image_index==3)
				{
				objPlayer.phealth--
				
				
				backtopos=true
				duration=40
								
				
				}
			}
		
		}
		
				
}
	
	
	if(duration>0) && (sprite_index!=DemonGapingattack)
	{
		hsp=sign(initialposx-x)*5;	
		//vsp=sign(initialposy-y)*5;
		x=x+hsp;
		
		duration--;
		backtopos=false
		
		attacking=false
		detected=false//base state when alive
		if(duration<=0){
			ranged=true		
		}
	}
	
	
	
	if(objPlayer.hsp!=0)//looks at the player regardles where the player is
		{		
		     image_xscale=sign(objPlayer.x-x);    

		}
		
		
		
		
if(distance_to_object(objPlayer)>193) && (ranged==true)  //play around with these numbers for ai detection
{
	hsp=0;
detected=true


if(firedelay<=0){
sprite_index=DemonGapingattack;
image_speed=0.8;
if(image_index>=8)
{
	firedelay=10;
instance_create_layer(x+ (sign(objPlayer.x-x)*45),y+20,"Instances" ,demonball) 
}
}
}


if(image_index>=9)
{

sprite_index=Demonrestless;
detected=false
ranged=false
}

}	


if(sprite_index==DemonGapingattack)
{
if(firedelay<=0){
if(image_index>=8)
{
instance_create_layer(x+ (sign(objPlayer.x-x)*45),y+20,"Instances" ,demonball) 
}}
	
	
if(image_index>=9)
{

sprite_index=Demonrestless;
detected=false
ranged=false
}	
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

