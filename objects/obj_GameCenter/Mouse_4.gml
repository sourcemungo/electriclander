sound_bite(snd_SmallButClick,1);
global.gamecenter_enabled = global.gamecenter_enabled xor 1;

//Log out and in to gamecentre depending on preferences - this is
//so as not to hog processor if it's switched off
if(gamecenter_enabled) achievement_login();
else achievement_logout();

SetSettings();

