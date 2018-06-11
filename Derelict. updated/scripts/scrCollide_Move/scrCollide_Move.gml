/// scrCollide_Move(objectToMove)
// This script takes in an object that you are checking collisions for if they have the required variables
//Horizontal collision
if (place_meeting(argument0.x+argument0.currentSpeed, argument0.y, objCollision))
{
    while (!place_meeting(argument0.x+sign(argument0.currentSpeed), argument0.y, objCollision))
    {
        argument0.x += sign(argument0.currentSpeed);
    }
    argument0.currentSpeed = 0;
}
argument0.x += argument0.currentSpeed;

//Vertical collision
if (place_meeting(argument0.x, argument0.y+argument0.jumpSpeed, objCollision))
{
    while (!place_meeting(argument0.x, argument0.y+sign(argument0.jumpSpeed), objCollision))
    {
        argument0.y += sign(argument0.jumpSpeed);
    }
    argument0.jumpSpeed = 0;
}
argument0.y += argument0.jumpSpeed;
