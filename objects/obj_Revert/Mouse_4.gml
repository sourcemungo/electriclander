//
sound_bite(snd_SmallButClick,1);

global.rotation_sensitivity = global.rotation_sensitivity_init;
global.thrust = global.thrust_init;
global.red_freedom = global.red_freedom_init;
global.lander_damping = global.lander_damping_init;

SetUserSettings();

with(instance_nearest(x,y,obj_SettingsController)) InitialiseSettingsController();



