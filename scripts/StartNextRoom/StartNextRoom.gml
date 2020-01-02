//Check which is the next un-played room if you're in a medley
var next_room;
next_room = rm_GameOver;
if(global.gameplay==2)
    {      
        var i;
        for(i=0;i<global.room_count;i+=1)
        {
            if(global.room_scores[i] == 0)
            {
                next_room = global.indexed_room[i];
                break;
            }
        }       
    }

//If no unplayed rooms or single mission, goto gameover screen
ResetRoom();

if(global.gameplay == 1)
{
   // InitialiseReset();
   room_goto(rm_GameOver);
}
else
    room_goto(next_room);