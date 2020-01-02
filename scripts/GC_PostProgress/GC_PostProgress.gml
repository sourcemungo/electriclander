if(global.gamecenter_enabled)
{
    if achievement_available() 
    {
        achievement_post(global.progress_gc_name[argument0], game_progress[argument0,0]); 
    }
}