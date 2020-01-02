instance_create(0,0,obj_ChallengeController);
physics_world_gravity(0,10);

switch(global.challenge_id)
{
    case 0: // Standard
        break;
        
    case 1: // Twinkle 2
        break;   
    
    case 2: // Max Config
        global.lander_damping_room = global.lander_damping_max;
        global.red_freedom_room = global.red_freedom_max;
        global.rotation_sensitivity_room = global.rotation_sensitivity_max;
        global.thrust_room = global.thrust_max;  
        break;
    
    case 3: // Min config
        global.lander_damping_room = global.lander_damping_min;
        global.red_freedom_room = global.red_freedom_min;
        global.rotation_sensitivity_room = global.rotation_sensitivity_min;
        global.thrust_room = global.thrust_min;  
        break;
    
    case 5: // Gravity ++
        physics_world_gravity(0,30);
        break;
}  