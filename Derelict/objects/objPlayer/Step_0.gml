if (phealth == 0)
{
	room_restart();
}

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
else if(ControlsDisabled)
{

}
else if (hInput == 0) hMovement = 0;
else
{
	hMovement +=	hInput * Acceleration;
	hMovement =		clamp(hMovement, -hSpeed, hSpeed)
}

//-----GravLift
scrGravlift();

//-----Apply Movement  & Collision Checks
scrHorzCollision();
x += hMovement;
scrVertCollision();
y += vMovement;

if(ControlsDisabled)
{
	if (DisableTimer <= 0) 
	{
		ControlsDisabled = 0;
		DisableTimer = 15;
	}
	DisableTimer--;
}

//-----Set Sprite Direction
switch (currentState)
{
    case state.normal:
    scrPlayerStateNormal();
    break;
}

if(keyboard_check(ord("R"))) room_restart();