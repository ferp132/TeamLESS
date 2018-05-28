randomize();
randX = irandom_range(x-200, x+200);
randY = irandom_range(y-200, y+200); 
chosenEnemy = choose(bat_nme);

if (canSpawn)
{
    if (instance_number(chosenEnemy) <= 10)
    {
        if (collision_rectangle(randX-16, randY-16, randX+16, randY+16, bat_nme, false, true)) //|| collision_rectangle(randX-16, randY-16, randX+16, randY+16, tempEnemy2, false, true) || collision_rectangle(randX-16, randY-16, randX+16, randY+16, tempEnemy3, false, true) || collision_rectangle(randX-16, randY-16, randX+16, randY+16, tempEnemy4, false, true))
        {
            exit;
        }          
        else
        {
            if (position_meeting(randX, randY+49, objCollision))
            //if (position_meeting(randX, randY, objWall))
            {
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
	instance_create_layer(x, y, 0, objTempMiniBoss);
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

