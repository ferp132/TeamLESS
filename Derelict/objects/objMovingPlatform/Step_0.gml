hMovement = MoveSpeed * MoveCheck * MoveDir;

if (MoveDir == 1 && x >= PointEnd)
{

	hMovement	= 0;
	MoveDir		= -MoveDir;
	
	PointTemp	= PointStart;
	PointStart	= PointEnd;
	PointEnd	= PointTemp;
}
else if (MoveDir == -1 && x <= PointEnd)
{

	hMovement	= 0;
	MoveDir		= -MoveDir;
	
	PointTemp	= PointStart;
	PointStart	= PointEnd;
	PointEnd	= PointTemp;
}

x += hMovement;
