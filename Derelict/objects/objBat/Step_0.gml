if(death==false)
{

if (distance_to_object(objPlayer) <= DetRange) && !collision_line(x,y, objPlayer.x, objPlayer.y, objCollision,false, true)
 {
	pointdir= point_direction(x,y, objPlayer.x, objPlayer.y);
  image_angle = image_angle + sin(degtorad(pointdir-image_angle)*-2);
  active = true;
  idle=false;
 
   }
else
{
	active =false;
	idle=true;
	sprite_index=spacebats_idle;
	image_speed=0.5;
	
}

if (active==true && idle==false)
{
	sprite_index=spacebats_attack;				//spits acid and image changes to attack
	 image_speed=0.5;
	
}

}
if(EnemyHP<=0)			
{
	death=true;
	
	sprite_index=spacebats_death;
	if(image_index>=9)
	{
		instance_destroy();
	}
}