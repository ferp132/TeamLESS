if (hMovement != 0){
					sprite_index = sprPlayerRun;	// Set player sprite to the run animation if moving
					image_speed = 0.15;				//Set image speed so run animation isn't ridiculously fast
}
if (hInput == 0)	sprite_index = sprPlayerIdle;	// Set player sprite to idle sprite if not moving.
if (vMovement < 0)	sprite_index = sprPlayerJump;


