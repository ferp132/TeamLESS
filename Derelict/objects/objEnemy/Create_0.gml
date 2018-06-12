enum State
{
	Idle		= 0,
	Alert		= 1,
	Attack		= 2,
	Hit			= 3,
	Dying		= 4,
	Dead		= 5
}

randomize();
spawnMod = irandom_range(0, 101);

//Variables For enemies
EnemyHP		= 10;
vMovement	= 0;
hMovement	= 0;
hSpeed		=5;
vSpeed		= -10;