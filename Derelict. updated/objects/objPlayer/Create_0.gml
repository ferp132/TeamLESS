/// @description Initialise Variables
//Horizontal movement
hSpeed		= 6;			//-----Mow much the player can move per step
hMovement		= 0;		//Current movement speed
hInput			= 0;		//-----Players Right-Left Input
Acceleration	= 1.2;

//Vertical movement
vMovement		= 0;
vSpeed			= -16;
vInput			= 0;		//-----Players Up/Space Input

//Gravity
Gravity			= 1;

OnSlime			= 0;
CanMove			= true;
maxHp			= 100;
phealth			= maxHp;
ControlsDisabled = 0;
DisableTimer = 15;
JumpTimer		= 3;
CanJump = true;


keyboard_set_map(ord("W"), vk_space);

enum state {
    normal,
    run,
    jump,
}
currentState = state.normal;

coins = 500;
