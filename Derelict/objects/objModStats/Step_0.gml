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
	shieldActive = 1;
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

//===== Damage Reduction =====
if (instance_exists(objPlayer))
{
	dmgReduction = objPlayer.maxHp*0.1;
}

//==== Movespeed increase ====
if (instance_exists(objPlayer)) && (scrEquipModCheck(4))
{
	objPlayer.movespeed = objPlayer.movespeed + moveSpeedIncrease;
}

//==== Health up ====
if (instance_exists(objPlayer)) && (scrEquipModCheck(5))
{
	objPlayer.maxHp = objPlayer.maxHp + hpIncrease;
}