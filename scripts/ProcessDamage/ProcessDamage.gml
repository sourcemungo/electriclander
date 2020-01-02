if(global.lander_can_damage==1)
{
    alarm[0] = 30;
    processing_damage = 1;
    
    if(!argument0)
    {
        if(!sound_isplaying(snd_Ohhh))
        {
            sound_bite(snd_Ohhh,1);
        }
    }
}