lives -= 1;

if(lives > 0)
    {
        health = g_starting_health;
        global.g_fuel = global.g_starting_fuel;
        g_is_alive=1;
        g_is_dying=0;
        
        InitialiseTimers();
        room_restart();
    }
        
else
    {   
        CheckHighScores();
        //Only move off screen if Mission Medley
        if(global.gameplay==2)
        {
            room_goto(rm_GameOver);
        }
        else
        {
            InitialiseReset();
        }
    }