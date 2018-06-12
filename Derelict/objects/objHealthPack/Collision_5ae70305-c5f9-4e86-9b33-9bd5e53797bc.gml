if(objPlayer.phealth < objPlayer.maxHp)
{
objPlayer.phealth += choose(5, 10, 15, 20);
audio_play_sound(sndHealthUp, 0, 0);
instance_destroy();
}