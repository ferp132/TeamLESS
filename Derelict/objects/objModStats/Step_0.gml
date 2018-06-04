/// @description Insert description here
// You can write your code in this editor
x = objPlayer.x+50;
y = objPlayer.y;
if (scrModCheck(1))
{
	maxDashes = 1;
}
else if (scrModCheck(0))
{
	maxDashes = 0;
}

if (isDashing != 0)
{
	scrDash();
}

if (dashCountDown != 0)
{
	dashCountDown--;
}

if (dashCountDown == 0) //&& (currentDash == 0)
{
	currentDash = maxDashes;
}
