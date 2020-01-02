ini_open("Settings.ini");
global.sound = ini_read_real("Option","Sound",1);
global.music = ini_read_real("Option","Music",1);
global.gamecenter_enabled = ini_read_real("Option","GameCenter",1);
global.facebook_enabled = ini_read_real("Option","Facebook",1);

for(i=0; i<global.room_count; i+=1)
{
    global.max_room_scores[i] = ini_read_real("Progress","room_score_"+string(i),0);
    global.max_room_stars[i] = ini_read_real("Progress","room_stars_"+string(i),0);
    global.unlocked[i] = ini_read_real("Progress","unlocked_"+string(i),0);
    
    if(_UNLOCK_ALL==1)global.unlocked[i] = 1;
    
}
global.unlocked[0] = 1;


global.all_time_stars = ini_read_real("Progress","all_time_stars",0);
global.max_game_score = ini_read_real("Achievement","game_hi_score",0);
global.games_started = ini_read_real("Shop","games_played",0);

global.game_hint_index = ini_read_real("Progress","game_hint_index",0);

var i;
for(i=0;i<global.progress_items; i+= 1)
{
    global.game_progress[i,0] = ini_read_real("Progress","GameProgressScore_"+string(i),0);
    global.game_progress[i,1] = ini_read_real("Progress","GameProgressDate_"+string(i),date_current_datetime());
}

ini_close();