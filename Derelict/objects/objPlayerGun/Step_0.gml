/// @description Sprite and aiming direction
dir = point_direction(x, y, mouse_x, mouse_y);
image_angle = dir;

if (dir < 90 && dir >= 0) || (dir > 270 && dir <= 359)
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

if (mouse_check_button(mb_left) && canShoot)
{
    instance_create_layer(bulletX, bulletY,0, objPlayerBullet);
    canShoot = false;
    shootDelay = 0;
}

if (canShoot == false)
{
    shootDelay++;
    if (shootDelay == firerate)
    {
        canShoot = true;
    }
}

