if (place_meeting(x,y, objCollision))      //after drawing the bullet destroy once collision, you can put this in a step event
{
    instance_destroy();
}

if (place_meeting(x,y, objPlayer))      //after drawing the bullet destroy once collision, you can put this in a step event
{
    instance_destroy();
}

