image_angle += sign(hMovement) * Spin;
scrGravlift();

if(!place_meeting(x, y+1, objCollision)) vMovement += Gravity;

hMovement	= lerp(hMovement, 0, 0.2);
Spin		= lerp(Spin, 0, 0.2);
scrHorzCollision();
x+= hMovement;
scrVertCollision();
y += vMovement;