/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
enum modType {
	dashh = 0,
	dblDash
}

randomize();
typeMod = choose(modType.dashh, modType.dblDash);

image_index = typeMod;