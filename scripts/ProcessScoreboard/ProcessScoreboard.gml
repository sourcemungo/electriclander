var my_red;
my_red = make_color_rgb(206,57,62);
//Ensure no negative attributes
if(health < 0) health = 0;
if(global.g_fuel < 0) global.g_fuel = 0;

//Point and clear surface
surface_set_target(global.score_surface);
draw_set_color(c_black);
draw_rectangle(0,0,384,200,false);

/******* Fuel/Health/Stars ******/


    // Draw the border - 
    draw_set_color(c_silver);
    draw_rectangle(192+2, 2,384-2,200,1);
    
    //Icons
    draw_sprite_stretched(spr_Star,1,192+25,25,40,40);
    draw_sprite_stretched(spr_Fuel,1,192+28,85,40,40);
    draw_sprite_stretched(spr_Heart,0,192+25,145,40,40);
    
    //Star, Fuel and Health
    draw_set_font(font0);
    draw_set_color(c_blue);
    draw_text(192+80,22, string_hash_to_newline(string(floor(global.room_score))));
    draw_set_color(c_silver);
            
    draw_set_alpha(1);
    if(global.g_fuel > 30) draw_set_color(c_white) else draw_set_color(my_red);
    draw_rectangle(272,90,272+80,90+20,true);
    draw_set_alpha(0.6);
    draw_rectangle(273,91,272+79*global.g_fuel/100,91+18,false);

    draw_set_alpha(1);
    if(health > 30 ) draw_set_color(c_white)else draw_set_color(my_red);
    draw_rectangle(272,150,272+80,150+20,true);
    draw_set_alpha(0.6);
    draw_rectangle(273,151,272+79*health/100,151+18,false);
    draw_set_alpha(1);    


/******* Lives *******/
    //Score
    draw_set_color(c_blue);
    draw_set_font(font1);
    //draw_set_font(SpriteFont);
    draw_text( 10 ,1,string_hash_to_newline(string(score)));
    
    var i;
    for (i=1; i<= lives; i+=1)
    {
        draw_sprite_stretched(spr_Lander,1,i*50-65,45,128,128);
    }
    
    
    draw_set_font(font4);
    draw_set_color(c_silver);
    if(global.time_remaining < 10)
        {
            draw_set_color(my_red);
        }
    draw_text(14,150,string_hash_to_newline("Time:" + string(global.time_remaining)));
    
    
    // Draw the border
    draw_set_color(c_silver);
    draw_rectangle(2,2,192-2,200,1);
    draw_rectangle(6,6,384-6,196,1);
    
    surface_reset_target();
    draw_surface(global.score_surface,1,1600);



