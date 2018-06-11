scrGravlift();
y += vMovement/100;

image_yscale = lerp(image_yscale, 2, 0.005);

if(y < MaxHeight) instance_destroy();