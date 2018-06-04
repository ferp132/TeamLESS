// I could make this script take in an object as an argument to have other entities besides the player utilise this script

objPlayer.currentSpeed = objPlayer.image_xscale * objModStats.dashSpeed;
//jumpSpeed = vDashSpeed * vdir;

/*var dashEffect = instance_create(x, y, objPlayerDashEffect);
dashEffect.sprite_index = sprite_index;
dashEffect.image_index = image_index;
dashEffect.image_xscale = image_xscale;*/

scrCollide_Move(objPlayer);
objModStats.dashSpeed = objModStats.dashSpeed + objModStats.dashDistance;
    
if (objModStats.dashSpeed >= objModStats.maxDashDistance)
{
    //jumpSpeed = jumpSpeed/4;
    objModStats.countDown = objModStats.dashCD;
}

///==== Make the dash work properly. It technically works as intended, but I need it to work better====///