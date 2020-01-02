
with(s1s)
    global.thrust = GetSliderPosition(global.thrust_min,global.thrust_max);

with(s2s)
    global.rotation_sensitivity = GetSliderPosition(global.rotation_sensitivity_min,global.rotation_sensitivity_max);
    
with(s3s)
    global.lander_damping = GetSliderPosition(global.lander_damping_min,global.lander_damping_max);
    
    
with(s4s)
    global.red_freedom = GetSliderPosition(global.red_freedom_min,global.red_freedom_max);

      
SetUserSettings();