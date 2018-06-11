/// @description Initialise variables
// You can write your code in this editor
image_speed = 0;
enum modType {
	dashh = 0,
	dblDash,
	energyShield
}

randomize();
typeMod = choose(modType.dashh, modType.dblDash, modType.energyShield);

image_index = typeMod;

