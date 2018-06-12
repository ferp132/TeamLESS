if(death==false){

if(collision_rectangle(x - DetRange, y - DetRange, x+DetRange, y+DetRange, objPlayer, false, true))
{
	MoveDir = sign(objPlayer.x - x)
}
else
{
	MoveDir = choose(1, -1);
}


if(place_meeting(x ,y + 1, objCollision))
{
	if(JumpTimer <= 0)
	{
		vMovement += vSpeed;
		hMovement += MoveDir * hSpeed;
		JumpTimer = JumpTimerBase;
	} else 
	{
		JumpTimer--;
		hMovement =0;
	}
} else vMovement += Gravity;

 if(place_meeting(x + 1, y, objPlayer) || place_meeting(x - 1, y, objPlayer)) 
{
	scrPlayerKnockBack();
	scrEnemyKnockBack();
	hMovement = objPlayer.hMovement;
}
if(place_meeting(x, y-1, objPlayer)) 
{
	EnemyHP = 0;
	scrPlayerKnockBack();
	scrEnemyKnockBack();
}

 scrGravlift();
scrHorzCollision();
x += hMovement;
scrVertCollision();
y += vMovement;

}

if(EnemyHP<=0)			
{
	death=true;
	
sprite_index=Goodead;
if(image_index>=5)
{
	instance_destroy();
}
}
