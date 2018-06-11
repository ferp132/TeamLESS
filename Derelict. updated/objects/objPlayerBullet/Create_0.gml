/// @description Initialise Variables
travelTime = objPlayerGun.bulletSpeed;
offset = objPlayerGun.offset;
dir = objPlayerGun.dir + offset;
//dir = 0;
image_angle = dir;
BulletDamage = objPlayerGun.damage;


motion_set(dir, travelTime);

