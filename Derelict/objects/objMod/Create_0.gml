/// @description Initialise variables
// You can write your code in this editor
image_speed = 0;
enum modType {
	dashh = 0,
	dblDash,
	armourUp
}

randomize();
typeMod = choose(modType.dashh, modType.dblDash, modType.armourUp);

image_index = typeMod;
