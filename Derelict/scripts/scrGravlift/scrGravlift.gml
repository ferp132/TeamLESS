if(instance_position(x,y,objLiftBox)) 
{
with(instance_position(x,y,objLiftBox)) 
{
if(other.vMovement > LiftPower)
{
	other.vMovement = lerp(other.vMovement, LiftPower, 0.8);
}
else
{
	other.vMovement += LiftPower;
}
}
}