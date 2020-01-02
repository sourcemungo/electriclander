// Reset hi-score indicators
global.is_room_high_score = 0;
global.is_game_high_score = (score>=global.max_game_score);

countdown_surface = surface_create(500,400);
vkContinue = virtual_key_add(30,80,200,200,ord("C"));

//Bonus factors
fuel_bonus_factor = 2;
health_bonus_factor = 2;
twinkle_bonus_factor = 4;
twinkle_countdown = 0;
time_bonus_factor = 2;
count_distance = 6;
count_position = 0;

fuel_bonus = 0;
health_bonus = 0;
twinkle_bonus = 0;
time_bonus = 0;

twinkle_count = instance_number(obj_Twinkle);
if(twinkle_count == 0)
    {
        twinkle_countdown = 100;       
    }
    
//Make visible and start counting down     
__view_set( e__VW.Visible, 5, true );
count_cycle = 1;

//Make sure looping sounds turned off
sound_stop(snd_LanderRoar);
sound_stop(snd_Electric_High);
sound_stop(snd_Electric);
