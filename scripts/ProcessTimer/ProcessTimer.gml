// Manages the timer in each room
if(global.user_started && global.game_on == 1 && !global.paused && global.g_is_alive)
    {
        var time_now;
        time_now = get_timer();
        global.room_running_time += time_now - global.room_last_seen_time;  
        global.time_remaining = global.room_time_allowed - floor(global.room_running_time / 10000)/100;
        global.room_last_seen_time = time_now;
    }