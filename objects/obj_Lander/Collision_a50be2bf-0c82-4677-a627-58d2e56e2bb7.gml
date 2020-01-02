if(global.g_is_alive)
{
    with(other)
    {
    hit += 1;
    
    if(global.challenge_id != 1 || hit > 1)
        {
            instance_destroy();
            
            global.twinkle_twenty += 1;
            if(global.twinkle_twenty >= 20)
            {
                global.all_time_stars += 1;
                part_particles_create(global.part_sys,x,y,global.pfxStars,20)
                global.twinkle_twenty = 0;
                instance_create(x,y,obj_TwentyTwinkes);
            }
            
            if(global.umbrella_in_room)
            {
                with(obj_Umbrella) UmbrellaCheckForTwinkles();
            }
        }
    }
    sound_bite(snd_Ting,1);
    global.room_score += global.twinkle_score;
}

