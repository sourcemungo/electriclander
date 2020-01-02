
if(keyboard_check_pressed(ord("6"))) selection = 1;
if(keyboard_check_pressed(ord("7"))) selection = 2;
if(keyboard_check_pressed(ord("8"))) selection = 3;
if(keyboard_check_pressed(ord("9"))) selection = 4;
if(selection != 0)
    {
       __view_set( e__VW.Visible, 4, false );
       global.sound = room_sound;
       SetSoundVolume();
       global.paused = 0;
       global.paused_selection = selection;
    
        switch(selection)
        {

         
            case 1: // Restart the app
            FinaliseButtonController();
            with(obj_CountDown) FinaliseCountDown();
            instance_destroy();
            room_goto(rm_Rules);
            break;
            
            case 2: // Restart Room
            FinaliseButtonController();
            with(obj_CountDown) FinaliseCountDown();
            instance_destroy();
            ResetRoom();
            room_restart();
            break;
            
            case 3: // Go to choose a room
            FinaliseButtonController();
            with(obj_CountDown) FinaliseCountDown();
            instance_destroy();
            room_goto(rm_Choose); 
            break;
                        
            case 4: // Continue this room
            __view_set( e__VW.Visible, 5, 0 );
            global.room_last_seen_time = get_timer();
            instance_destroy();
            physics_world_update_speed(10);
            
            //This condition will be hit at the end of a room after the countdown
            //If it is -restart the room;
            if(global.gameplay==1 && instance_number(obj_ButtonController) == 0)
            {
            FinaliseButtonController();
            with(obj_CountDown) FinaliseCountDown();
            instance_destroy();
            ResetRoom();
            room_restart();
            }
            break;    
        }
               
    }
    

