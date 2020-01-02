surface_set_target(countdown_surface);

draw_set_color(c_silver);
draw_set_font(font0);

draw_sprite(spr_CountDown,0,1,1);

draw_rectangle(3,3,497,397,1);

draw_text( 380, 20, string_hash_to_newline(string(fuel_bonus)));
draw_text( 380, 58, string_hash_to_newline(string(health_bonus)));
draw_text( 380, 96, string_hash_to_newline(string(twinkle_bonus)));
draw_text( 380, 134, string_hash_to_newline(string(time_bonus)));
draw_text( 380,172, string_hash_to_newline(string(global.room_score)));   

draw_sprite( spr_StarHolder,0, 130,270);
draw_sprite( spr_StarHolder,0, 250,270);
draw_sprite( spr_StarHolder,0, 370,270); 

if(count_cycle == 6)
    {
      
        if(global.is_room_high_score==1)
            {
                draw_set_font(font3);
                draw_text(90,310,string_hash_to_newline("HIGH SCORE!!!"));
            }
            
        draw_set_color(c_white);
        draw_set_font(font5);
        draw_text(160,355,string_hash_to_newline("Tap to continue"));
    }
    
surface_reset_target();
draw_surface( countdown_surface , x , y);