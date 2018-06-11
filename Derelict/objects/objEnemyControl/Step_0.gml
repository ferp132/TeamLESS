// After miniboss has been spawned and killed
if (constWave)
{
	spawnRate = 14;
}


randomize();
randX = irandom_range(x-500, x+500);
randY = irandom_range(y-300, y+300); 
chosenEnemy = choose(bat_nme, GooNME, Scourge);

if (canSpawn)
{
    if (instance_number(chosenEnemy) <= 10)
    {
        if (collision_rectangle(randX-16, randY-16, randX+16, randY+16, chosenEnemy, false, true))
        {
            exit;
        }          
        else
        {
			if (place_free(randX, randY))
            //if (position_meeting(randX, randY, objCollision))
            //if (position_meeting(randX, randY, objWall))
            {
				while (!position_meeting(randX, randY+34, objCollision))
				{
					randY++;
				}
                var inst = instance_create_layer(randX, randY, 0, chosenEnemy);
                //inst.y -= 17;
            
                spawnDelay = 0;
                canSpawn = false;
            }  
        }
        
    }
}

if (hiddenScore >= 500)
{
	instance_create_layer(x, y, "Instances", WalkerNme);
	instance_create_layer(x, y, "Instances", GooNME);
	bossWave = true;
}

if (!canSpawn && !bossWave)
{
    spawnDelay++;
    if (spawnDelay == spawnRate)
    {
        spawnDelay = spawnRate;
        canSpawn = true;
    }
}

