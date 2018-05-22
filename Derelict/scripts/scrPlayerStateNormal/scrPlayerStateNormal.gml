scrGetInput();
//React to inputs
//Gravity
if (jumpSpeed < 10)
{
    jumpSpeed += grav;
    
}

//Horizontal movement
move = moveLeft + moveRight;
currentSpeed = move * movespeed;

if (currentSpeed != 0)
{
    sprite_index = sprPlayerRun;    // Set player sprite to the run animation if moving
    image_speed = 0.15;             //Set image speed so run animation isn't ridiculously fast
}
else
{
    sprite_index = sprPlayerIdle;   // Set player sprite to idle sprite if not moving.
}

if (jumpSpeed < 0)
{
    sprite_index = sprPlayerJump;
}

//Jumping
if (place_meeting(x, y+1, objCollision))
{
    jumpSpeed = moveJump * -jumpHeight;
}

scrCollide_Move();
