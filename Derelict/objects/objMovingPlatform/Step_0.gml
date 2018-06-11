xMovement = MoveSpeed * MoveCheck * MoveDir;

if (x+xMovement == PointEnd)
{
	while (x != PointEnd) x += sign(MoveDir);
	xMovement	= 0;
	MoveDir		= -MoveDir;
	
	PointTemp	= PointStart;
	PointStart	= PointEnd;
	PointEnd	= PointTemp;
}

x += xMovement;
