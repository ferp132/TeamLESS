if(objPlayer.phealth < objPlayer.maxHp)
{
objPlayer.phealth += Value;
audio_play_sound(sndHealthUp, 0, 0);
instance_destroy();
}