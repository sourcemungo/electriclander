wait = 0;
global.choose_screens = ceil(global.room_count/6);

vk0 = virtual_key_add(normX(0),normY(0),normX(50),normY(25),ord("0"));
vk1 = virtual_key_add(normX(50),normY(0),normX(50),normY(25),ord("1"));
vk2 = virtual_key_add(0,normY(27),normX(50),normY(25),ord("2"));
vk3 = virtual_key_add(normX(50),normY(27),normX(50),normY(25),ord("3"));
vk4 = virtual_key_add(0,normY(60),normX(50),normY(25),ord("4"));
vk5 = virtual_key_add(normX(50),normY(60),normX(50),normY(25),ord("5"));

SetNavButtons();
InitialiseAds();