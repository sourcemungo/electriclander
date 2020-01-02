    SetupRoomViews();       

    // The user hasn't pushed any buttons yet
    global.user_started = 0; 
    global.room_score = 0;
    global.room_stars[global.room_id[room]] = 0;
    global.twinkles_in_room = instance_number(obj_Twinkle);   
    global.twinkle_twenty = 0; 
    global.is_room_high_score = 0;
    global.lander_can_damage = 1;
    global.tilt = 0;
    global.invert_controls = 0;
    global.lander_count = instance_number(obj_Lander);
    global.room_last_played = room;
    
    global.game_hint_index = irandom_range(0,array_length_1d(global.game_hints)-1);
    
    
    InitialiseTimers();
    SetSoundVolume();
    SetMusicVolume();
    
    instance_create(1,1,obj_FadeIn);

    // Set the user-configurable settings for this rrom
    // they may be set again by the challengeController
    global.lander_damping_room = global.lander_damping;
    global.red_freedom_room = global.red_freedom;
    global.rotation_sensitivity_room = global.rotation_sensitivity;
    global.thrust_room = global.thrust;        
    
    InitialiseChallengeController();
    HideAds();
    
    
        
       
        