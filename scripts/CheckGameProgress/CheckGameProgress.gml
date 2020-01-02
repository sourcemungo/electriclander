var rid,pid;
rid = global.room_id[room];

switch(argument0)
{
    case "6_12_18":
    if(rid == 5 || rid==11 || rid==17)
    {
        pid = floor(rid/6)
        global.game_progress[pid,0] = score;
        global.game_progress[pid,1] = date_current_datetime(); 
        GC_PostProgress(pid);   
        SetSettings();
    }
    break;

    case "MM":
        //Have we just completed the last room??

        if(rid==17)
        {
            if(global.game_progress[global.challenge_id + 3,0] == 0)
                {
                    pid = global.challenge_id + 3;
                    global.game_progress[pid,0] = score;
                    global.game_progress[pid,1] = date_current_datetime();
                    GC_PostProgress(pid);
                    SetSettings();
                }    
        }
    break;
}