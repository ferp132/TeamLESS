/// @description Insert description here
// You can write your code in this editor
x = objPlayer.x+50;
y = objPlayer.y;

//====== Dash Mods ========
if (scrEquipModCheck(1))
{
	maxDashes = 1;
}
else if (scrEquipModCheck(0))
{
	maxDashes = 0;
}

if (isDashing != 0)
{
	scrDash();
}

if (dashCountDown != 0)
{
	dashCountDown--;
}

if (dashCountDown == 0) //&& (currentDash == 0)
{
	currentDash = maxDashes;
}


//====== Shield Mods ======
if (shieldActive == 0) && (scrEquipModCheck(2))	// Turns shield on or off
{
	alarm[0] = shieldCD;
	/*if (shieldActive)
	{
		shieldActive = 0;
	}
	else
	{
		shieldActive = 1;
		objEnergyShieldEffect.image_alpha = 1;
	}*/
}