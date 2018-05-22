/// @description Initialise Variables
hp = 100;

//Horizontal movement
movespeed = 6;          //Acceleration
currentSpeed = 0;   //Current movement speed

//Vertical movement
jumpSpeed = 0;
jumpHeight = 18;

//Gravity
grav = 0.7;        //How much gravity will affect us

enum state {
    normal,
    run,
    jump,
}
currentState = state.normal;

