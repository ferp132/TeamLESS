if(CurrentState == State.Dead) 
{
	RespawnTimer--;
	if (RespawnTimer <= 0)
	{
		CurrentSucklerHealth	= BaseHealth
		CurrentState			= State.Idle;
	}
}
else if(CurrentSucklerHealth <= 0)											CurrentState = State.Dying;
else if(place_meeting(x + 5, y, objPlayer))								CurrentState = State.Attack;
else if(collision_circle(x, y, DetectionRad, objPlayer, false, true))	CurrentState = State.Alert;
else																	CurrentState = State.Idle;

switch (CurrentState)
{
case State.Idle:
{
	image_index = 0;
	break;
}
case State.Alert:
{
	if(SpitDelay <= 0)
	{
		with(instance_create_layer(x, y - 8, "Instances", objSlime))
		{
			SplashArea = round((other.DetectionRad*1.5)/64);
		}
		SpitDelay	= 360;
		AttackDelay += 30;
	}
	break;
}
case State.Attack:
{
		with(instance_place(x + 5, y, objPlayer))
		{
			if (other.AttackDelay <= 0)
			{
			
				phealth				-= 10;
				other.SpitDelay		+= 30;
				other.AttackDelay	= 60;
			}
			
		}	
	break;
}
case State.Hit:
{
	
	break;
}
case State.Dying:
{
	RespawnTimer	= 60;
	image_index		= 1;
	CurrentState	= State.Dead;
	break;
}
}

AttackDelay--;
SpitDelay--;