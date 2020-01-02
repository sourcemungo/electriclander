if(global.lander_can_damage == 1)
{
    if(health > 0 )
    { 
        sound_bite(snd_Scream,0.3);
    }
    health = 0;
}

// detroy the seeker
// if there are no seekers left, destroy the 
// seeker door nearest you
else
{
    sound_bite(snd_SeekerSquash,1);

    part_particles_create(global.part_sys,phy_position_x,phy_position_y,global.pfxSeeker,8);
    
    with(other) instance_destroy();
    if(instance_number(obj_Seeker)==0)
        {
            with(obj_SeekerDoor) OpenDoorHor();
        }
}