
count_position -= 1;

if(count_position <= 0) 
{
//
// FUEL BONUS
//
if(count_cycle == 1 && count_position <= 0)
    {
        fuel_bonus += floor(fuel_bonus_factor*global.g_fuel);
        global.room_score += floor(fuel_bonus);
        //global.g_fuel =0;
        count_cycle = 2;
        count_position = count_distance;
    }
    
//
// HEALTH BONUS
//
if(count_cycle == 2 && count_position <= 0)
{
        health_bonus += floor(health_bonus_factor*health);
        global.room_score += floor(health_bonus);
        //health = 0;
        count_cycle = 3;
        count_position = count_distance;
}

//
// TWINKLE BONUS
//
if(count_cycle == 3 && count_position <= 0)
{
        twinkle_bonus += floor(twinkle_bonus_factor*twinkle_countdown);
        global.room_score += floor(twinkle_bonus);
        //twinkle_countdown = 0;
        count_cycle = 4;
        count_position = count_distance;
}

//
// TIME BONUS
//
if(count_cycle == 4 && count_position <= 0)
{
        time_bonus += floor(time_bonus_factor*global.time_remaining);
        global.room_score += floor(time_bonus);
        //global.time_remaining =0;
        count_cycle = 5;
        count_position = count_distance;
}

// LEVEL BONUS
//
if(count_cycle == 5 && count_position <= 0)
{
    score += floor(global.room_score);   
  
    if(global.room_score >= global.star_score_1[global.room_id[room]]) 
    {
        global.room_stars[global.room_id[room]] = 1;
        instance_create(130,1270,obj_Star);
    }
    
    if(global.room_score >= global.star_score_2[global.room_id[room]])
    {
        global.room_stars[global.room_id[room]] = 2;
        instance_create(250,1270,obj_Star);
    }
    
    if(global.room_score >= global.star_score_3[global.room_id[room]]) 
    {
        global.room_stars[global.room_id[room]] = 3;
        instance_create(370,1270,obj_Star);
    }
   
    global.room_scores[global.room_id[room]] = global.room_score;
    global.unlocked[global.room_id[room] + 1] = 1;
    CheckHighScores();
    
    alarm[0] = 60; 
    count_cycle = 6;
}

}
// We've finished counting down. Set the alarm to 
// display for a few seconds. The countdown object will move
// us to the next room

if(count_cycle==6 && keyboard_check_pressed(ord("C")))
    {
        alarm[0] = 1;
    }