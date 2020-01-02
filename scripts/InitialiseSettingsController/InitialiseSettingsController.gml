// Load up data from settings
GetUserSettings();

// Kill any sliders already present
with(obj_SliderRail) instance_destroy(); 
with(obj_Slider) instance_destroy();

// Set position top
var top;
top = 280;

// Thrust
s1 = instance_create(320,top,obj_SliderRail);
s1s = instance_create(320,top,obj_Slider);
with(s1s)SetSliderPosition(global.thrust,global.thrust_min,global.thrust_max);
top+=130;


// Rotation Sensitivity
s2 = instance_create(320,top,obj_SliderRail);
s2s = instance_create(320,top,obj_Slider);
with(s2s)SetSliderPosition(global.rotation_sensitivity,global.rotation_sensitivity_min,global.rotation_sensitivity_max);
top+=130;

s3 = instance_create(320,top,obj_SliderRail);
s3s = instance_create(320,top,obj_Slider);
with(s3s)SetSliderPosition(global.lander_damping,global.lander_damping_min, global.lander_damping_max);
top+=130;

// Red Freedom
s4 = instance_create(320,top,obj_SliderRail);
s4s = instance_create(320,top,obj_Slider);
with(s4s)SetSliderPosition(global.red_freedom,global.red_freedom_min,global.red_freedom_max);


