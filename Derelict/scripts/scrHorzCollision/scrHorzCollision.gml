// BaseCollision
//Horizontal collision
{
	if (place_meeting(x+hMovement, y, objCollision))
	{
	    while (!place_meeting(x+sign(hMovement), y, objCollision)) x += sign(hMovement);
		with (instance_place(x + hMovement, y, objMovingPlatform)) other.x += xMovement;
		hMovement = 0;
	}
}




//-----Suckler Collision
if(object_get_name(object_index) == objPlayer)
{
var EnemyCollide = collision_circle(x, y, 8, objEnemySuckler, false, true);

if (EnemyCollide == objEnemySuckler )
{
	with(EnemyCollide) 
	{
		if(AttackDelay <= 10) CanMove = true;
		CurrentState = State.Attack;
	}
	CanMove = false;
}
else CanMove = true;

if (!CanMove) hMovement = 0;
}