/// @description ==== Initialising Mod Stats ====

// == Dash (index = 0) & Double Dash (index = 1)
dashSpeed = 20;				// How fast the player dashes
dashDistance = 0;			// Distance the player has dashed
maxDashDistance = 200;		// How far the player can dash
dashCD = room_speed*2;		// Cooldown
dashCountDown = 0;			// Used to count down the cooldown
maxDashes = 0;				// Maximum times the dash can be used consecutively
currentDash = 0;			// 
isDashing = 0;				// Whether the player is currently dashing right now or not


// == Energy Shield (index = )
shieldActive = 0;			// Whether the shield is active or not
shieldCD = room_speed*5;	// Cooldown
shieldCountDown = 0;		// Used to count down for when the shield is ready next
