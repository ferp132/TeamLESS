/// @description Sprite and aiming direction
dir = point_direction(x, y, mouse_x, mouse_y);
image_angle = dir;

if (dir < 90 && dir > 0) || (dir > 270 && dir <= 359) || (dir == 0)
{
    image_xscale = 1;
    image_yscale = 1;
    objPlayer.image_xscale = 1;
    
    x = objPlayer.x + 4;
    y = objPlayer.y - 8;
}
else if (dir > 90 && dir < 270)
{
    image_xscale = 1;
    image_yscale = -1;
    objPlayer.image_xscale = -1;
    
    x = objPlayer.x - 4;
    y = objPlayer.y - 8;
}

///Shooting
bulletX = x + lengthdir_x(35, dir);
bulletY = y-1 + lengthdir_y(35, dir);

// Shooting with mods
if (scrEquipModCheck(9))	// Player has firerate upgrade equipped
{
	firerate = 26;
}

if (scrEquipModCheck(10))	// Player has damage upgrade equipped
{
	damage = 30;
}

if (scrEquipModCheck(11))	// Player has bullet speed upgrade equipped
{
	bulletSpeed = 10.5;
}

if (mouse_check_button(mb_left) && canShoot && !showInv)
{
	if ((scrEquipModCheck(6)) && (scrEquipModCheck(7)))
	{
		if (repeater mod 2 == 0)
		{
			repeater++;
			instance_create_layer(bulletX-((repeater*4) * objPlayer.image_xscale), bulletY-5,0, objPlayerBullet);
			instance_create_layer(bulletX-((repeater*4) * objPlayer.image_xscale), bulletY+5,0, objPlayerBullet);
		}
		if (repeater mod 2 == 1)
		{
			repeater++;
		}
		if (repeater == 6)
		{
			canShoot = false;
			shootDelay = 0;
			repeater = 0;
		}
	}
	if ((scrEquipModCheck(6)) && (scrEquipModCheck(8)))
	{
		offset = -30;
		instance_create_layer(bulletX, bulletY,0, objPlayerBullet);
		offset = -25;
		instance_create_layer(bulletX, bulletY,0, objPlayerBullet);
		offset = -15;
		instance_create_layer(bulletX, bulletY,0, objPlayerBullet);
		offset = -10;
		instance_create_layer(bulletX, bulletY,0, objPlayerBullet);
		offset = 30;
		instance_create_layer(bulletX, bulletY,0, objPlayerBullet);
		offset = 25;
		instance_create_layer(bulletX, bulletY,0, objPlayerBullet);
		offset = 15;
		instance_create_layer(bulletX, bulletY,0, objPlayerBullet);
		offset = 10;
		instance_create_layer(bulletX, bulletY,0, objPlayerBullet);
		offset = 0;
		instance_create_layer(bulletX, bulletY-5,0, objPlayerBullet);
		instance_create_layer(bulletX, bulletY+5,0, objPlayerBullet);
		
		canShoot = false;
		shootDelay = 0;
	}
	if ((scrEquipModCheck(7)) && (scrEquipModCheck(8)))
	{
		if (repeater mod 2 == 0)
		{
			repeater++;
			offset = -30;
			instance_create_layer(bulletX, bulletY,0, objPlayerBullet);
			offset = -15;
			instance_create_layer(bulletX, bulletY,0, objPlayerBullet);
			offset = 30;
			instance_create_layer(bulletX, bulletY,0, objPlayerBullet);
			offset = 15;
			instance_create_layer(bulletX, bulletY,0, objPlayerBullet);
			offset = 0;
			instance_create_layer(bulletX, bulletY,0, objPlayerBullet);
		}
		if (repeater mod 2 == 1)
		{
			repeater++;
		}
		if (repeater == 6)
		{
			canShoot = false;
			shootDelay = 0;
			repeater = 0;
		}
	}
	else if (scrEquipModCheck(6))	// Twin shot equipped
	{
		instance_create_layer(bulletX, bulletY-5,0, objPlayerBullet);
		instance_create_layer(bulletX, bulletY+5,0, objPlayerBullet);
		canShoot = false;
		shootDelay = 0;
	}
	else if (scrEquipModCheck(7))	// Repeater shot equipped
	{
		if (repeater mod 2 == 0)
		{
			repeater++;
			instance_create_layer(bulletX-((repeater*4) * objPlayer.image_xscale), bulletY,0, objPlayerBullet);
			
		}
		if (repeater mod 2 == 1)
		{
			repeater++;
		}
		if (repeater == 6)
		{
			canShoot = false;
			shootDelay = 0;
			repeater = 0;
		}
	}
	else if (scrEquipModCheck(8))	// Pulse shot equipped
	{
		offset = -30;
		instance_create_layer(bulletX, bulletY,0, objPlayerBullet);
		offset = -15;
		instance_create_layer(bulletX, bulletY,0, objPlayerBullet);
		offset = 30;
		instance_create_layer(bulletX, bulletY,0, objPlayerBullet);
		offset = 15;
		instance_create_layer(bulletX, bulletY,0, objPlayerBullet);
		offset = 0;
		instance_create_layer(bulletX, bulletY,0, objPlayerBullet);
		
		canShoot = false;
		shootDelay = 0;
	}
	else
	{
		instance_create_layer(bulletX, bulletY,0, objPlayerBullet);
		canShoot = false;
		shootDelay = 0;
	}
}

if (canShoot == false)
{
    shootDelay++;
    if (shootDelay == firerate)
    {
        canShoot = true;
    }
}

