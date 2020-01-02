draw_set_color(c_white);
draw_set_font(font0);

switch(global.gameplay)
{
    case 1: // Single Mission
    
            if(global.is_room_high_score == 1)
            {
                
                draw_text(100,430,string_hash_to_newline("Mission high score of " + string(max_room_scores[global.current_room])));
                
                if(stars_drawn==0)
                {
                    if(global.room_stars[global.current_room] >=1 ) instance_create(200,540,obj_Star);       
                    if(global.room_stars[global.current_room] >=2 ) instance_create(300,540,obj_Star);  
                    if(global.room_stars[global.current_room] >=3 ) instance_create(400,540,obj_Star);   
                    stars_drawn = 1;    
                }
                
                draw_text(100,350,string_hash_to_newline(text[room_stars[global.current_room],text_index]));
            }
            else
            {
                draw_text(100,200,string_hash_to_newline(hard_luck[text_index]));
                draw_text(100,300,string_hash_to_newline("Your score: " + string(room_scores[global.current_room])));      
                draw_text(100,400,string_hash_to_newline("High score: " + string(max_room_scores[global.current_room])));
                
                if(global.room_stars[global.current_room] >=1 ) draw_sprite_stretched(spr_Star,0,400,300,40,40);
                if(global.room_stars[global.current_room] >=2 ) draw_sprite_stretched(spr_Star,0,450,300,40,40);
                if(global.room_stars[global.current_room] >=3 ) draw_sprite_stretched(spr_Star,0,500,300,40,40); 
                
                if(global.max_room_stars[global.current_room] >=1 ) draw_sprite_stretched(spr_Star,0,400,400,40,40);
                if(global.max_room_stars[global.current_room] >=2 ) draw_sprite_stretched(spr_Star,0,450,400,40,40);
                if(global.max_room_stars[global.current_room] >=3 ) draw_sprite_stretched(spr_Star,0,500,400,40,40);       
            }                
            
        break;
                                   
    case 2: // Mission Medley
        if(global.is_game_high_score == 1)
            {
                draw_text(100,390,string_hash_to_newline("You got a Mission Medley#high-score of " + string(score)));
            }
            else
            {
                draw_text(100,200,string_hash_to_newline("Better luck next time."));
                draw_text(100,300,string_hash_to_newline("You got a score of " + string(score)));
                draw_text(100,390,string_hash_to_newline("The Medley high score is " + string(global.max_game_score)));                
            }                
               
        break;


}