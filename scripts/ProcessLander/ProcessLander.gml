
if(global.game_on == 1 && global.paused == 0 && lander_started == 1)
{
    if(global.g_is_alive == 1)
    {
        ProcessKeyboard();
    }

    ProcessStatus();
    ProcessTimer();
    
}