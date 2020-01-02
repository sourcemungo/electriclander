

if(sliding==1)
{
    if(mouse_x <= max_x && mouse_x >= min_x)
        {
            x = mouse_x;
        }
    
    if(mouse_check_button(mb_left))
    {
        sliding = 1;
    }
    else
    {
        with(instance_nearest(x,y,obj_SettingsController)) FinaliseUserSettings();
        sliding = 0;
        image_index = 0;
        image_speed = 0;
        image_alpha=1;
    }
    
    if(abs(mouse_x - start_x) > 10)
    {
        if(!sound_isplaying(snd_SmallButClick))
        {
            sound_bite(snd_SmallButClick,1);
        }
    }
    start_x = mouse_x;
}

