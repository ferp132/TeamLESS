/// @description Insert description here
// You can write your code in this editor
x = objPlayer.x+50;
y = objPlayer.y;

//====== Dash Mods ========
if (scrModCheck(1))
{
	maxDashes = 1;
}
else if (scrModCheck(0))
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
if (keyboard_check_pressed(ord("B")))
{
	if (shieldActive)
	{
		shieldActive = 0;
	}
	else
	{
		shieldActive = 1;
		objEnergyShieldEffect.image_alpha = 1;
	}
}