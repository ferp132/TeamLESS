/// @description Initialise variables
// You can write your code in this editor
image_speed = 0;
enum modType {
	dashh = 0,
	dblDash = 1,
	energyShield = 2,
	twinblast = 6,
	repeatershot = 7,
	pulseblast = 8
}

randomize();
typeMod = choose(modType.dashh, modType.dblDash, modType.energyShield, modType.pulseblast, modType.repeatershot, modType.twinblast);

image_index = typeMod;

