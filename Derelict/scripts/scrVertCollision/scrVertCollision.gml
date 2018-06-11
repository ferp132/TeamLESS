//Vertical collision
if (place_meeting(x, y + vMovement, objCollision))
{
    while (!place_meeting(x, y+sign(vMovement), objCollision)) y += sign(vMovement);
    vMovement = 0;
}

//-----MovingPlatform Collsion
with (instance_place(x, y + 1, objMovingPlatform))
{
	if(id == objPlayer)	MoveCheck = true;
	if(other.hMovement == 0)						other.x += hMovement;
	if(sign(other.hMovement) == sign(hMovement))	other.x += hMovement;
}

if(object_get_name(object_index) == objPlayer) if (!CanMove) vMovement = 0;