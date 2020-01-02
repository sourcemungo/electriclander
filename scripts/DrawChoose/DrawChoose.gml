
var i,xpos,ypos,current_index,sprite_to_draw, name_to_draw, future_update_screen;
future_update_screen = (global.choose_screen==global.choose_screens);

draw_set_font(font4);

for(i=0; i< 6; i+= 1)
{


// Create current index, preventing issues if we're on the Future Updates screen
    if(future_update_screen)
        current_index=0;
    else
        current_index = i+global.choose_screen*6;
    
    
    if(current_index < global.room_count || future_update_screen )
    {

        xpos =  300*(i mod 2);
        ypos = 265*(floor(i/2));
    

        // Select the sprite and lock if required
        if(future_update_screen) sprite_to_draw = spr_FutureUpdate;
        else sprite_to_draw = global.room_sprite[current_index];
        
        // Fade screenshot if unavailable
        if( global.gameplay==2 
            && !future_update_screen
            && room_scores[current_index]>0) draw_set_alpha(0.4);
        
        // Draw the screenshot
        draw_sprite(sprite_to_draw,0,20 + xpos ,20+ypos);
        draw_set_alpha(1);
        
        // Draw the lock if not yet unlocked
        if(!global.unlocked[current_index]) draw_sprite(spr_Lock,0,170+ xpos,155+ypos);
        
        if(!future_update_screen)
        {
            switch(global.gameplay)
            {
                case 1: // Single Mission
                    if(global.max_room_scores[current_index] > 0)
                    {
                        draw_set_alpha(0.6);
                        draw_set_color(c_black);
                        draw_rectangle(xpos+40,ypos+80,xpos+300,ypos+180,false);
    
                        //draw_set_color(c_blue);
                        //draw_rectangle(xpos+42,ypos+82,xpos+298,ypos+178,true);            
                        draw_set_color(c_silver);
                        //draw_rectangle(xpos+40,ypos+80,xpos+300,ypos+180,true);
    
                        draw_set_alpha(1);
                        draw_text(80+xpos,90+ypos,string_hash_to_newline("Hi Score: " + string(global.max_room_scores[current_index])));
                        if(global.max_room_stars[current_index] >= 1) draw_sprite_stretched(spr_Star,0,xpos + 90, ypos+130,40,40);   
                        if(global.max_room_stars[current_index] >= 2) draw_sprite_stretched(spr_Star,0,xpos + 150, ypos+130,40,40); 
                        if(global.max_room_stars[current_index] >= 3) draw_sprite_stretched(spr_Star,0,xpos + 210, ypos+130,40,40);
                    }
                break;        
            
                case 2: // Mission Medley
                    if(room_scores[current_index] > 0)
                    {
                
                        draw_set_alpha(0.6);
                        draw_set_color(c_black);
                        draw_rectangle(xpos+40,ypos+80,xpos+300,ypos+180,false);
    
                        //draw_set_color(c_blue);
                        //draw_rectangle(xpos+42,ypos+82,xpos+298,ypos+178,true);            
                        draw_set_color(c_silver);
                        //draw_rectangle(xpos+40,ypos+80,xpos+300,ypos+180,true);
    
                        draw_set_alpha(1);
                        draw_text(80+xpos,90+ypos,string_hash_to_newline("Score: " + string(global.room_scores[current_index])));
                        if(global.room_stars[current_index] >= 1) draw_sprite_stretched(spr_Star,0,xpos + 90, ypos+130,40,40);   
                        if(global.room_stars[current_index] >= 2) draw_sprite_stretched(spr_Star,0,xpos + 150, ypos+130,40,40); 
                        if(global.room_stars[current_index] >= 3) draw_sprite_stretched(spr_Star,0,xpos + 210, ypos+130,40,40);
                    }
                break;
            }
        }
            
        draw_set_alpha(0.4);
        draw_set_color(make_colour_rgb(41,87,173));
        draw_rectangle(xpos+28,ypos+28,xpos+312,ypos+72,false);
        draw_set_alpha(1);
        draw_set_color(c_white);
 
        // Draw the name of the room       
        if(future_update_screen) name_to_draw = "Future Updates"
        else name_to_draw = global.room_names[current_index];
        
        draw_text(xpos+44, ypos+26,string_hash_to_newline(name_to_draw));
    }
    
}
draw_set_color(c_silver);
if(global.gameplay == 1) draw_text(190,800,string_hash_to_newline("SINGLE MISSION"));
if(global.gameplay == 2) draw_text(190,800,string_hash_to_newline("MISSION MEDLEY"));

draw_sprite(spr_TitlePlate,0,320,906);