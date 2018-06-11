/// @description Initialise Variables
//Scoring
hiddenScore = 0;
spawnRate = 200/(1+(hiddenScore*0.025));
//spawnRate = 31;
spawnDelay = spawnRate;
canSpawn = false;

bossWave = false;

// After miniboss has been spawned and killed
constWave = false;