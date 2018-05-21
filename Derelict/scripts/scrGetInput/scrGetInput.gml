//Get players input
moveRight = keyboard_check(ord("D")); //Bool. Equals 0 if not pressed
moveLeft = -keyboard_check(ord("A"));
moveJump = keyboard_check_pressed(vk_space);

