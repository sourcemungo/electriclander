if(sprite_index == spr_LanderStart)
{
    sprite_index = spr_Lander;
    image_speed = 0;
    image_index = 0;
    lander_started = 1;
}

if(sprite_index == spr_Explode)
{
    sprite_index = spr_Halo;        
    image_speed = 0;
    image_index = 0;
}