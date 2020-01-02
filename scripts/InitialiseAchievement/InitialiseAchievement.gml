var show_skills;
show_skills = false;
stars_drawn = 0;

switch(global.gameplay)
{
    case 1: // Single Mission
        if(global.is_room_high_score == 1) show_skills = true;
        instance_create(312,650,obj_Replay);
        break;
        
    case 2: // Mission Medley
        if(global.is_game_high_score==1) show_skills = true;
        break;
}

if(show_skills) instance_create(320,200,obj_Skills);

text_index = irandom_range(0,2);

hard_luck[0] = "No high score this time - try again."
hard_luck[1] = "You've done much better before!"
hard_luck[2] = "Not your best ever, eh?"


text[0,0] = "No stars that time, I'm afraid"
text[0,1] = "Somebody out there's done better#, for sure!!"
text[0,2] = "More work needed - best#you try again!"

text[1,0] = "That's a good start";
text[1,1] = "That's better than nothing";
text[1,2] = "Not the best, but a start";

text[2,0] = "Now you're cooking!";
text[2,1] = "On a roll, baby!!";
text[2,2] = "That was sweet!!";

text[3,0] = "That was pretty awesome!!!";
text[3,1] = "Doesn't get much better than that";
text[3,2] = "Right on top now!";