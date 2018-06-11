if(Decay <= 30)image_alpha = lerp(image_alpha, 0, 0.1);
if(Decay <= 0) instance_destroy();
image_angle += sign(hMovement) * Spin;
scrGravlift();

if(!place_meeting(x, y+1, objCollision)) vMovement += Gravity;

hMovement = lerp(hMovement, 0, 0.2);

scrHorzCollision();
x+= hMovement;
scrVertCollision();
y += vMovement;

Decay--;