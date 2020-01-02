global.g_is_alive = 1;
global.g_is_dying = 0;
global.g_is_dead  = 0;


var i;
for(i=0;i<global.room_count; i+=1)
{
    room_scores[i] = 0;
    room_stars[i]=0;
}

lives = 3;
score = 0;
health = global.g_starting_health;
global.g_fuel= global.g_starting_fuel;
global.game_on = 1;
room_goto(rm_Room0);


    