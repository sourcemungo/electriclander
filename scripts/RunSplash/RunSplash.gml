


if(step < 2*pi)
{

    step += step_incr;
    factor_step = step / (2*pi);
    draw_sprite_ext(spr_Splash
                        ,0
                        ,320
                        ,480
                        ,factor_step * cos(step)
                        ,factor_step 
                        ,0
                        ,c_white
                        ,1
                    );

}
else
{
    draw_sprite_ext(spr_Splash
                        ,0
                        ,320
                        ,480
                        ,1
                        ,1
                        ,0
                        ,c_white
                        ,1
                    );
    if(waiting == 0)
        {
            alarm[0] = 100;
            waiting = 1;
            
        }

}


