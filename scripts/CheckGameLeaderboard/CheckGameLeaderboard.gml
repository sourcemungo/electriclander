var lid,do_post;
do_post = false;
switch(argument0)
{
    case "Last6":
        lid = global.room_id[room]-12;
        break;
        
    case "MM":
        lid = 6 + global.challenge_id;  
        break;
    
    case "Universal":
        
    break;
}

if(argument1 > game_leaderboard[lid,0])
{        
    global.game_leaderboard[lid,0] = argument1;
    global.game_leaderboard[lid,1] = date_current_datetime(); 
    GC_PostLeaderboard(lid);   
    SetSettings();
}