var current_index,i;
wait += 1;

if(wait >= 30)
{
    wait = 30;
 
    for(i = 0; i < 6; i+=1)
        {
        current_index = i+global.choose_screen*6;
        if( keyboard_check_pressed(ord(string(i)))
            && global.unlocked[current_index]
            && global.choose_screen < global.choose_screens ) 
            {
                if(global.gameplay==1 || (global.gameplay==2 && room_scores[current_index]==0))
                {
                    sound_bite(snd_ButClickWhoop,1);
                
                    instance_destroy();
                    FinaliseChoose();
                    SetGamePlay();
                    room_goto(global.indexed_room[current_index]);
                }
                else
                {   
                    sound_bite(snd_Electric,1);
                }
            }
        }

}


if(keyboard_check_pressed(ord("6")) && _TESTING==1)
{
    for(i=0;i<global.room_count; i+= 1)
    {
        global.max_room_scores[i] = 1;
        global.max_room_stars[i] = 1;
    }
    SetSettings();
}
