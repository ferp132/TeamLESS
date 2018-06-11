enum State
{
	Idle		= 0,
	Alert		= 1,
	Attack		= 2,
	Hit			= 3,
	Dying		= 4,
	Dead		= 5
}

enum modArmourTypes {
	dashh = 0,
	dblDash,
	energyShield
}
enum modGunTypes{
	twinblast = 6,
	repeaterShot = 7,
	pulseBlast = 8
}

modDrop = false;

randomize();
modDropType = irandom_range(0, 101);	// 1 represents armour type mods, 2 represents gun type mods.
if ((modDropType >= 1) && (modDropType <= 5))
{
	modDrop = true;
	modDropped = choose(modArmourTypes.dashh, modArmourTypes.dblDash, modArmourTypes.energyShield);
}
else if ((modDropType >= 60) && (modDropType <= 65))
{
	modDrop = true;
	modDropped = choose(modGunTypes.twinblast, modGunTypes.repeaterShot, modGunTypes.pulseBlast);
}