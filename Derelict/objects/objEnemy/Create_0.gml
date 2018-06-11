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