scrGetInput();
OnSlime = place_meeting(x, y+1, objSlime);

//-----Set Jump
if(place_meeting(x, y+1, objCollision) && !OnSlime)
{
	if(vInput)	vMovement = vSpeed;
} else			vMovement += Gravity;

//-----Set Horizontal Movement
if(OnSlime) 
{
	hMovement +=	sign(hMovement) * Acceleration;
	hMovement =		clamp(hMovement, -hSpeed/2, hSpeed/2);
}
else if (hInput == 0) hMovement = 0;
else
{
	hMovement +=	hInput * Acceleration;
	hMovement =		clamp(hMovement, -hSpeed, hSpeed)
}

//-----Apply Movement  & Collision Checks
scrHorzCollision();
x += hMovement;
scrVertCollision();
y += vMovement;

//-----Set Sprite Direction
switch (currentState)
{
    case state.normal:
    scrPlayerStateNormal();
    break;
}
