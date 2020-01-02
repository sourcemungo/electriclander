var i, game_complete;

// check if this is the first time this room has been completed
if(global.room_score > 0 && global.max_room_scores[global.room_id[room]]==0)
{
    CheckGameProgress("6_12_18");
}


// have we achieved a room high score??
if(global.room_score > global.max_room_scores[global.room_id[room]])
    {
        global.max_room_scores[global.room_id[room]] = global.room_score;
        global.max_room_stars[global.room_id[room]] = global.room_stars[global.room_id[room]] ;
        global.is_room_high_score = 1;
        
        if(global.room_id[room] >= 12)
            CheckGameLeaderboard("Last6",global.room_score);
     } 
     

// Mission Medley
if(global.gameplay == 2)
    {
        
        //Is this a high score for a game?
        if(score > global.max_game_score)
            {
                global.max_game_score = score;
                global.is_game_high_score = 1;
            } 
            
        //Do we need to post to GC
        CheckGameProgress("MM");
        
        
        //Is the game complete (all scores > 0)?
        game_complete = true;
        for(i=0;i<global.room_count;i+=1)
        {
            if(room_scores[i] ==  0)
            {
                game_complete = false;
                i=global.room_count;
            }   
        }   
        
        // Do we need to post to GC?
        if(game_complete)
            CheckGameLeaderboard("MM", score);     
        
    }

SetSettings();