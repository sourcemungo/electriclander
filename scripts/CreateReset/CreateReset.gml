selection = 0;
surface = surface_create(500,300);

vkRewind = virtual_key_add(normX(5),normY(45),normX(20),normY(10),ord("6"));
vkRestart = virtual_key_add(normX(27.5),normY(45),normX(20),normY(10),ord("7"));
vhChoose = virtual_key_add(normX(52.5),normY(45),normX(20),normY(10),ord("8"));
vkResume = virtual_key_add(normX(75),normY(45),normX(20),normY(10),ord("9"));

room_sound = global.sound;
global.sound = 0;
SetSoundVolume();
with(obj_Lander) ThrusterOff();