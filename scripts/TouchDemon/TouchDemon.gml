
if(global.lander_can_damage)
{
   
    if(demon_can_damage )
    {   
        global.room_time_allowed -= 5;;
        ProcessDamage(true);
        sound_bite(snd_EvilLaugh,0.8);
        demon_can_damage = false;
        alarm[2] = 60;
        
    }
}