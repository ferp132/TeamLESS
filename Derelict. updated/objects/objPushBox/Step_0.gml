scrPushBoxCollision();
scrGravlift();

scrHorzCollision();
x += hMovement;
hMovement = lerp(hMovement, 0, 0.5);

scrVertCollision()
if(!place_meeting(x, y + 1, objCollision)) vMovement += Gravity;
if(place_meeting(x, y+1, objPlayer)) instance_destroy();
y += vMovement;
