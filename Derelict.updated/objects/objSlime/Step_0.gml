Decay--;
image_xscale = lerp(image_xscale, SplashArea, 0.15);
if (Decay <= 0) instance_destroy();