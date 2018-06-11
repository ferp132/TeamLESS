scrPushBoxCollision();

scrHorzCollision();
x += hMovement;
hMovement = lerp(hMovement, 0, 0.5);

scrVertCollision()
if(!place_meeting(x, y + 1, objCollision)) vMovement += Gravity;
y += vMovement;
