ini_open("Settings.ini");
global.thrust = ini_read_real("UserSetting","Thrust",global.thrust);
if(global.thrust <global.thrust_min || global.thrust>global.thrust_max)
    global.thrust = (global.thrust_min+global.thrust_max)/2;

global.rotation_sensitivity = ini_read_real("UserSetting","RotationSensitivity",global.rotation_sensitivity);
if(global.rotation_sensitivity <global.rotation_sensitivity_min || global.rotation_sensitivity>global.rotation_sensitivity_max)
    global.rotation_sensitivity = (global.rotation_sensitivity_min+global.rotation_sensitivity_max)/2;
    
global.red_freedom = ini_read_real("UserSetting","RedFreedom",global.red_freedom);
if(global.red_freedom <global.red_freedom_min || global.red_freedom>global.red_freedom_max)
    global.red_freedom = (global.red_freedom_max+global.red_freedom_min)/2;

global.lander_damping = ini_read_real("UserSetting","LanderDamping",global.lander_damping);
if(global.lander_damping <global.lander_damping_min || global.lander_damping>global.lander_damping_max)
    global.lander_damping = (global.lander_damping_min+global.lander_damping_max)/2;

    
ini_close();