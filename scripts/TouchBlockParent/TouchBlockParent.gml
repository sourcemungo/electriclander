if(global.lander_can_damage==1)
    {
        ProcessDamage(true);
        health -= global.g_block_damage;
    }
    

with(other)
{
    if(global.g_is_alive == 1)
    {
    image_index=1;
    if(!sound_isplaying(snd_Electric) && global.lander_can_damage == 1)
        {
            sound_volume(snd_Electric,0);
            sound_loop(snd_Electric);
            sound_fade(snd_Electric,global.sound*0.7,100);
        }
    }
    else    
    {
        sound_stop(snd_Electric);   
    }      
    alarm[9] = 5;
}