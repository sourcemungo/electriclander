    
    global.room_time_allowed = global.allowed_time[global.room_id[room]];
    global.room_running_time = 0;
    global.room_start_time = get_timer();
    global.room_last_seen_time = global.room_start_time;
    global.time_remaining = global.room_time_allowed - floor(global.room_running_time / 10000)/100;