if(objPlayer.phealth < objPlayer.maxHp)
{
objPlayer.phealth = scrApproach(objPlayer.phealth, objPlayer.maxHp, Value);
audio_play_sound(sndHealthUp, 0, 0);
instance_destroy();
}