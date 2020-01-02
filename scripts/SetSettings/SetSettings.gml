var i;

ini_open("Settings.ini");
ini_write_real("Option","Sound",global.sound);
ini_write_real("Option","Music",global.music);
ini_write_real("Option","GameCenter",global.gamecenter_enabled);
ini_write_real("Option","Facebook",global.facebook_enabled);

for(i=0; i<global.room_count; i+=1)
{
    ini_write_real("Progress","room_score_"+string(i),max_room_scores[i]);
    ini_write_real("Progress","room_stars_"+string(i),max_room_stars[i]);
    ini_write_real("Progress","unlocked_"+string(i),global.unlocked[i]);
}
ini_write_real("Progress","all_time_stars",global.all_time_stars);

ini_write_real("Achievement","game_hi_score",max_game_score);
ini_write_real("Shop","games_played",global.games_started);
ini_write_real("Progress","game_hint_index",global.game_hint_index);

for(i=0;i<global.progress_items; i+= 1)
{
    ini_write_real("Progress","GameProgressScore_"+string(i),global.game_progress[i,0]);
    ini_write_real("Progress","GameProgressDate_"+string(i),global.game_progress[i,1]);
}

ini_close();