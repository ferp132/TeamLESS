/// ==== Mod stats ====
// Dash (enum modType = 0)
dashSpeed = 20;			// How fast the player dashes
dashDistance = 0;		// Distance the player has dashed
maxDashDistance = 200;	// How far the player can dash
dashCD = room_speed*2;	// Cooldown
countDown = 0;			// Used to count down the cooldown
maxDashes = 1;			// Maximum times the dash can be used consecutively
