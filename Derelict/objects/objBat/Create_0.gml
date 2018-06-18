event_inherited();
randomize();

EnemyHP		= 70;
vMovement	= 0;
hMovement	= 0;
hSpeed		= 10;
vSpeed		= -15;
MoveDir		= 1;
DetRange	= 1024;
Gravity		= 2;

JumpTimerBase	= 180;
JumpTimer		= JumpTimerBase;


active=false;
var pointdir;
death=false;
alarm[0]=60;	//starts of as 1 minute timer
flash=4;        //white flashes when hit must be the same value as the hp
idle=false;
image_speed=0;