if(global.game_on==1 && global.paused == 0)
{
    if(keyboard_check_pressed(ord("R")))
    {
        StopGameSounds();
        InitialiseReset();
    }

    if(keyboard_check_pressed(ord("S")))
    {
        ToggleSound();
    }

    if(keyboard_check_pressed(ord("M")))
    {
        ToggleMusic();
    }
        
}