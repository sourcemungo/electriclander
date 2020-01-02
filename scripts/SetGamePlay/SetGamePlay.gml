if(global.gameplay==1)
{
    global.g_is_alive = 1;
    global.g_is_dying = 0;
    global.g_is_dead  = 0;

    lives = 1;
    score = 0;
    health = global.g_starting_health;
    global.g_fuel = global.g_starting_fuel;
    global.game_on = 1;
    global.room_score = 0;
}