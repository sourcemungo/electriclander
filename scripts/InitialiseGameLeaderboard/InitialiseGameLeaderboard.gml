var i;
for(i=0;i<global.leaderboard_items; i+= 1)
{
    global.game_leaderboard[i,0] =0;
    global.game_leaderboard[i,1] = date_current_datetime();
}

global.leaderboard_gc_name[0] = "Target_Twenty_High_Score";
global.leaderboard_gc_name[1] = "Tripple_Tipple_High_Score";
global.leaderboard_gc_name[2] = "Terrible_Triffle_High_Score";
global.leaderboard_gc_name[3] = "Hail_the_Lander_High_Score";
global.leaderboard_gc_name[4] = "Portal_Party_High_Score";
global.leaderboard_gc_name[5] = "The_Full_Monty_High_Score";

global.leaderboard_gc_name[6] = "Mission_Medley_Standard_High_Score";
global.leaderboard_gc_name[7] = "Mission_Medley_Twinkle_2_High_Score";
global.leaderboard_gc_name[8] = "Mission_Medley_Max_Config_High_Score";
global.leaderboard_gc_name[9] = "Mission_Medley_Min_Config_High_Score";
global.leaderboard_gc_name[10] = "Mission_Medley_Always_On_High_Score";
global.leaderboard_gc_name[11] = "Mission_Medley_Gravity_Plus_Plus_High_Score";

global.leaderboard_gc_name[12] = "Universal_High_Score";
global.leaderboard_gc_name[13] = "Max_Stars";

// 0 - 5 : Last 6 Missions
// 6 : Highscore completion of MM Standard
// 7 : Highscore completion of MM Twinkle 2
// 8 : Highscore completion of MM Max config
// 9 : Highscore completion of MM Min Config
// 10 : Highscore completion of MM Always On
// 11 : Highscore completion of MM Gravity ++

// 12: Max Game Score universal
// 13: Max number of stars collected