if(health <= 0  || global.time_remaining <= 0)
{
    global.g_is_alive = 0;
    health=0;
    global.time_remaining = 0;
} 

if(global.g_is_alive == 0)
{
    if(global.g_is_dying == 0)
    {
        global.g_is_dying=1;
        
        with(obj_Lander)
        {
            sprite_index = spr_Explode;
            image_speed = 0.5;
            ThrusterOff();
            part_particles_create(global.part_sys,phy_position_x,phy_position_y,global.pfxLander,20)
        }
        
        sound_bite(snd_Explosion,0.5);
        
        
     
        // wait a while before moving on
        // 
        alarm[3] = 100;
    }

}