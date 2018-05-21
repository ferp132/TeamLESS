//Horizontal collision
if (place_meeting(x+currentSpeed, y, objCollision))
{
    while (!place_meeting(x+sign(currentSpeed), y, objCollision))
    {
        x += sign(currentSpeed);
    }
    currentSpeed = 0;
}
x += currentSpeed;

//Vertical collision
if (place_meeting(x, y+jumpSpeed, objCollision))
{
    while (!place_meeting(x, y+sign(jumpSpeed), objCollision))
    {
        y += sign(jumpSpeed);
    }
    jumpSpeed = 0;
}
y += jumpSpeed;
