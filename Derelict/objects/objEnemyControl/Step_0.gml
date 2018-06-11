// After miniboss has been spawned and killed
if (constWave)
{
	spawnRate = 41;
}


if (instance_exists(objPlayer))
{
	x = objPlayer.x;
	y = objPlayer.y;
}
randomize();
//randX = irandom_range(x-viewWidth, x+viewWidth);
//randY = irandom_range(y-viewHeight, y+viewHeight); 
randDis = irandom_range(0, 1000);
randDir = irandom_range(0, 360);

randX = clamp(objPlayer.x+lengthdir_x(200+randDis,randDir),0,room_width);
randY = clamp(objPlayer.y+lengthdir_y(200+randDis,randDir),0,room_height);
chosenEnemy = choose(bat_nme, GooNME, Scourge);

if (canSpawn)
{
    //if (instance_number(chosenEnemy) <= 10)
    //{
		
		if (collision_rectangle(randX-32, randY-32, randX+32, randY+32, objCollision, false, true))
		{
			exit;
		}
		if (place_free(randX, randY) && (point_distance(randX, randY, objPlayer.x, objPlayer.y) >= 200))
        //if (position_meeting(randX, randY, objCollision))
        //if (position_meeting(randX, randY, objWall))
        {
			while (!position_meeting(randX, randY+50, objCollision))
			{
				++randY;
				if (position_meeting(randX, randY, objCollision))
				{
					exit;
				}
				if (point_distance(randX, randY, objPlayer.x, objPlayer.y) >= 200)
				{
					break;
				}
				if (!collision_line(randX, randY, randX, room_height, objCollision, false, true))
				{
					exit;
				}
			}
            //inst.y -= 17;
            instance_create_layer(randX, randY, "Instances", chosenEnemy);
            spawnDelay = 0;
            canSpawn = false;
        }
		else
		{
			exit;
		}
        
    //}
}

// When the player enters a specific area? Or if their hidden score hits a certain threshold? 
// Top left coordinates of rectangle to see if player is in there
xx1 = 0;
yy1 = 0;
// Bottom right coordinates of rectangle to see if player is in there
xx2 = 500;
yy2 = 500;

// Spawning mini-boss
if (hiddenScore >= 12) //|| (collision_rectangle(xx1, yy1, xx2, yy2, objPlayer, false, true))
{
	instance_create_layer(x, y, "Instances", WalkerNme);
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

