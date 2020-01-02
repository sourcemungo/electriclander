if(global.gamecenter_enabled)
{
    if achievement_available() 
    {
        achievement_post_score(global.leaderboard_gc_name[argument0], game_leaderboard[argument0,0]); 
    }
}